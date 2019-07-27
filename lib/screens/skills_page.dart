import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lost_ark/ui/cupertino_navbar.dart';

import 'package:provider/provider.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
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
      navigationBar: MyCupertinoNavBar(
        backTitle: LocaleManager.of(context).translate('classes'),
        title: className,
        trailing: GestureDetector(
          child: Text(
            LocaleManager.of(context).translate('save'),
            style: TextStyle(color: CupertinoTheme.of(context).primaryColor),
          ),
          onTap: () {},
        ),
      ),
      child: CupertinoPageScaffold(
        child: SlidingUpPanel(
          minHeight: 40.0,
          body: ListView.separated(
            itemCount: skills.length,
            itemBuilder: (_, int index) => SkillTile(id: skills[index].id),
            separatorBuilder: (_, int index) => Divider(
              color: CupertinoTheme.of(context).primaryContrastingColor,
            ),
          ),
          panel: Container(
            height: 400.0,
            child: Placeholder(),
          ),
        ),
      ),
    );
  }
}
