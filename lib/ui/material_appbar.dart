import 'package:flutter/material.dart';

import '../helpers/theme.dart';

class MyMaterialAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? title;
  final Widget? trailing;

  const MyMaterialAppBar({this.title, this.trailing});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Styles.layerColor,
      centerTitle: true,
      title: title,
      actions: trailing != null
          ? [
              trailing!,
              const SizedBox(width: 10.0),
            ]
          : null,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
