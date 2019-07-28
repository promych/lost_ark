import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lost_ark/managers/build_manager.dart';

import 'package:provider/provider.dart';
import '../managers/locale_manager.dart';

import '../managers/app_manager.dart';
import '../ui/skill_tile.dart';

class SkillsPage extends StatelessWidget {
  static const routeName = '/skills';

  @override
  Widget build(BuildContext context) {
    final app = Provider.of<AppManager>(context, listen: false);
    final className = app.selectedClass.name;
    final skills = app.skillsByClassName(className);

    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        backgroundColor: CupertinoTheme.of(context).primaryContrastingColor,
        previousPageTitle: LocaleManager.of(context).translate('classes'),
        middle: Consumer<BuildManager>(
          builder: (context, build, _) {
            return Text(
              '$className (${build.pointsByClass(app.selectedClass.id)})',
              style: TextStyle(color: CupertinoTheme.of(context).primaryColor),
            );
          },
        ),
        trailing: GestureDetector(
          child: Text(
            LocaleManager.of(context).translate('save'),
            style: TextStyle(color: CupertinoTheme.of(context).primaryColor),
          ),
          onTap: () {},
        ),
      ),
      child: CupertinoPageScaffold(
        child: ListView.separated(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          itemCount: skills.length,
          itemBuilder: (_, int index) => SkillTile(id: skills[index].id),
          separatorBuilder: (_, int index) => Divider(
            color: CupertinoTheme.of(context).primaryContrastingColor,
          ),
        ),
      ),
    );
  }
}
