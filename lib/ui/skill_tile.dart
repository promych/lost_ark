import 'dart:io' show Platform;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../helpers/theme.dart';
import '../models/skill.dart';
import '../screens/tripod_page.dart';
import '../ui/tripod_indicator.dart';
import 'skill_type_in_tile.dart';

class SkillTile extends StatelessWidget {
  final Skill skill;

  const SkillTile({required this.skill});

  @override
  Widget build(BuildContext context) {
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
          final builder = (_) => TripodPage(skill: skill);
          final route = Platform.isAndroid
              ? MaterialPageRoute(builder: builder)
              : CupertinoPageRoute(builder: builder);
          Navigator.of(context).push(route);
        },
      ),
    );
  }
}
