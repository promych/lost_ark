import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lost_ark/ui/cupertino_navbar.dart';

import 'package:provider/provider.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../managers/app_manager.dart';
import '../ui/skill_tile.dart';

class SkillsPage extends StatelessWidget {
  static const routeName = '/skills';

  @override
  Widget build(BuildContext context) {
    final className =
        Provider.of<AppManager>(context, listen: false).getSelectedClass.name;
    final skills = Provider.of<AppManager>(context, listen: false)
        .getSkillsByClassName(className);

    return CupertinoPageScaffold(
      navigationBar: MyCupertinoNavBar(
        backTitle: 'Classes',
        title: className,
        trailing: GestureDetector(
          child: Text(
            'Save',
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
            itemBuilder: (_, int index) {
              final skill = skills[index];
              return SkillTile(
                name: skill.name,
                type: skill.type,
                iconUrl: skill.iconUrl,
              );
            },
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
