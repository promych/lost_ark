import 'package:flutter/cupertino.dart';

import '../helpers/theme.dart';

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
            color: Styles.layerColor,
            borderRadius: BorderRadius.all(Radius.circular(4.0)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  name,
                  style: Styles.defaultText20,
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
