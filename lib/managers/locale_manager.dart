import 'dart:async';
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class LocaleManager {
  Locale? locale;

  LocaleManager(this.locale);

  static LocaleManager? of(BuildContext context) =>
      Localizations.of<LocaleManager>(context, LocaleManager);

  late final Map<String, dynamic> _sentences = {};

  Future<bool> load() async {
    String data;
    if (locale?.countryCode == null) {
      locale = const Locale('en', 'US');
    }
    data =
        await rootBundle.loadString('assets/lang/${locale!.languageCode}.json');
    final _result = json.decode(data) as Map<String, dynamic>;

    _result.forEach((String key, dynamic value) {
      _sentences[key] = value;
    });

    return true;
  }

  String translate(String key, {List<String>? args}) {
    String res = _resolve(key, _sentences);
    if (args != null) {
      for (final str in args) {
        res = res.replaceFirst(RegExp('{}'), str);
      }
    }
    return res;
  }

  String plural(String key, dynamic value) {
    String res = '';
    final keyMap = _sentences[key] as Map<String, dynamic>;
    if (value == 0) {
      res = keyMap['zero'] as String;
    } else if (value == 1) {
      res = keyMap['one'] as String;
    } else {
      res = keyMap['other'] as String;
    }
    return res.replaceFirst(RegExp('{}'), '$value');
  }

  String _resolve(String path, Map<String, dynamic> obj) {
    final List<String> keys = path.split('.');

    if (keys.length > 1) {
      for (int index = 0; index <= keys.length; index++) {
        if (obj.containsKey(keys[index]) && obj[keys[index]] is! String) {
          return _resolve(
            keys.sublist(index + 1, keys.length).join('.'),
            obj[keys[index]] as Map<String, dynamic>,
          );
        }

        return (obj[path] ?? path) as String;
      }
    }

    return (obj[path] ?? path) as String;
  }
}

class AppLocalizationsDelegate extends LocalizationsDelegate<LocaleManager> {
  const AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => ['en', 'ru'].contains(locale.languageCode);

  @override
  Future<LocaleManager> load(Locale locale) async {
    final localizations = LocaleManager(locale);
    await localizations.load();
    return localizations;
  }

  @override
  bool shouldReload(LocalizationsDelegate<LocaleManager> old) => true;
}
