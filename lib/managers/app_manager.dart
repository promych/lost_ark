import 'package:flutter/cupertino.dart';
import 'package:lost_ark/data/class_repo.dart';
import 'package:lost_ark/data/reddit_client.dart';
import 'package:lost_ark/data/skill_repo.dart';
import 'package:lost_ark/models/reddit_post.dart';
import 'package:lost_ark/models/skill.dart';

import '../models/class.dart';

enum AppStatus { Uninitialized, Loading, Loaded, Error }

class AppManager extends ChangeNotifier {
  RedditClient _redditClient;
  ClassRepo _classRepo;
  SkillRepo _skillRepo;

  List<RedditPost> _redditPosts;
  List<CharacterClass> _classList;
  List<Skill> _skillList;

  CharacterClass _selectedClass;
  String _errorMessage = '';

  AppStatus _status = AppStatus.Uninitialized;

  AppManager.instance()
      : _redditClient = RedditClient(),
        _classRepo = ClassRepo(),
        _skillRepo = SkillRepo() {
    loadApp();
  }

  AppStatus get status => _status;
  String get errorMessage => _errorMessage;

  Future<void> loadApp() async {
    try {
      print('loading');
      _status = AppStatus.Loading;
      notifyListeners();
      _redditPosts = _redditPosts ?? await _redditClient.fetchNewPosts();
      _classList = _classList ?? await _classRepo.fetchClassList();
      _skillList = _skillList ?? await _skillRepo.fetchSkills();
      print('loaded');
      _status = AppStatus.Loaded;
      notifyListeners();
    } catch (error) {
      _errorMessage = error.message;
      _status = AppStatus.Error;
      notifyListeners();
    }
  }

  // Reddit posts
  List<RedditPost> get newRedditPosts => _redditPosts;

  // Classes

  List<String> get classArchetypes =>
      ['Warrior', 'Fighter', 'Hunter', 'Magician'];

  List<CharacterClass> get allClasses => _classList;

  List<CharacterClass> classesByArchetype(String archetype) =>
      _classList.where((item) => item.archetype == archetype).toList();

  CharacterClass classByName(String name) =>
      _classList.singleWhere((item) => item.name == name);

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
