import 'package:flutter/cupertino.dart';
import 'package:lost_ark/data/class_repo.dart';
import 'package:lost_ark/data/skill_repo.dart';
import 'package:lost_ark/models/build.dart';
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
  // Build _build = Build();

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

  Skill getSkillByName(String name) =>
      _skillList.singleWhere((item) => item.name == name);

  //Build

  // Build get getCurrentBuild => _build;

  // addToBuild(String skillName, int tier, String enchancementName) {
  //   final tierNum = tier - 1;
  //   final index =
  //       _build.items.indexWhere((item) => item.skillName == skillName);

  //   if (index != -1) {
  //     final currentEnchancementList = _build.items[index].enchancements;
  //     final newEnchancement =
  //         enchancementName == _build.items[index].enchancements[tierNum]
  //             ? ['']
  //             : [enchancementName];
  //     final newEnchancementList = currentEnchancementList
  //       ..replaceRange(tierNum, tierNum + 1, newEnchancement);

  //     _build.items.replaceRange(
  //       index,
  //       index + 1,
  //       [
  //         BuildItem(
  //           skillName: skillName,
  //           enchancements: newEnchancementList,
  //         )
  //       ],
  //     );
  //   } else {
  //     _build.items.add(
  //       BuildItem(
  //         skillName: skillName,
  //         enchancements: List.generate(
  //             3, (index) => index == tierNum ? enchancementName : ''),
  //       ),
  //     );
  //   }
  //   notifyListeners();

  // }

  // String getSelectedEnchancementNameAtTier(String skillName, int tierNum) {
  //   if (_build.items.isEmpty) return '';
  //   if (_build.items.indexWhere((item) => item.skillName == skillName) != -1) {
  //     return _build.items
  //         .singleWhere((item) => item.skillName == skillName)
  //         .enchancements[tierNum];
  //   } else {
  //     return '';
  //   }
  // }

  // String getSelectedEnchancementDescription(String skillName, int tierNum) {
  //   if (_build.items.isEmpty) return '';
  //   final selected = getSelectedEnchancementNameAtTier(skillName, tierNum);
  //   if (selected == '') return '';
  //   return _skillList
  //       .singleWhere((item) => item.name == skillName)
  //       .tripod
  //       .singleWhere((item) => item.tier == tierNum)
  //       .enchancements
  //       .singleWhere((item) => item.name == selected)
  //       .description;
  // }
}
