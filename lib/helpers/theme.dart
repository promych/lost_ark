import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const _scaffoldBackgroundColor = const Color(0xff171e28);

const appCupertinoTheme = CupertinoThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: _scaffoldBackgroundColor,
  primaryColor: CupertinoColors.white,
  primaryContrastingColor: Color(0xff1d2730), //Color.fromRGBO(54, 54, 56, 1),
);

final appMaterialTheme = ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: _scaffoldBackgroundColor,
  primaryColor: Colors.white,
);

//beruza Color(0xff078d9b)

//grey Color(0xffd1d2d6), //Color.fromRGBO(174, 174, 178, 1),

abstract class Styles {
  // static const defaultText = TextStyle(color: CupertinoColors.white);

  //   static const headlineText = TextStyle(
  //   color: Color.fromRGBO(0, 0, 0, 0.8),
  //   fontFamily: 'NotoSans',
  //   fontSize: 32,
  //   fontStyle: FontStyle.normal,
  //   fontWeight: FontWeight.bold,
  // );
}
