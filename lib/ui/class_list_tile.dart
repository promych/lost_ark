import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lost_ark/managers/class_manager.dart';

import 'package:provider/provider.dart';

import '../managers/app_manager.dart';

class ClassListTile extends StatelessWidget {
  final String name;
  final IconData icon;

  const ClassListTile({
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
              color: Colors.grey[800],
              borderRadius: BorderRadius.all(Radius.circular(4.0)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Material(
                  type: MaterialType.transparency,
                  child: Text(
                    name,
                    style: TextStyle(fontSize: 30.0),
                  ),
                ),
                Icon(icon, size: 40.0),
              ],
            ),
          ),
          onTap: () {
            Provider.of<ClassManager>(context).selectClass(name);
            Navigator.of(context).pushNamed('/class');
          }),
    );
  }
}
