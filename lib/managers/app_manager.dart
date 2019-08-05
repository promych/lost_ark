import 'package:flutter/cupertino.dart';
import 'package:lost_ark/data/class_repo.dart';
import 'package:lost_ark/data/reddit_client.dart';
import 'package:lost_ark/data/skill_repo.dart';
import 'package:lost_ark/models/reddit_post.dart';
import 'package:lost_ark/models/skill.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../models/class.dart';

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

  Future<void> _loadApp([bool withNewLocale = false]) async {
    try {
      print('loading');
      _status = AppStatus.Loading;
      notifyListeners();

      // await Future.delayed(Duration(seconds: 1));

      _locale = _locale ?? await _fetchLocale();
      _redditPosts = _redditPosts ??
          await _redditClient.fetchNewPosts(appLang: _locale.languageCode);
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

  changeLocale(Locale newLocale) async {
    if (_locale == newLocale) return;
    await SharedPreferences.getInstance()
      ..setString('languageCode', newLocale.languageCode)
      ..setString('countryCode', newLocale.countryCode);
    _locale = newLocale;
    _loadApp(true);
    notifyListeners();
  }

  // Reddit posts

  List<RedditPost> get newRedditPosts => _redditPosts;

  // Classes

  List<String> get classArchetypes {
    return _locale.languageCode == 'en'
        ? ['Warrior', 'Fighter', 'Hunter', 'Magician']
        : ['Воин', 'Монах', 'Стрелок', 'Маг'];
  }

  List<CharacterClass> get allClasses => _classList;

  List<CharacterClass> classesByArchetype(String archetype) =>
      _classList.where((item) => item.archetype == archetype).toList();

  CharacterClass classByName(String name) =>
      _classList.singleWhere((item) => item.name == name);

  CharacterClass classById(String classId) =>
      _classList.singleWhere((item) => item.id == classId);

  CharacterClass get selectedClass {
    return _selectedClass ?? _classList.first;
  }

  selectClass(String name) {
    _selectedClass = classByName(name);
    notifyListeners();
  }

  // Skills

  List<Skill> get allSkills => _skillList;

  List<Skill> skillsByClassName(String name) =>
      _skillList.where((item) => item.className == name).toList();

  Skill skillById(String id) => _skillList.singleWhere((item) => item.id == id);
}
