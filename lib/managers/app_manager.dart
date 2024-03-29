import 'dart:io' show InternetAddress, SocketException;

import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../data/class_repo.dart';
import '../data/reddit_client.dart';
import '../data/skill_repo.dart';
import '../models/class.dart';
import '../models/reddit_post.dart';
import '../models/skill.dart';

enum AppStatus { uninitialized, loading, loaded, error }

class AppManager extends ChangeNotifier {
  final RedditClient _redditClient;
  final ClassRepo _classRepo;
  final SkillRepo _skillRepo;

  List<RedditPost>? _redditPosts;
  List<CharacterClass>? _classList;
  List<Skill>? _skillList;

  Locale? _locale;
  CharacterClass? _selectedClass;
  bool _isOnline = true;
  String _errorMessage = '';

  AppStatus _status = AppStatus.uninitialized;

  AppManager()
      : _redditClient = RedditClient(),
        _classRepo = ClassRepo(),
        _skillRepo = SkillRepo() {
    _loadApp();
  }

  AppStatus get status => _status;
  Locale? get locale => _locale;
  String get errorMessage => _errorMessage;
  bool get isOnline => _isOnline;

  Future<void> _loadApp([bool withNewLocale = false]) async {
    try {
      debugPrint('loading');
      _status = AppStatus.loading;
      notifyListeners();

      _locale = await _fetchLocale();
      _redditPosts = _redditPosts ?? [];
      _classList = (_classList == null || withNewLocale)
          ? await _classRepo.fetchClassList(lang: _locale!.languageCode)
          : _classList;
      _skillList = (_skillList == null || withNewLocale)
          ? await _skillRepo.fetchSkills(lang: _locale!.languageCode)
          : _skillList;

      debugPrint('loaded');
      _status = AppStatus.loaded;
      notifyListeners();
    } catch (error) {
      debugPrint('$error');
      _errorMessage = error.toString();
      _status = AppStatus.error;
      notifyListeners();
    }
  }

  // Locale

  Future<Locale> _fetchLocale() async {
    final prefs = await SharedPreferences.getInstance();
    final languageCode = prefs.getString('languageCode');
    final countryCode = prefs.getString('countryCode');
    return (languageCode == null || countryCode == null)
        ? const Locale('en', 'US')
        : Locale(languageCode, countryCode);
  }

  Future<void> changeLocale(Locale newLocale) async {
    if (_locale == newLocale) return;
    await SharedPreferences.getInstance()
      ..setString('languageCode', newLocale.languageCode)
      ..setString('countryCode', newLocale.countryCode!);
    _locale = newLocale;
    _loadApp(true);
    loadRedditPosts();
    notifyListeners();
  }

  // Reddit posts

  Future<List<RedditPost>?> get newRedditPosts async {
    if (_redditPosts == null || _redditPosts!.isEmpty) await loadRedditPosts();
    return _redditPosts;
  }

  Future<void> loadRedditPosts() async {
    debugPrint('load posts');
    try {
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        _isOnline = true;
        _redditPosts =
            await _redditClient.fetchNewPosts(appLang: _locale!.languageCode);
      }
    } on SocketException catch (_) {
      _isOnline = false;
    } catch (error) {
      _errorMessage = error.toString();
      throw Exception('Error $_errorMessage');
    }
    notifyListeners();
  }

  // Classes

  List<String> get classArchetypes {
    return _locale!.languageCode == 'en'
        ? ['Warrior', 'Martial Artist', 'Gunner', 'Mage', 'Assassin']
        : ['Воин', 'Монах', 'Стрелок', 'Маг', 'Ассасин'];
  }

  List<CharacterClass>? get allClasses => _classList;

  List<CharacterClass>? classesByArchetype(String archetype) =>
      _classList?.where((item) => item.archetype == archetype).toList();

  CharacterClass? classById(String classId) =>
      _classList?.singleWhere((item) => item.id == classId);

  CharacterClass? get selectedClass {
    return _selectedClass ?? _classList?.first;
  }

  void selectClass(String id) {
    _selectedClass = classById(id);
    notifyListeners();
  }

  // Skills

  List<Skill>? get allSkills => _skillList;

  List<Skill>? skillsByClassId(String id) =>
      _skillList?.where((item) => item.id.startsWith(id)).toList();

  Skill? skillById(String id) =>
      _skillList?.singleWhere((item) => item.id == id);
}
