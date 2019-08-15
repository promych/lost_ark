import 'dart:io' show Platform;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../helpers/lost_ark_icons.dart';
import '../helpers/theme.dart';
import '../managers/locale_manager.dart';
import '../screens/class_selector_page.dart';
import '../screens/class_page.dart';
import '../screens/settings_page.dart';
import '../screens/skills_page.dart';
import '../screens/reddit_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _tabIndex = 0;

  @override
  Widget build(BuildContext context) {
    final _barItems = [
      BottomNavigationBarItem(
        icon: Icon(Icons.people),
        title: Text(
          LocaleManager.of(context).translate('classes'),
        ),
      ),
      BottomNavigationBarItem(
        icon: Icon(LostArk.reddit_alien),
        title: Text(
          'Reddit',
        ),
      ),
      BottomNavigationBarItem(
        icon: Icon(LostArk.cog_alt),
        title: Text(
          LocaleManager.of(context).translate('settings'),
        ),
      ),
    ];

    return Platform.isAndroid
        ? Scaffold(
            bottomNavigationBar: BottomNavigationBar(
              backgroundColor: Styles.layerColor,
              selectedItemColor: Styles.cyanColor,
              unselectedItemColor: Styles.lightGrey,
              items: _barItems,
              currentIndex: _tabIndex,
              onTap: (int index) {
                setState(() {
                  _tabIndex = index;
                });
              },
            ),
            body: [
              ClassSelectorPage(),
              RedditPage(),
              SettingsPage(),
            ].elementAt(_tabIndex),
          )
        : CupertinoTabScaffold(
            tabBar: CupertinoTabBar(
              backgroundColor: Styles.layerColor,
              activeColor: Styles.cyanColor,
              items: _barItems,
            ),
            tabBuilder: (_, int index) {
              switch (index) {
                case 0:
                  return CupertinoTabView(
                    builder: (_) => ClassSelectorPage(),
                    routes: {
                      ClassSelectorPage.routeName: (_) => ClassSelectorPage(),
                      ClassPage.routeName: (_) => ClassPage(),
                      SkillsPage.routeName: (_) => SkillsPage(),
                    },
                  );
                case 1:
                  return CupertinoTabView(builder: (_) => RedditPage());
                case 2:
                  return CupertinoTabView(builder: (_) => SettingsPage());
              }
              return null;
            },
          );
  }
}
