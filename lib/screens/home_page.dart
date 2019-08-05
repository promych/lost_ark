import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lost_ark/helpers/theme.dart';
import 'package:lost_ark/managers/locale_manager.dart';

import 'package:lost_ark/screens/class_list_page.dart';
import 'package:lost_ark/screens/class_selector_page.dart';
import 'package:lost_ark/screens/class_page.dart';
import 'package:lost_ark/screens/settings_page.dart';
import 'package:lost_ark/screens/simple_page.dart';
import 'package:lost_ark/screens/skills_page.dart';
import 'package:lost_ark/ui/reddit_posts.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        backgroundColor: Styles.layerColor,
        activeColor: Styles.cyanColor,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home)),
          BottomNavigationBarItem(icon: Icon(Icons.people)),
          BottomNavigationBarItem(icon: Icon(Icons.settings)),
        ],
      ),
      tabBuilder: (_, int index) {
        switch (index) {
          case 0:
            return CupertinoTabView(
              builder: (_) =>
                  SimplePage(title: 'Lost Ark', child: RedditPosts()),
            );
          case 1:
            return CupertinoTabView(
              builder: (_) => ClassSelectorPage(),
              routes: {
                ClassSelectorPage.routeName: (_) => ClassSelectorPage(),
                ClassListPage.routeName: (_) => ClassListPage(),
                ClassPage.routeName: (_) => ClassPage(),
                SkillsPage.routeName: (_) => SkillsPage(),
              },
            );
          case 2:
            return CupertinoTabView(
              builder: (_) => SimplePage(
                title: LocaleManager.of(context).translate('settings'),
                child: SettingsPage(),
              ),
            );
        }
        return null;
      },
    );
  }
}
