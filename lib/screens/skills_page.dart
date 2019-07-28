import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lost_ark/managers/build_manager.dart';
import 'package:lost_ark/ui/class_tile.dart';
import 'package:lost_ark/ui/sliver_appbar_delegate.dart';

import 'package:provider/provider.dart';
import '../managers/locale_manager.dart';

import '../managers/app_manager.dart';
import '../ui/skill_tile.dart';

class SkillsPage extends StatelessWidget {
  static const routeName = '/skills';

  @override
  Widget build(BuildContext context) {
    final app = Provider.of<AppManager>(context, listen: false);
    final selectedClass = app.selectedClass;
    final skills = app.skillsByClassName(selectedClass.name);

    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        backgroundColor: CupertinoTheme.of(context).primaryContrastingColor,
        previousPageTitle: LocaleManager.of(context).translate('classes'),
        middle: Consumer<BuildManager>(
          builder: (context, build, _) {
            return Text(
              '${build.pointsByClass(app.selectedClass.id)} / $kMaxPointsPerBuild',
              style: TextStyle(color: CupertinoTheme.of(context).primaryColor),
            );
          },
        ),
        trailing: GestureDetector(
          child: Text(
            LocaleManager.of(context).translate('save'),
            style: TextStyle(color: CupertinoTheme.of(context).primaryColor),
          ),
          onTap: () {},
        ),
      ),
      child: CustomScrollView(
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
                    Divider(
                      color: CupertinoTheme.of(context).primaryContrastingColor,
                    ),
                  ],
                ),
              // ListView.separated(
              //   shrinkWrap: true,
              //   padding: const EdgeInsets.symmetric(vertical: 10.0),
              //   itemCount: skills.length,
              //   itemBuilder: (_, int index) => SkillTile(id: skills[index].id),
              //   separatorBuilder: (_, int index) => Divider(
              //     color: CupertinoTheme.of(context).primaryContrastingColor,
              //   ),
              // ),
            ]),
          ),
        ],
      ),
    );
  }
}
