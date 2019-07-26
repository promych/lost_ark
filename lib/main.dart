import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart'
    show DeviceOrientation, SystemChrome, SystemUiOverlayStyle;
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:lost_ark/helpers/theme.dart';
import 'package:lost_ark/managers/build_manager.dart';

import 'package:provider/provider.dart';

import 'package:lost_ark/screens/skills_page.dart';
import 'package:lost_ark/managers/app_manager.dart';
import 'package:lost_ark/screens/class_view_page.dart';
import 'package:lost_ark/screens/class_selector_page.dart';

import 'managers/locale_manager.dart';
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
          builder: (_) => LocaleManager(Locale('en', 'US')),
        ),
        ChangeNotifierProxyProvider<LocaleManager, AppManager>(
            builder: (context, loc, _) =>
                AppManager.instance(lang: loc.locale.countryCode)),
        ChangeNotifierProvider(
          builder: (_) => BuildManager(),
        ),
      ],
      child: Consumer<AppManager>(
          builder: (BuildContext context, AppManager app, Widget child) {
        return CupertinoApp(
          debugShowCheckedModeBanner: false,
          theme: appTheme,
          supportedLocales: [
            const Locale('en', 'US'),
            const Locale('ru', 'RU'),
          ],
          localizationsDelegates: [
            AppLocalizationsDelegate(
              locale:
                  Provider.of<LocaleManager>(context, listen: false).locale ??
                      Locale('en', 'US'),
            ),
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          // localeResolutionCallback: (locale, supportedLocales) {
          // return supportedLocales.singleWhere(
          //     (item) =>
          //         item.languageCode == locale.languageCode &&
          //         item.countryCode == locale.countryCode,
          //     orElse: () => supportedLocales.first);
          // },
          locale: Provider.of<LocaleManager>(context, listen: false).locale,
          initialRoute: '/',
          routes: {
            HomePage.routeName: (_) {
              print('change state');
              switch (app.status) {
                case AppStatus.Loaded:
                  return HomePage();
                case AppStatus.Error:
                  return ErrorView(message: app.errorMessage);
                case AppStatus.Uninitialized:
                case AppStatus.Loading:
                default:
                  return Loading();
              }
            },
            ClassSelectorPage.routeName: (_) => ClassSelectorPage(),
            ClassListPage.routeName: (_) => ClassListPage(),
            ClassPage.routeName: (_) => ClassPage(),
            SkillsPage.routeName: (_) => SkillsPage(),
          },
        );
      }),
    );
  }
}
