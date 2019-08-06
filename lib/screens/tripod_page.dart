import 'dart:io' show Platform;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:auto_size_text/auto_size_text.dart';

import '../models/skill.dart';
import '../managers/app_manager.dart';
import '../managers/build_manager.dart';
import '../managers/locale_manager.dart';
import '../helpers/theme.dart';
import '../ui/build_points.dart';
import '../ui/cupertino_navbar.dart';
import '../ui/material_appbar.dart';
import '../ui/tripod_indicator.dart';

class TripodPage extends StatelessWidget {
  final String id;

  const TripodPage({@required this.id});

  @override
  Widget build(BuildContext context) {
    final skill = Provider.of<AppManager>(context, listen: false).skillById(id);

    return Platform.isAndroid
        ? Scaffold(
            appBar: MyMaterialAppBar(
              title: BuildPoints(),
              trailing: TripodIndicator(skillId: skill.id),
            ),
            body: _TripodPageBody(skill: skill),
          )
        : CupertinoPageScaffold(
            navigationBar: MyCupertinoNavBar(
                backTitle: LocaleManager.of(context).translate('skills'),
                middle: BuildPoints(),
                trailing: TripodIndicator(skillId: skill.id)),
            child: _TripodPageBody(skill: skill),
          );
  }
}

class _TripodPageBody extends StatelessWidget {
  final Skill skill;

  _TripodPageBody({@required this.skill});

  @override
  Widget build(BuildContext context) {
    final scale = MediaQuery.of(context).size.width <= 360 ? 24.0 : 32.0;

    return SafeArea(
      bottom: false,
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset(skill.iconUrl, height: scale * 2),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(skill.name, style: Styles.defaultText20),
                        Text(
                          skill.type,
                          style: TextStyle(color: CupertinoColors.inactiveGray),
                        ),
                      ],
                    ),
                  ),
                ),
                Row(mainAxisSize: MainAxisSize.min, children: [
                  Icon(Icons.hourglass_empty),
                  Text(
                    '${skill.cooldown}',
                    style: Styles.defaultText20,
                  ),
                ]),
              ],
            ),
            Divider(color: Styles.layerColor),
            Text(
              '${skill.description}',
              style: TextStyle(fontSize: 16.0, color: Styles.defaultWhite),
            ),
            for (var i = 0; i < 3; ++i)
              _TierRow(
                skillId: skill.id,
                tier: skill.tripod.elementAt(i),
                iconScale: scale,
              ),
            Center(child: _DoneButton()),
          ],
        ),
      ),
    );
  }
}

class _DoneButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final label = LocaleManager.of(context).translate('done');
    return Platform.isAndroid
        ? FlatButton(
            child: Text(label),
            onPressed: () => Navigator.of(context).pop(),
          )
        : CupertinoButton(
            child: Text(label, style: Styles.defaultText),
            onPressed: () => Navigator.of(context).pop(),
          );
  }
}

class _TierRow extends StatelessWidget {
  final String skillId;
  final EnchancementTier tier;
  final double iconScale;

  const _TierRow({
    @required this.skillId,
    @required this.tier,
    @required this.iconScale,
  });

  Color _selectColor(int index) {
    switch (index) {
      case 1:
        return CupertinoColors.activeBlue;
      case 2:
        return CupertinoColors.activeGreen;
      case 3:
        return CupertinoColors.activeOrange;
    }
    return Colors.transparent;
  }

  @override
  Widget build(BuildContext context) {
    final build = Provider.of<BuildManager>(context, listen: true);
    final selectedEnchancementId =
        build.getSelectedEnchancementId(skillId, tier.tier);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
        decoration: BoxDecoration(
          color: Styles.layerColor,
          borderRadius: BorderRadius.all(Radius.circular(4.0)),
        ),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10.0),
              height: 80.0,
              child: Center(
                child: selectedEnchancementId == ''
                    ? Text(
                        'Tier ${tier.tier}',
                        style: Styles.defaultText20,
                      )
                    : AutoSizeText(
                        tier.enchancements
                            .singleWhere(
                                (item) => item.id == selectedEnchancementId)
                            .description,
                        maxFontSize: 16.0,
                        style: Styles.defaultText,
                      ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  for (final enchancement in tier.enchancements)
                    Expanded(
                      child: Container(
                        child: Column(
                          children: [
                            GestureDetector(
                              child: CircleAvatar(
                                backgroundColor:
                                    selectedEnchancementId == enchancement.id
                                        ? _selectColor(tier.tier)
                                        : Colors.transparent,
                                radius: iconScale + 2,
                                child: CircleAvatar(
                                  radius: iconScale,
                                  backgroundColor:
                                      Styles.scaffoldBackgroundColor,
                                  child: Image.asset(enchancement.iconUrl),
                                  // backgroundImage: AssetImage(enchancement.iconUrl),
                                ),
                              ),
                              onTap: () => build.addToBuild(enchancement.id),
                            ),
                            SizedBox(height: 10.0),
                            Text(
                              enchancement.name,
                              style: TextStyle(
                                  fontSize: 16.0, color: Styles.lightGrey),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
