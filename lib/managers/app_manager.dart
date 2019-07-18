import 'package:flutter/cupertino.dart';
import 'package:lost_ark/managers/class_manager.dart';
import 'package:lost_ark/managers/skill_manager.dart';
import 'package:lost_ark/models/class.dart';

class AppManager extends ChangeNotifier {
  ClassManager _classManager;
  SkillManager _skillManager;

  AppManager.instance()
      : _classManager = ClassManager.instance(),
        _skillManager = SkillManager.instance();

  ClassManager get classes => _classManager;
  SkillManager get skills => _skillManager;

  CharacterClass _selectedClass;
  CharacterClass get getSelectedClass =>
      _selectedClass ?? _classManager.getAllClasses.first;
  selectClass(String name) {
    _selectedClass = _classManager.getClassByName(name);
    notifyListeners();
  }
}
