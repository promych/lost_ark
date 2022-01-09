import 'dart:io' show Platform;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../helpers/lost_ark_icons.dart';
import '../helpers/theme.dart';
import '../managers/app_manager.dart';
import '../managers/build_manager.dart';
import '../managers/locale_manager.dart';
import '../ui/build_points.dart';
import '../ui/class_tile.dart';
import '../ui/cupertino_navbar.dart';
import '../ui/material_appbar.dart';
import '../ui/skill_tile.dart';
import '../ui/sliver_appbar_delegate.dart';

class SkillsPage extends StatefulWidget {
  static const routeName = '/skills';

  @override
  _SkillsPageState createState() => _SkillsPageState();
}

class _SkillsPageState extends State<SkillsPage> {
  @override
  void initState() {
    super.initState();
    Provider.of<BuildManager>(context, listen: false).readyToSave = true;
  }

  @override
  Widget build(BuildContext context) {
    return Platform.isAndroid
        ? Scaffold(
            appBar: MyMaterialAppBar(
              title: BuildPoints(),
              trailing: _SaveBuildButton(),
            ),
            body: _SkillsPageBody(),
          )
        : CupertinoPageScaffold(
            navigationBar: MyCupertinoNavBar(
              backTitle: LocaleManager.of(context)?.translate('classes'),
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
    final skills =
        selectedClass != null ? app.skillsByClassId(selectedClass.id) : null;

    return SafeArea(
      bottom: false,
      child: (selectedClass == null || skills == null)
          ? const SizedBox.shrink()
          : CustomScrollView(
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
                        app.selectClass(selectedClass.id);
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
                          SkillTile(skill: skill),
                          Divider(color: Styles.layerColor),
                        ],
                      ),
                  ]),
                ),
              ],
            ),
    );
  }
}

class _SaveBuildButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final build = Provider.of<BuildManager>(context);
    final selectedClass = Provider.of<AppManager>(context).selectedClass;
    final selectedClassId = selectedClass != null ? selectedClass.id : null;

    if (selectedClassId == null || build.pointsByClass(selectedClassId) == 0)
      return const SizedBox.shrink();

    return GestureDetector(
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 250),
        transitionBuilder: (Widget child, Animation<double> animation) =>
            ScaleTransition(child: child, scale: animation),
        child: build.readyToSave
            ? Icon(
                LostArk.download,
                color: Styles.cyanColor,
                key: ValueKey<IconData>(LostArk.download),
              )
            : Icon(
                Icons.check,
                color: Styles.cyanColor,
                key: ValueKey<IconData>(Icons.check),
              ),
      ),
      onTap: () {
        if (build.readyToSave) build.save(selectedClassId);
      },
    );
  }
}
