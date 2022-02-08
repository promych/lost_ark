import 'package:flutter/cupertino.dart';

import 'package:provider/provider.dart';

import '../helpers/theme.dart';
import '../managers/app_manager.dart';
import '../managers/locale_manager.dart';
import '../screens/simple_page.dart';
import '../ui/saved_builds.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final app = Provider.of<AppManager>(context, listen: false);

    return SimplePage(
      title: LocaleManager.of(context)?.translate('settings') ?? '',
      child: DefaultTextStyle(
        style: Styles.defaultText20,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        LocaleManager.of(context)
                                ?.translate('select language') ??
                            '',
                      ),
                    ),
                    CupertinoSegmentedControl(
                      selectedColor: Styles.cyanColor,
                      unselectedColor: Styles.scaffoldBackgroundColor,
                      borderColor: Styles.layerColor,
                      pressedColor: Styles.layerColor,
                      padding: EdgeInsets.zero,
                      children: const {
                        0: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 10.0,
                            vertical: 4.0,
                          ),
                          child: Text('EN', style: Styles.defaultText),
                        ),
                        1: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 10.0,
                            vertical: 4.0,
                          ),
                          child: Text('RU', style: Styles.defaultText),
                        ),
                      },
                      groupValue: app.locale?.languageCode == 'en' ? 0 : 1,
                      onValueChanged: (int index) {
                        switch (index) {
                          case 0:
                            app.changeLocale(const Locale('en', 'US'));
                            break;
                          case 1:
                            app.changeLocale(const Locale('ru', 'RU'));
                            break;
                        }
                      },
                    )
                  ],
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Text(
                    LocaleManager.of(context)?.translate('saved builds') ?? '',
                  ),
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
