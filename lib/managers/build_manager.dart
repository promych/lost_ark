import 'package:flutter/material.dart';
import 'package:lost_ark/models/build.dart';

class BuildManager with ChangeNotifier {
  Build _build = Build();

  Build get getCurrentBuild => _build;

  addToBuild(String enchancementId) {
    final skillId = enchancementId.split('_')[0];
    final tierNum = int.parse(enchancementId.split('_')[1]);
    final index = _build.items.indexWhere((item) => item.skillId == skillId);

    if (index != -1) {
      final currentEnchancementList = _build.items[index].enchancements;
      final newEnchancement =
          enchancementId == _build.items[index].enchancements[tierNum - 1]
              ? List.generate(4 - tierNum, (_) => '')
              : [enchancementId];
      final newEnchancementList = currentEnchancementList
        ..replaceRange(
            tierNum - 1, newEnchancement.length + tierNum - 1, newEnchancement);

      print(newEnchancement.length);

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
              3, (index) => index == tierNum - 1 ? enchancementId : ''),
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
}
