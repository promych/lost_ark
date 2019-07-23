import 'package:flutter/cupertino.dart';
import 'package:lost_ark/data/class_repo.dart';
import 'package:lost_ark/data/skill_repo.dart';
import 'package:lost_ark/models/skill.dart';

import '../models/class.dart';

enum AppStatus { Uninitialized, Loading, Loaded, Error }

class AppManager extends ChangeNotifier {
  ClassRepo _classRepo;
  SkillRepo _skillRepo;
  List<CharacterClass> _classList;
  List<Skill> _skillList;
  CharacterClass _selectedClass;
  String _errorMessage = '';

  AppStatus _status = AppStatus.Uninitialized;

  AppManager.instance()
      : _classRepo = ClassRepo(),
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

  //Classes

  List<String> get getArchetypes =>
      ['Warrior', 'Fighter', 'Hunter', 'Magician'];

  List<CharacterClass> get getAllClasses => _classList;

  List<CharacterClass> getClassesByArchetype(String archetype) =>
      _classList.where((item) => item.archetype == archetype).toList();

  CharacterClass getClassByName(String name) =>
      _classList.singleWhere((item) => item.name == name);

  CharacterClass get getSelectedClass {
    return _selectedClass ?? _classList.first;
  }

  selectClass(String name) {
    _selectedClass = getClassByName(name);
    notifyListeners();
  }

  //Skills

  List<Skill> get getAllSkills => _skillList;

  List<Skill> getSkillsByClassName(String name) =>
      _skillList.where((item) => item.className == name).toList();

  Skill getSkillById(String id) =>
      _skillList.singleWhere((item) => item.id == id);
}
