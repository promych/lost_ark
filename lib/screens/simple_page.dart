import 'dart:io' show Platform;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../helpers/theme.dart';

class SimplePage extends StatelessWidget {
  final String title;
  final Widget child;

  SimplePage({@required this.title, @required this.child});

  @override
  Widget build(BuildContext context) {
    Widget _title = Text(title, style: Styles.defaultText);

    return Platform.isIOS
        ? Scaffold(
            appBar: AppBar(
              backgroundColor: Styles.layerColor,
              title: _title,
            ),
            body: child,
          )
        : CupertinoPageScaffold(
            navigationBar: CupertinoNavigationBar(
              backgroundColor: Styles.layerColor,
              middle: _title,
            ),
            child: child,
          );
  }
}
