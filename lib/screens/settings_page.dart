import 'package:flutter/cupertino.dart';
import 'package:lost_ark/managers/app_manager.dart';
import 'package:provider/provider.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final app = Provider.of<AppManager>(context, listen: false);

    return Center(
      child: CupertinoSegmentedControl(
        children: {
          0: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text('EN'),
          ),
          1: Padding(
            padding: const EdgeInsets.all(5.0),
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
      ),
    );
  }
}
