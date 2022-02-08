import 'dart:io' show Platform;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../helpers/theme.dart';
import '../managers/locale_manager.dart';
import '../ui/class_page_body.dart';
import '../ui/cupertino_navbar.dart';
import '../ui/material_appbar.dart';

class ClassPage extends StatelessWidget {
  static const routeName = '/class';

  @override
  Widget build(BuildContext context) {
    final backTitle = LocaleManager.of(context)?.translate('classes');
    final skillsLabel = LocaleManager.of(context)?.translate('skills');
    void openSkills() => Navigator.of(context).pushReplacementNamed('/skills');

    return Platform.isAndroid
        ? Scaffold(
            appBar: MyMaterialAppBar(
              trailing: TextButton(
                child: Text(
                  skillsLabel ?? '',
                  style: const TextStyle(
                    color: Styles.cyanColor,
                    fontSize: 20.0,
                  ),
                ),
                onPressed: () => openSkills(),
              ),
            ),
            body: ClassPageBody(),
          )
        : CupertinoPageScaffold(
            navigationBar: MyCupertinoNavBar(
              backTitle: backTitle,
              trailing: GestureDetector(
                child: Text(
                  skillsLabel ?? '',
                  style: const TextStyle(color: Styles.cyanColor),
                ),
                onTap: () => openSkills(),
              ),
            ),
            child: ClassPageBody(),
          );
  }
}
