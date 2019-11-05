import 'package:flutter/material.dart';

import 'package:sembast/sembast.dart';

import '../data/database.dart';
import '../models/build.dart';

// Max points per build
// const kMaxPointsPerBuild = 303;

// Skillbar has 8 items, but we can improve more skills,
// so this can be removed? Now set to 99 for this purpose
const kMaxSkillsPerBuild = 99;

class BuildManager with ChangeNotifier {
  Build _build = Build();
  Build get currentBuild => _build;

  bool readyToSave = false;

  void addToBuild(String enchancementId) {
    final skillId = enchancementId.split('_')[0];
    final tierNum = int.parse(enchancementId.split('_')[1]);

    // mutate build if skill exists or add overwise
    final index = _build.items.indexWhere((item) => item.skillId == skillId);
    if (index != -1) {
      // check valid tier selected
      if (tierNum > 1 && _build.items[index].enchancements[tierNum - 2].isEmpty)
        return;

      // current list
      final currentEnchancementList = _build.items[index].enchancements;

      // selected by user
      final newEnchancement =
          enchancementId == _build.items[index].enchancements[tierNum - 1]
              ? List.generate(4 - tierNum, (_) => '')
              : [enchancementId];

      // mutate copy of current list with selected enchance
      final newEnchancementList = [...currentEnchancementList]..replaceRange(
          tierNum - 1, newEnchancement.length + tierNum - 1, newEnchancement);

      if (newEnchancementList.join() == '') {
        _build.items.removeAt(index);
      } else {
        //check max points not reached
        // if (pointsByClass(enchancementId.substring(0, 3)) -
        //         _pointsByBuildItem(currentEnchancementList) +
        //         _pointsByBuildItem(newEnchancementList) >
        //     kMaxPointsPerBuild) return;

        // finally replace skill in build with new list
        _build.items.replaceRange(
          index,
          index + 1,
          [BuildItem(skillId: skillId, enchancements: newEnchancementList)],
        );
      }
    } else {
      if (tierNum != 1) return;
      // if (pointsByClass(enchancementId.substring(0, 3)) + 4 >
      //     kMaxPointsPerBuild) return;
      if (_build.items
              .where((item) =>
                  item.skillId.substring(0, 3) == skillId.substring(0, 3))
              .length >=
          kMaxSkillsPerBuild) return;

      _build.items.add(
        BuildItem(
          skillId: skillId,
          enchancements: List.generate(
              3, (index) => index == tierNum - 1 ? enchancementId : ''),
        ),
      );
    }

    pointsByClass(enchancementId.substring(0, 3)) > 0
        ? readyToSave = true
        : readyToSave = false;
    notifyListeners();

    // print(_build.items.first?.enchancements.toString());
  }

  Future<void> save(String classId) async {
    if (pointsByClass(classId) == 0) return;
    await _addToBuild(classId);
    readyToSave = false;
    notifyListeners();
  }

  String getSelectedEnchancementId(String skillId, int tierNum) {
    if (_build.items.isEmpty) return '';
    final index = _build.items.indexWhere((item) => item.skillId == skillId);
    if (index == -1) return '';
    return _build.items.elementAt(index).enchancements[tierNum - 1];
  }

  int pointsByClass(String classId) {
    var points = 0;
    final skills = _build.items
        .where((item) => item.skillId.substring(0, 3) == classId)
        .toList();
    if (skills.length == 0) return 0;
    for (var skill in skills) {
      points = points + _pointsByBuildItem(skill.enchancements);
    }
    return points;
  }

  int _pointsByBuildItem(List<String> enchancementList) {
    switch (enchancementList.takeWhile((item) => item != '').toList().length) {
      case 1:
        return 4;
      case 2:
        return 20;
      case 3:
        return 48;
      default:
        return 0;
    }
  }

  // Database

  Future<Database> get _db async => await AppDatabase.instance.database;

  var _store = StoreRef<int, Map<String, dynamic>>.main();

  Future<List<RecordSnapshot<int, Map<String, dynamic>>>> savedBuilds() async {
    final finder = Finder(sortOrders: [SortOrder('classId')]);
    return await _store.find(await _db, finder: finder);
  }

  Future<void> _addToBuild(String classId) async {
    final listItems = _build.items
        .where((item) => item.skillId.substring(0, 3) == classId)
        .map((item) => item.toMap())
        .toList();
    final currentBuild = Map<String, dynamic>.fromIterables(
      ['classId', 'skills'],
      [classId, listItems],
    );
    await _store
        .record(DateTime.now().millisecondsSinceEpoch)
        .put(await _db, currentBuild);
  }

  Future<void> deleteFromBuild(int id) async {
    await _store.record(id).delete(await _db);
    notifyListeners();
  }

  Future<void> unpackBuild(int id) async {
    final buildToUnpack = await _store.record(id).get(await _db);

    _build.items.removeWhere(
        (item) => item.skillId.substring(0, 3) == buildToUnpack['classId']);

    _build.items.addAll(List.from(
        buildToUnpack['skills'].map((item) => BuildItem.fromMap(item))));
  }
}
