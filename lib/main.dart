import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:lost_ark/screens/skills_page.dart';
import 'package:lost_ark/managers/app_manager.dart';
import 'package:lost_ark/screens/class_page.dart';
import 'package:lost_ark/screens/class_selector_page.dart';
// import 'managers/class_manager.dart';
// import 'managers/skill_manager.dart';
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
        // Provider<ClassManager>.value(
        //   value: ClassManager.instance(),
        // ),
        // Provider<SkillManager>.value(
        //   value: SkillManager.instance(),
        // )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        initialRoute: '/',
        routes: {
          HomePage.routeName: (_) => HomePage(),
          ClassSelectorPage.routeName: (_) => ClassSelectorPage(),
          ClassListPage.routeName: (_) => ClassListPage(),
          ClassPage.routeName: (_) => ClassPage(),
          SkillsPage.routeName: (_) => SkillsPage(),
        },
      ),
    );
  }
}
