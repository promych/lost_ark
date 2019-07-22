import 'package:flutter/material.dart';
import 'package:lost_ark/models/build.dart';

class BuildManager with ChangeNotifier {
  Build _build = Build();

  Build get getCurrentBuild => _build;

  addToBuild(String enchancementId) {
    final skillId = enchancementId.split('_')[0];
    final tierNum = int.parse(enchancementId.split('_')[1]) - 1;
    final index = _build.items.indexWhere((item) => item.skillId == skillId);

    if (index != -1) {
      final currentEnchancementList = _build.items[index].enchancements;
      final newEnchancement =
          enchancementId == _build.items[index].enchancements[tierNum]
              ? ['']
              : [enchancementId];
      final newEnchancementList = currentEnchancementList
        ..replaceRange(tierNum, tierNum + 1, newEnchancement);

      _build.items.replaceRange(
        index,
        index + 1,
        [
          BuildItem(
            skillId: skillId,
            enchancements: newEnchancementList,
          )
        ],
      );
    } else {
      _build.items.add(
        BuildItem(
          skillId: skillId,
          enchancements: List.generate(
              3, (index) => index == tierNum ? enchancementId : ''),
        ),
      );
    }
    notifyListeners();

    print(_build.items.first.enchancements.toString());
  }

  String getSelectedEnchancementId(String skillId, int tierNum) {
    if (_build.items.isEmpty) return '';
    final index = _build.items.indexWhere((item) => item.skillId == skillId);
    if (index == -1) return '';
    return _build.items.elementAt(index).enchancements[tierNum - 1];
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
