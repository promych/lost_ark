import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lost_ark/managers/app_manager.dart';
import 'package:lost_ark/managers/locale_manager.dart';
import 'package:lost_ark/ui/saved_builds.dart';
import 'package:provider/provider.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final app = Provider.of<AppManager>(context, listen: false);

    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        backgroundColor: CupertinoTheme.of(context).primaryContrastingColor,
        middle: Text(
          'Lost Ark',
          style: TextStyle(color: CupertinoTheme.of(context).primaryColor),
        ),
      ),
      child: DefaultTextStyle(
        style: TextStyle(
          fontSize: 20.0,
          color: CupertinoTheme.of(context).primaryColor,
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        child: Text(
                          LocaleManager.of(context)
                              .translate('select language'),
                        ),
                      ),
                    ),
                    CupertinoSegmentedControl(
                      children: {
                        0: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 4.0),
                          child: Text('EN'),
                        ),
                        1: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 4.0),
                          child: Text('RU'),
                        ),
                      },
                      groupValue: app.locale.languageCode == 'en' ? 0 : 1,
                      onValueChanged: (int index) {
                        switch (index) {
                          case 0:
                            app.changeLocale(Locale('en', 'US'));
                            break;
                          case 1:
                            app.changeLocale(Locale('ru', 'RU'));
                            break;
                        }
                      },
                    )
                  ],
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child:
                      Text(LocaleManager.of(context).translate('saved builds')),
                ),
                SavedBuilds(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
