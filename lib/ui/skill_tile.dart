import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lost_ark/helpers/theme.dart';
import 'package:lost_ark/managers/app_manager.dart';
import 'package:lost_ark/screens/tripod_page.dart';
import 'package:lost_ark/ui/tripod_indicator.dart';
import 'package:provider/provider.dart';

class SkillTile extends StatelessWidget {
  final String id;

  const SkillTile({@required this.id});

  @override
  Widget build(BuildContext context) {
    final app = Provider.of<AppManager>(context, listen: false);
    final skill = app.skillById(id);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: GestureDetector(
        child: Container(
          color: Colors.transparent,
          child: Row(
            children: [
              Image.asset(skill.iconUrl,
                  height:
                      MediaQuery.of(context).size.width <= 360 ? 48.0 : 64.0),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(skill.name, style: Styles.defaultText20),
                      Text(
                        skill.type,
                        style: TextStyle(color: Styles.lightGrey),
                      ),
                    ],
                  ),
                ),
              ),
              TripodIndicator(skillId: skill.id)
            ],
          ),
        ),
        onTap: () => Navigator.of(context)
            .push(CupertinoPageRoute(builder: (_) => TripodPage(id: id))),
      ),
    );
  }
}
