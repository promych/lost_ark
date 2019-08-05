import 'package:flutter/material.dart';
import 'package:lost_ark/helpers/theme.dart';

class MyMaterialAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String backTitle;
  final Widget title;
  final Widget trailing;

  MyMaterialAppBar({this.backTitle, this.title, this.trailing});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Styles.layerColor,
      // leading: backTitle != null ? Text(backTitle) : null,
      actionsIconTheme: IconThemeData(color: Styles.defaultWhite),
      iconTheme: IconThemeData(color: Styles.defaultWhite),
      centerTitle: true,
      title: title ?? null,
      actions: [trailing, SizedBox(width: 10.0)],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
