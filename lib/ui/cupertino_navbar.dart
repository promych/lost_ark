import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCupertinoNavBar extends StatelessWidget
    implements ObstructingPreferredSizeWidget {
  final String backTitle;
  final String title;
  final Widget trailing;
  final Color _backgroundColor;

  const MyCupertinoNavBar({@required this.backTitle, this.title, this.trailing})
      : _backgroundColor = Colors.transparent;

  @override
  Widget build(BuildContext context) {
    return CupertinoNavigationBar(
      automaticallyImplyMiddle: false,
      backgroundColor: CupertinoTheme.of(context)
          .primaryContrastingColor, //_backgroundColor,
      actionsForegroundColor: CupertinoTheme.of(context).primaryColor,
      previousPageTitle: backTitle,
      middle: title != null
          ? Text(
              title,
              style: TextStyle(color: CupertinoTheme.of(context).primaryColor),
            )
          : null,
      trailing: trailing ?? null,
    );
  }

  @override
  bool get fullObstruction =>
      _backgroundColor == null ? null : _backgroundColor.alpha == 0xFF;

  @override
  Size get preferredSize => const Size.fromHeight(44.0);
}
