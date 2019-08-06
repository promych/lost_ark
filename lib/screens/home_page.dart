import 'dart:io' show Platform;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../managers/locale_manager.dart';
import '../helpers/theme.dart';
import '../screens/class_list_page.dart';
import '../screens/class_selector_page.dart';
import '../screens/class_page.dart';
import '../screens/settings_page.dart';
import '../screens/simple_page.dart';
import '../screens/skills_page.dart';
import '../ui/reddit_posts.dart';

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
        icon: Icon(Icons.home),
        title: Text('Home'),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.people),
        title: Text('Classes'),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.settings),
        title: Text('Settings'),
      ),
    ];

    Widget _redditPage() => SimplePage(
          title: 'Lost Ark',
          child: RedditPosts(),
        );
    Widget _settingsPage() => SimplePage(
          title: LocaleManager.of(context).translate('settings'),
          child: SettingsPage(),
        );

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
              _redditPage(),
              Navigator(
                initialRoute: ClassSelectorPage.routeName,
                onGenerateRoute: (route) {
                  WidgetBuilder builder;
                  switch (route.name) {
                    case ClassSelectorPage.routeName:
                      builder = (_) => ClassSelectorPage();
                      break;
                    case ClassListPage.routeName:
                      builder = (_) => ClassListPage();
                      break;
                    case ClassPage.routeName:
                      builder = (_) => ClassPage();
                      break;
                    case SkillsPage.routeName:
                      builder = (_) => SkillsPage();
                      break;
                    default:
                      throw Exception('No such route ${route.name}');
                  }
                  return MaterialPageRoute(builder: builder, settings: route);
                },
              ),
              _settingsPage(),
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
                  return CupertinoTabView(builder: (_) => _redditPage());
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
                  return CupertinoTabView(builder: (_) => _settingsPage());
              }
              return null;
            },
          );
  }
}
