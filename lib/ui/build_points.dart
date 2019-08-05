import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../helpers/theme.dart';
import '../managers/app_manager.dart';
import '../managers/build_manager.dart';

class BuildPoints extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final app = Provider.of<AppManager>(context, listen: false);

    return Consumer<BuildManager>(
      builder: (context, build, _) => Text(
        '${build.pointsByClass(app.selectedClass.id)} / $kMaxPointsPerBuild',
        style: Styles.defaultText,
      ),
    );
  }
}
