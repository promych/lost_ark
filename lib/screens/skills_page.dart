import 'dart:io' show Platform;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../helpers/theme.dart';
import '../managers/locale_manager.dart';
import '../managers/app_manager.dart';
import '../managers/build_manager.dart';
import '../ui/build_points.dart';
import '../ui/class_tile.dart';
import '../ui/cupertino_navbar.dart';
import '../ui/material_appbar.dart';
import '../ui/sliver_appbar_delegate.dart';
import '../ui/skill_tile.dart';

class SkillsPage extends StatelessWidget {
  static const routeName = '/skills';

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? Scaffold(
            appBar: MyMaterialAppBar(
              // previousPageTitle: LocaleManager.of(context).translate('classes'),
              title: BuildPoints(),
              trailing: _SaveBuildButton(),
            ),
            body: _SkillsPageBody(),
          )
        : CupertinoPageScaffold(
            navigationBar: MyCupertinoNavBar(
              backTitle: LocaleManager.of(context).translate('classes'),
              middle: BuildPoints(),
              trailing: _SaveBuildButton(),
            ),
            child: _SkillsPageBody(),
          );
  }
}

class _SkillsPageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final app = Provider.of<AppManager>(context, listen: false);
    final selectedClass = app.selectedClass;
    final skills = app.skillsByClassName(selectedClass.name);

    return CustomScrollView(
      slivers: [
        SliverPersistentHeader(
          pinned: false,
          delegate: SliverAppBarDelegate(
            minHeight: 80.0,
            maxHeight: 80.0,
            child: ClassTile(
              name: selectedClass.name,
              icon: selectedClass.icon,
              onTap: () {
                app.selectClass(selectedClass.name);
                Navigator.of(context).pushReplacementNamed('/class');
              },
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate([
            for (var skill in skills)
              Column(
                children: [
                  SkillTile(id: skill.id),
                  Divider(color: Styles.layerColor),
                ],
              ),
          ]),
        ),
      ],
    );
  }
}

class _SaveBuildButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final build = Provider.of<BuildManager>(context);

    return GestureDetector(
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 250),
        transitionBuilder: (Widget child, Animation<double> animation) =>
            ScaleTransition(child: child, scale: animation),
        child: build.readyToSave
            ? Icon(
                Icons.save_alt,
                key: ValueKey<IconData>(Icons.save_alt),
              )
            : Icon(Icons.check, key: ValueKey<IconData>(Icons.check)),
      ),
      onTap: () {
        if (build.readyToSave)
          build.save(
              Provider.of<AppManager>(context, listen: false).selectedClass.id);
      },
    );
  }
}
