import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// import 'screens/class_page.dart';
import 'managers/class_manager.dart';
import 'managers/skill_manager.dart';
import 'screens/classes_page.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ClassManager>.value(
          value: ClassManager.instance(),
        ),
        ChangeNotifierProvider<SkillManager>.value(
          value: SkillManager.instance(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        initialRoute: '/',
        routes: {
          ClassesPage.routeName: (_) => ClassesPage(),
          // ClassPage.routeName: (_) => ClassPage(),
        },
      ),
    );
  }
}
