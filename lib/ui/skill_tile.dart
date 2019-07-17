import 'package:flutter/material.dart';

class SkillTile extends StatelessWidget {
  final String name;
  final String type;
  final String iconUrl;
  final Function onTap;

  const SkillTile({
    @required this.name,
    @required this.type,
    @required this.iconUrl,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(iconUrl),
      title: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name),
                Text(type),
              ],
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
      onTap: onTap,
    );
  }
}
