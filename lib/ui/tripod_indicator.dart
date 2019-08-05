import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lost_ark/helpers/theme.dart';
import 'package:lost_ark/managers/build_manager.dart';
import 'package:provider/provider.dart';

class TripodIndicator extends StatelessWidget {
  final String skillId;

  const TripodIndicator({@required this.skillId});

  @override
  Widget build(BuildContext context) {
    return Consumer<BuildManager>(builder: (context, build, _) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.looks_one,
            color: build.getSelectedEnchancementId(skillId, 1) != ''
                ? CupertinoColors.activeBlue
                : Styles.lightGrey,
          ),
          Icon(
            Icons.looks_two,
            color: build.getSelectedEnchancementId(skillId, 2) != ''
                ? CupertinoColors.activeGreen
                : Styles.lightGrey,
          ),
          Icon(
            Icons.looks_3,
            color: build.getSelectedEnchancementId(skillId, 3) != ''
                ? CupertinoColors.activeOrange
                : Styles.lightGrey,
          ),
        ],
      );
    });
  }
}
