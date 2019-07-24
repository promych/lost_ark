import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../managers/app_manager.dart';

class ClassTile extends StatelessWidget {
  final String name;
  final IconData icon;

  const ClassTile({
    @required this.name,
    @required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GestureDetector(
          child: Container(
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: CupertinoTheme.of(context).primaryContrastingColor,
              borderRadius: BorderRadius.all(Radius.circular(4.0)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  name,
                  style: TextStyle(
                      color: CupertinoTheme.of(context).primaryColor,
                      fontSize: 30.0),
                ),
                Icon(icon, size: 40.0),
              ],
            ),
          ),
          onTap: () {
            Provider.of<AppManager>(context).selectClass(name);
            Navigator.of(context).pushNamed('/class');
          }),
    );
  }
}
