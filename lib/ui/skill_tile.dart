import 'dart:io' show Platform;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../helpers/theme.dart';
import '../managers/app_manager.dart';
import '../screens/tripod_page.dart';
import '../ui/tripod_indicator.dart';
import 'skill_type_in_tile.dart';

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
                      SkillTypeInTile(sType: skill.type),
                    ],
                  ),
                ),
              ),
              TripodIndicator(skillId: skill.id)
            ],
          ),
        ),
        onTap: () {
          final builder = (_) => TripodPage(id: id);
          final route = Platform.isAndroid
              ? MaterialPageRoute(builder: builder)
              : CupertinoPageRoute(builder: builder);
          Navigator.of(context).push(route);
        },
      ),
    );
  }
}
