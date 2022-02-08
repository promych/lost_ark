import 'package:flutter/cupertino.dart';

import '../helpers/theme.dart';

class MyCupertinoNavBar extends StatelessWidget
    implements ObstructingPreferredSizeWidget {
  final String? backTitle;
  final Widget? middle;
  final Widget? trailing;

  const MyCupertinoNavBar({this.backTitle, this.middle, this.trailing});

  @override
  Widget build(BuildContext context) {
    return CupertinoNavigationBar(
      automaticallyImplyMiddle: false,
      backgroundColor: Styles.layerColor,
      previousPageTitle: backTitle,
      middle: middle,
      trailing: trailing,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(44.0);

  @override
  bool shouldFullyObstruct(BuildContext context) {
    return false;
  }
}
