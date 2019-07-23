import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lost_ark/managers/app_manager.dart';
import 'package:lost_ark/managers/build_manager.dart';
import 'package:lost_ark/screens/tripod_page.dart';
import 'package:provider/provider.dart';

class SkillTile extends StatelessWidget {
  final String id;

  const SkillTile({@required this.id});

  @override
  Widget build(BuildContext context) {
    final build = Provider.of<BuildManager>(context, listen: true);
    final app = Provider.of<AppManager>(context, listen: false);
    final skill = app.skillById(id);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: GestureDetector(
        child: Container(
          color: Colors.transparent,
          child: Row(
            children: [
              Image.asset(skill.iconUrl),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        skill.name,
                        style: TextStyle(
                            color: CupertinoTheme.of(context).primaryColor),
                      ),
                      Text(
                        skill.type,
                        style: TextStyle(
                            color: CupertinoTheme.of(context).primaryColor),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.looks_one,
                    color: build.getSelectedEnchancementId(skill.id, 1) != ''
                        ? CupertinoColors.activeBlue
                        : CupertinoTheme.of(context).primaryColor,
                  ),
                  Icon(
                    Icons.looks_two,
                    color: build.getSelectedEnchancementId(skill.id, 2) != ''
                        ? CupertinoColors.activeGreen
                        : CupertinoTheme.of(context).primaryColor,
                  ),
                  Icon(
                    Icons.looks_3,
                    color: build.getSelectedEnchancementId(skill.id, 3) != ''
                        ? CupertinoColors.activeOrange
                        : CupertinoTheme.of(context).primaryColor,
                  ),
                ],
              )
            ],
          ),
        ),
        onTap: () => Navigator.of(context)
            .push(CupertinoPageRoute(builder: (_) => TripodPage(id: id))),
      ),
    );
  }
}
