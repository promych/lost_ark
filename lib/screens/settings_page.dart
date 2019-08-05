import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lost_ark/helpers/theme.dart';
import 'package:lost_ark/managers/app_manager.dart';
import 'package:lost_ark/managers/locale_manager.dart';
import 'package:lost_ark/ui/saved_builds.dart';
import 'package:provider/provider.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final app = Provider.of<AppManager>(context, listen: false);

    return DefaultTextStyle(
      style: Styles.defaultText20,
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
                        LocaleManager.of(context).translate('select language'),
                      ),
                    ),
                  ),
                  CupertinoSegmentedControl(
                    selectedColor: Styles.layerColor,
                    unselectedColor: Styles.scaffoldBackgroundColor,
                    borderColor: Styles.layerColor,
                    children: {
                      0: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 4.0),
                        child: Text('EN', style: Styles.defaultText),
                      ),
                      1: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 4.0),
                        child: Text('RU', style: Styles.defaultText),
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
    );
  }
}
