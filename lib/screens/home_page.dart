import 'package:flutter/cupertino.dart';

import 'package:lost_ark/helpers/theme.dart';
import 'package:lost_ark/managers/locale_manager.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: DefaultTextStyle(
        style: Styles.defaultText,
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    CupertinoButton(
                      child:
                          Text(LocaleManager.of(context).translate('classes')),
                      onPressed: () =>
                          Navigator.of(context).pushNamed('/class-selector'),
                    ),
                    CupertinoButton(
                      child: Text('change to RU'),
                      onPressed: () =>
                          Provider.of<LocaleManager>(context, listen: false)
                              .changeLocale(Locale('ru', 'RU')),
                    ),
                    CupertinoButton(
                      child: Text('change to EN'),
                      onPressed: () =>
                          Provider.of<LocaleManager>(context, listen: false)
                              .changeLocale(Locale('en', 'US')),
                    ),
                    Text(
                        'Man.of() ${LocaleManager.of(context).locale.countryCode}'),
                    Text(
                        'Loc.localeOf() ${Localizations.localeOf(context).countryCode}'),
                  ],
                ),
              ),
              Expanded(
                flex: 3,
                child: Placeholder(), //RedditPosts(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
