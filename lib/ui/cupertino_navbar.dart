import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lost_ark/helpers/theme.dart';

class MyCupertinoNavBar extends StatelessWidget
    implements ObstructingPreferredSizeWidget {
  final String backTitle;
  final Widget middle;
  final Widget trailing;
  final Color _backgroundColor;

  const MyCupertinoNavBar({this.backTitle, this.middle, this.trailing})
      : _backgroundColor = Colors.transparent;

  @override
  Widget build(BuildContext context) {
    return CupertinoNavigationBar(
      automaticallyImplyMiddle: false,
      backgroundColor: Styles.layerColor,
      actionsForegroundColor: Styles.defaultWhite,
      previousPageTitle: backTitle,
      middle: middle ?? null,
      trailing: trailing ?? null,
    );
  }

  @override
  bool get fullObstruction =>
      _backgroundColor == null ? null : _backgroundColor.alpha == 0xFF;

  @override
  Size get preferredSize => const Size.fromHeight(44.0);
}
