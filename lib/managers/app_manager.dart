import 'dart:io' show InternetAddress, SocketException;

import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../data/class_repo.dart';
import '../data/reddit_client.dart';
import '../data/skill_repo.dart';
import '../models/class.dart';
import '../models/reddit_post.dart';
import '../models/skill.dart';

enum AppStatus { Uninitialized, Loading, Loaded, Error }

class AppManager extends ChangeNotifier {
  RedditClient _redditClient;
  ClassRepo _classRepo;
  SkillRepo _skillRepo;

  List<RedditPost> _redditPosts;
  List<CharacterClass> _classList;
  List<Skill> _skillList;

  Locale _locale;
  CharacterClass _selectedClass;
  bool _isOnline = true;
  String _errorMessage = '';

  AppStatus _status = AppStatus.Uninitialized;

  AppManager()
      : _redditClient = RedditClient(),
        _classRepo = ClassRepo(),
        _skillRepo = SkillRepo() {
    _loadApp();
  }

  AppStatus get status => _status;
  Locale get locale => _locale;
  String get errorMessage => _errorMessage;
  bool get isOnline => _isOnline;

  Future<void> _loadApp([bool withNewLocale = false]) async {
    try {
      print('loading');
      _status = AppStatus.Loading;
      notifyListeners();

      _locale = _locale ?? await _fetchLocale();
      _redditPosts = _redditPosts ?? [];
      _classList = (_classList == null || withNewLocale)
          ? await _classRepo.fetchClassList(lang: _locale.languageCode)
          : _classList;
      _skillList = (_skillList == null || withNewLocale)
          ? await _skillRepo.fetchSkills(lang: _locale.languageCode)
          : _skillList;

      print('loaded');
      _status = AppStatus.Loaded;
      notifyListeners();
    } catch (error) {
      _errorMessage = error.message;
      _status = AppStatus.Error;
      notifyListeners();
    }
  }

  // Locale

  Future<Locale> _fetchLocale() async {
    var prefs = await SharedPreferences.getInstance();
    return (prefs.getString('languageCode') == null ||
            prefs.getString('countryCode') == null)
        ? const Locale('en', 'US')
        : Locale(
            prefs.getString('languageCode'), prefs.getString('countryCode'));
  }

  Future<void> changeLocale(Locale newLocale) async {
    if (_locale == newLocale) return;
    await SharedPreferences.getInstance()
      ..setString('languageCode', newLocale.languageCode)
      ..setString('countryCode', newLocale.countryCode);
    _locale = newLocale;
    _loadApp(true);
    loadRedditPosts();
    notifyListeners();
  }

  // Reddit posts

  Future<List<RedditPost>> get newRedditPosts async {
    if (_redditPosts.isEmpty) await loadRedditPosts();
    return _redditPosts;
  }

  Future<void> loadRedditPosts() async {
    try {
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        _isOnline = true;
        print('load posts');
        _redditPosts =
            await _redditClient.fetchNewPosts(appLang: _locale.languageCode);
      }
    } on SocketException catch (_) {
      _isOnline = false;
    } catch (error) {
      _errorMessage = error.message;
      throw Exception('Error $_errorMessage');
    }
    notifyListeners();
  }

  // Classes

  List<String> get classArchetypes {
    return _locale.languageCode == 'en'
        ? ['Warrior', 'Fighter', 'Hunter', 'Magician']
        : ['Воин', 'Монах', 'Стрелок', 'Маг'];
  }

  List<CharacterClass> get allClasses => _classList;

  List<CharacterClass> classesByArchetype(String archetype) =>
      _classList.where((item) => item.archetype == archetype).toList();

  CharacterClass classById(String classId) =>
      _classList.singleWhere((item) => item.id == classId, orElse: () => null);

  CharacterClass get selectedClass {
    return _selectedClass ?? _classList.first;
  }

  void selectClass(String id) {
    _selectedClass = classById(id);
    notifyListeners();
  }

  // Skills

  List<Skill> get allSkills => _skillList;

  List<Skill> skillsByClassName(String name) =>
      _skillList.where((item) => item.className == name).toList();

  Skill skillById(String id) =>
      _skillList.singleWhere((item) => item.id == id, orElse: () => null);
}
