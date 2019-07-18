import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:lost_ark/screens/skills_page.dart';
import 'package:lost_ark/managers/app_manager.dart';
import 'package:lost_ark/screens/class_view_page.dart';
import 'package:lost_ark/screens/class_selector_page.dart';
import 'managers/class_manager.dart';
import 'managers/skill_manager.dart';
import 'screens/class_list_page.dart';
import 'screens/home_page.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AppManager>.value(
          value: AppManager.instance(),
        ),
        ChangeNotifierProxyProvider<AppManager, ClassManager>(
          builder: (_, app, prevClassManager) {
            return ClassManager(
                prevClassManager != null ? prevClassManager.getAllClasses : []);
          },
        ),
        ChangeNotifierProxyProvider<AppManager, SkillManager>(
          builder: (_, app, prevSkillManager) {
            return SkillManager(
                prevSkillManager != null ? prevSkillManager.getAllSkills : []);
          },
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        initialRoute: '/',
        routes: {
          HomePage.routeName: (_) => HomePage(),
          // HomePage.routeName: (_) => Scaffold(
          //       body: Consumer<AppManager>(
          //         builder: (BuildContext context, AppManager app, _) {
          //           switch (app.status) {
          //             case Status.Uninitialized:
          //             case Status.Loading:
          //               return Center(
          //                 child: CircularProgressIndicator(),
          //               );
          //             case Status.Loaded:
          //               return Center(
          //                 child: RaisedButton(
          //                   child: Text('GO'),
          //                   onPressed: () => Navigator.of(context)
          //                       .pushNamed('/class-selector'),
          //                 ),
          //               );
          //             case Status.Error:
          //               return Center(
          //                 child: Text('Error'),
          //               );
          //           }
          //         },
          //       ),
          //     ),
          ClassSelectorPage.routeName: (_) => ClassSelectorPage(),
          ClassListPage.routeName: (_) => ClassListPage(),
          ClassPage.routeName: (_) => ClassPage(),
          SkillsPage.routeName: (_) => SkillsPage(),
        },
      ),
    );
  }
}
