import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lost_ark/ui/cupertino_navbar.dart';

import 'package:provider/provider.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../managers/app_manager.dart';
import '../screens/tripod_page.dart';
import '../ui/skill_tile.dart';
// import '../data/skill_data.dart';

class SkillsPage extends StatelessWidget {
  static const routeName = '/skills';

  // final String className;

  // const SkillsPage({@required this.className});

  @override
  Widget build(BuildContext context) {
    final app = Provider.of<AppManager>(context, listen: false);
    final className = app.getSelectedClass.name;
    final skills = app.skills.getSkillsByClassName(className);

    return CupertinoPageScaffold(
      navigationBar: MyCupertinoNavBar(
        backTitle: 'Classes',
        title: className,
        trailing: GestureDetector(
          child: Text('Save'),
          onTap: () {},
        ),
      ),
      child: Scaffold(
        body: SlidingUpPanel(
          body: ListView.separated(
            itemCount: skills.length,
            itemBuilder: (_, int index) {
              final skill = skills[index];
              return SkillTile(
                name: skill.name,
                type: skill.type,
                iconUrl: skill.iconUrl,
                onTap: () => Navigator.of(context).push(CupertinoPageRoute(
                    builder: (_) => TripodPage(skillName: skill.name))),
              );
            },
            separatorBuilder: (_, int index) => Divider(),
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
