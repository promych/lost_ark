import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const appCupertinoTheme = CupertinoThemeData(
  // brightness: Brightness.dark,
  scaffoldBackgroundColor: Styles.scaffoldBackgroundColor,
  primaryColor: CupertinoColors.white,
  // primaryContrastingColor: Color(0xff1d2730), //Color.fromRGBO(54, 54, 56, 1),
);

final appMaterialTheme = ThemeData.dark().copyWith(
  // brightness: Brightness.light,
  scaffoldBackgroundColor: Styles.scaffoldBackgroundColor,
  primaryColor: CupertinoColors.white,
  // accentIconTheme: IconThemeData(color: CupertinoColors.white),
  // iconTheme: IconThemeData(color: CupertinoColors.white),
  // buttonTheme: ButtonThemeData(buttonColor: CupertinoColors.white),
);

//grey Color(0xffd1d2d6), //Color.fromRGBO(174, 174, 178, 1),

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
  );

  //   static const headlineText = TextStyle(
  //   color: Color.fromRGBO(0, 0, 0, 0.8),
  //   fontFamily: 'NotoSans',
  //   fontSize: 32,
  //   fontStyle: FontStyle.normal,
  //   fontWeight: FontWeight.bold,
  // );
}
