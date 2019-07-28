import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ClassTile extends StatelessWidget {
  final String name;
  final IconData icon;
  final Function onTap;

  const ClassTile({
    @required this.name,
    @required this.icon,
    @required this.onTap,
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
            children: [
              Expanded(
                child: Text(
                  name,
                  style: TextStyle(
                      color: CupertinoTheme.of(context).primaryColor,
                      fontSize: 30.0),
                ),
              ),
              Icon(icon, size: 40.0),
            ],
          ),
        ),
        onTap: onTap,
      ),
    );
  }
}
