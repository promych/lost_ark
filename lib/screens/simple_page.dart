import 'dart:io' show Platform;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../helpers/theme.dart';

class SimplePage extends StatelessWidget {
  final String title;
  final Widget child;
  final bool showAppBar;

  SimplePage(
      {@required this.title, @required this.child, this.showAppBar = true});

  @override
  Widget build(BuildContext context) {
    Widget _title = Text(title, style: Styles.defaultText);

    return Platform.isAndroid
        ? Scaffold(
            appBar: showAppBar
                ? AppBar(
                    centerTitle: true,
                    backgroundColor: Styles.layerColor,
                    title: _title,
                  )
                : null,
            body: child,
          )
        : CupertinoPageScaffold(
            navigationBar: showAppBar
                ? CupertinoNavigationBar(
                    backgroundColor: Styles.layerColor,
                    middle: _title,
                  )
                : null,
            child: child,
          );
  }
}
