import 'package:flutter/cupertino.dart';

const appTheme = CupertinoThemeData(
  scaffoldBackgroundColor: Color(0xff171e28), //Color.fromRGBO(36, 36, 38, 1),
  primaryColor: Color(0xffd1d2d6), //Color.fromRGBO(174, 174, 178, 1),
  primaryContrastingColor: Color(0xff1d2730), //Color.fromRGBO(54, 54, 56, 1),
);

//beruza Color(0xff078d9b)

// const activeBlueColor = CupertinoColors.activeBlue;

// const activeGreenColor = CupertinoColors.activeGreen;

// const activeOrangeColor = CupertinoColors.activeOrange;

abstract class Styles {
  static const defaultText = TextStyle(color: CupertinoColors.white);

  //   static const headlineText = TextStyle(
  //   color: Color.fromRGBO(0, 0, 0, 0.8),
  //   fontFamily: 'NotoSans',
  //   fontSize: 32,
  //   fontStyle: FontStyle.normal,
  //   fontWeight: FontWeight.bold,
  // );
}
