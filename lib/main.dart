import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart'
    show DeviceOrientation, SystemChrome, SystemUiOverlayStyle;
import 'package:lost_ark/helpers/theme.dart';
import 'package:lost_ark/managers/build_manager.dart';

import 'package:provider/provider.dart';

import 'package:lost_ark/screens/skills_page.dart';
import 'package:lost_ark/managers/app_manager.dart';
import 'package:lost_ark/screens/class_view_page.dart';
import 'package:lost_ark/screens/class_selector_page.dart';

import 'screens/class_list_page.dart';
import 'screens/home_page.dart';
import 'ui/error.dart';
import 'ui/loading.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          builder: (_) => AppManager.instance(),
        ),
        ChangeNotifierProvider(
          builder: (_) => BuildManager(),
        ),
      ],
      child: Consumer<AppManager>(
        builder: (BuildContext context, AppManager app, Widget child) {
          switch (app.status) {
            case AppStatus.Uninitialized:
            case AppStatus.Loading:
              return Loading();
            case AppStatus.Loaded:
              return child;
            case AppStatus.Error:
              return ErrorView(message: app.errorMessage);
          }
          return Loading();
        },
        child: CupertinoApp(
          debugShowCheckedModeBanner: false,
          theme: appTheme,
          initialRoute: '/',
          routes: {
            HomePage.routeName: (_) => HomePage(),
            ClassSelectorPage.routeName: (_) => ClassSelectorPage(),
            ClassListPage.routeName: (_) => ClassListPage(),
            ClassPage.routeName: (_) => ClassPage(),
            SkillsPage.routeName: (_) => SkillsPage(),
          },
        ),
      ),
    );
  }
}
