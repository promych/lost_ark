import 'package:flutter/cupertino.dart';

import '../managers/locale_manager.dart';

class SkillTypeInTile extends StatelessWidget {
  final String sType;

  const SkillTypeInTile({Key key, @required this.sType}) : super(key: key);

  String _buildSkillType(BuildContext context, String sType) {
    if (LocaleManager.of(context).locale.languageCode == 'en') {
      return sType;
    }
    switch (sType.toLowerCase()) {
      case 'normal':
        return 'Мгновенное';
      case 'combo':
        return 'Комбо';
      case 'chain':
        return 'Серия приемов';
      case 'point':
        return 'Направленное';
      case 'charge':
        return 'Подготовка';
      default:
        if (sType.contains('Hold'))
          return sType.replaceAll('Hold', 'Поддерживаемое');
        return sType;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      _buildSkillType(context, sType),
      style: TextStyle(color: CupertinoColors.inactiveGray),
    );
  }
}
