import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../helpers/theme.dart';
import '../managers/app_manager.dart';
import '../managers/build_manager.dart';

class BuildPoints extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final selectedClass =
        Provider.of<AppManager>(context, listen: false).selectedClass;
    final classId = selectedClass?.id;

    return classId == null
        ? const SizedBox.shrink()
        : Consumer<BuildManager>(builder: (context, build, _) {
            final points = build.pointsByClass(classId);
            return points == 0
                ? Container()
                : Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 5.0),
                    decoration: BoxDecoration(
                      color: Styles.scaffoldBackgroundColor,
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    ),
                    child: Text(points.toString(), style: Styles.defaultText),
                  );
          });
  }
}
