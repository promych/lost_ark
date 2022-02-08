import 'dart:io' show Platform;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart'
    show DeviceOrientation, SystemChrome, SystemUiOverlayStyle;
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:provider/provider.dart';

import './helpers/theme.dart';
import './managers/app_manager.dart';
import './managers/build_manager.dart';
import './managers/locale_manager.dart';
import './screens/class_page.dart';
import './screens/class_selector_page.dart';
import './screens/home_page.dart';
import './screens/skills_page.dart';
import './ui/error.dart';
import './ui/loading.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(App());
}

class App extends StatelessWidget {
  final _locales = const <Locale>[
    Locale('en', 'US'),
    Locale('ru', 'RU'),
  ];
  final _localeDelegates = <LocalizationsDelegate>[
    const AppLocalizationsDelegate(),
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
  ];

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => AppManager(),
        ),
        ChangeNotifierProvider(
          create: (_) => BuildManager(),
        ),
      ],
      child: Consumer<AppManager>(
        builder: (context, AppManager app, _) {
          return Platform.isAndroid
              ? MaterialApp(
                  debugShowCheckedModeBanner: false,
                  theme: appMaterialTheme,
                  supportedLocales: _locales,
                  localizationsDelegates: _localeDelegates,
                  locale: app.locale,
                  routes: {
                    ClassSelectorPage.routeName: (_) => ClassSelectorPage(),
                    ClassPage.routeName: (_) => ClassPage(),
                    SkillsPage.routeName: (_) => SkillsPage(),
                  },
                  home: _landing(app),
                )
              : CupertinoApp(
                  debugShowCheckedModeBanner: false,
                  theme: appCupertinoTheme,
                  supportedLocales: _locales,
                  localizationsDelegates: _localeDelegates,
                  locale: app.locale,
                  home: _landing(app),
                );
        },
      ),
    );
  }

  Widget _landing(AppManager app) {
    if (app.status == AppStatus.uninitialized ||
        app.status == AppStatus.loading) {
      return Loading();
    } else if (app.status == AppStatus.loaded) {
      return HomePage();
    } else if (app.status == AppStatus.error) {
      return ErrorView(message: app.errorMessage);
    } else {
      return Loading();
    }
  }
}
