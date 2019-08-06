import 'dart:io' show Platform;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lost_ark/ui/class_list.dart';
import 'package:lost_ark/ui/class_selector.dart';

import '../helpers/theme.dart';
import '../managers/locale_manager.dart';
import '../ui/material_appbar.dart';
import '../ui/cupertino_navbar.dart';

class ClassSelectorPage extends StatefulWidget {
  static const routeName = '/class-selector';

  @override
  _ClassSelectorPageState createState() => _ClassSelectorPageState();
}

class _ClassSelectorPageState extends State<ClassSelectorPage> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    final barTitle = LocaleManager.of(context).translate('classes');
    final _selectorViews = [ClassSelector(), ClassList()];

    return Platform.isAndroid
        ? Scaffold(
            appBar: MyMaterialAppBar(
              title: Text(barTitle, style: Styles.defaultText),
              trailing: _selectorSwitcher(),
            ),
            body: _selectorViews.elementAt(_index),
          )
        : CupertinoPageScaffold(
            navigationBar: MyCupertinoNavBar(
              middle: Text(barTitle, style: Styles.defaultText),
              trailing: _selectorSwitcher(),
            ),
            child: _selectorViews.elementAt(_index),
          );
  }

  Widget _selectorSwitcher() {
    return GestureDetector(
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 250),
        transitionBuilder: (Widget child, Animation<double> animation) =>
            ScaleTransition(child: child, scale: animation),
        child: _index == 0
            ? Icon(
                Icons.list,
                key: ValueKey<IconData>(Icons.save_alt),
              )
            : Icon(
                Icons.view_carousel,
                key: ValueKey<IconData>(Icons.check),
              ),
      ),
      onTap: () {
        _index == 0
            ? setState(() {
                _index = 1;
              })
            : setState(() {
                _index = 0;
              });
      },
    );
  }
}
