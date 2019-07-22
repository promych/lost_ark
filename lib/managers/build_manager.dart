import 'package:flutter/material.dart';
import 'package:lost_ark/models/build.dart';

class BuildManager with ChangeNotifier {
  Build _build = Build();

  Build get getCurrentBuild => _build;

  addToBuild(String skillName, int tier, String enchancementName) {
    final tierNum = tier - 1;
    final index =
        _build.items.indexWhere((item) => item.skillName == skillName);

    if (index != -1) {
      final currentEnchancementList = _build.items[index].enchancements;
      final newEnchancement =
          enchancementName == _build.items[index].enchancements[tierNum]
              ? ['']
              : [enchancementName];
      final newEnchancementList = currentEnchancementList
        ..replaceRange(tierNum, tierNum + 1, newEnchancement);

      _build.items.replaceRange(
        index,
        index + 1,
        [
          BuildItem(
            skillName: skillName,
            enchancements: newEnchancementList,
          )
        ],
      );
    } else {
      _build.items.add(
        BuildItem(
          skillName: skillName,
          enchancements: List.generate(
              3, (index) => index == tierNum ? enchancementName : ''),
        ),
      );
    }
    notifyListeners();
  }

  String getSelectedEnchancementNameAtTier(String skillName, int tierNum) {
    if (_build.items.isEmpty) return '';
    if (_build.items.indexWhere((item) => item.skillName == skillName) != -1) {
      return _build.items
          .singleWhere((item) => item.skillName == skillName)
          .enchancements[tierNum];
    } else {
      return '';
    }
  }

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
