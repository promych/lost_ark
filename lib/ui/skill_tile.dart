import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lost_ark/screens/tripod_page.dart';

class SkillTile extends StatelessWidget {
  final String name;
  final String type;
  final String iconUrl;

  const SkillTile({
    @required this.name,
    @required this.type,
    @required this.iconUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: GestureDetector(
        child: Container(
          color: Colors.transparent,
          child: Row(
            children: [
              Image.asset(iconUrl),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                            color: CupertinoTheme.of(context).primaryColor),
                      ),
                      Text(
                        type,
                        style: TextStyle(
                            color: CupertinoTheme.of(context).primaryColor),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  Icon(Icons.looks_one),
                  Icon(Icons.looks_two),
                  Icon(Icons.looks_3),
                ],
              )
            ],
          ),
        ),
        onTap: () => Navigator.of(context).push(
            CupertinoPageRoute(builder: (_) => TripodPage(skillName: name))),
      ),
    );
  }
}
