import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:lost_ark/helpers/theme.dart';
import 'package:lost_ark/managers/locale_manager.dart';
import 'package:lost_ark/screens/class_list_page.dart';
import 'package:lost_ark/screens/class_selector_page.dart';
import 'package:lost_ark/screens/class_page.dart';
import 'package:lost_ark/screens/reddit_page.dart';
import 'package:lost_ark/screens/settings_page.dart';
import 'package:lost_ark/screens/skills_page.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: DefaultTextStyle(
        style: Styles.defaultText,
        child: CupertinoTabScaffold(
          tabBar: CupertinoTabBar(
            backgroundColor: CupertinoTheme.of(context).scaffoldBackgroundColor,
            items: [
              BottomNavigationBarItem(
                title: Text('Reddit'),
                icon: Icon(Icons.home),
              ),
              BottomNavigationBarItem(
                title: Text(LocaleManager.of(context).translate('classes')),
                icon: Icon(Icons.people),
              ),
              BottomNavigationBarItem(
                title: Text(LocaleManager.of(context).translate('settings')),
                icon: Icon(Icons.settings),
              ),
            ],
          ),
          tabBuilder: (_, int index) {
            switch (index) {
              case 0:
                return CupertinoTabView(builder: (_) => RedditPage());
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
                return CupertinoTabView(builder: (_) => SettingsPage());
            }
            return null;
          },
        ),
      ),
    );
  }
}
