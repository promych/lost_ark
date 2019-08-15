import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const appCupertinoTheme = CupertinoThemeData(
  scaffoldBackgroundColor: Styles.scaffoldBackgroundColor,
  primaryColor: CupertinoColors.white,
);

final appMaterialTheme = ThemeData.dark().copyWith(
  scaffoldBackgroundColor: Styles.scaffoldBackgroundColor,
  primaryColor: CupertinoColors.white,
);

abstract class Styles {
  static const Color scaffoldBackgroundColor = const Color(0xff171e28);

  static const Color cyanColor = Color(0xff078d9b);

  static const Color layerColor = Color(0xff1d2730);

  static const Color lightGrey = CupertinoColors.lightBackgroundGray;

  static const Color defaultWhite = CupertinoColors.white;

  static const defaultText = TextStyle(color: CupertinoColors.white);

  static const defaultText20 = TextStyle(
    fontSize: 20.0,
    color: defaultWhite,
    fontFamily: 'Alegreya',
  );
}
