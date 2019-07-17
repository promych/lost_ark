import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../managers/skill_manager.dart';
import '../screens/tripod_page.dart';
import '../ui/skill_tile.dart';
// import '../data/skill_data.dart';

class SkillsPage extends StatelessWidget {
  static const routeName = '/skills';

  final String className;

  const SkillsPage({@required this.className});

  @override
  Widget build(BuildContext context) {
    final skills = Provider.of<SkillManager>(context, listen: false)
        .getSkillsByClassName(className);

    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        backgroundColor: Colors.transparent,
        actionsForegroundColor: Colors.white,
        previousPageTitle: 'Classses',
        middle: Text(
          className,
          style: TextStyle(color: Colors.white),
        ),
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
