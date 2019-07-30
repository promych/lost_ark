import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lost_ark/managers/build_manager.dart';
import 'package:lost_ark/managers/locale_manager.dart';
import 'package:lost_ark/models/skill.dart';
import 'package:lost_ark/ui/tripod_indicator.dart';
import 'package:provider/provider.dart';

import '../managers/app_manager.dart';

class TripodPage extends StatelessWidget {
  final String id;

  const TripodPage({@required this.id});

  @override
  Widget build(BuildContext context) {
    final app = Provider.of<AppManager>(context, listen: false);
    final skill = app.skillById(id);

    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
          backgroundColor: CupertinoTheme.of(context).primaryContrastingColor,
          previousPageTitle: LocaleManager.of(context).translate('skills'),
          middle: Consumer<BuildManager>(
            builder: (context, build, _) {
              return Text(
                '${build.pointsByClass(app.selectedClass.id)} / $kMaxPointsPerBuild',
                style:
                    TextStyle(color: CupertinoTheme.of(context).primaryColor),
              );
            },
          ),
          trailing: TripodIndicator(skillId: skill.id)),
      child: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset(skill.iconUrl),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            skill.name,
                            style: TextStyle(
                                color: CupertinoTheme.of(context).primaryColor),
                          ),
                          Text(
                            skill.type,
                            style: TextStyle(
                                color: CupertinoTheme.of(context).primaryColor),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Row(mainAxisSize: MainAxisSize.min, children: [
                    Icon(Icons.hourglass_empty),
                    Text(
                      '${skill.cooldown}',
                      style: TextStyle(
                          color: CupertinoTheme.of(context).primaryColor),
                    ),
                  ]),
                ],
              ),
              Divider(
                color: CupertinoTheme.of(context).primaryContrastingColor,
              ),
              Text(
                '${skill.description}',
                style: TextStyle(
                    fontSize: 16.0,
                    color: CupertinoTheme.of(context).primaryColor),
              ),
              for (var i = 0; i < 3; ++i)
                _TierRow(
                  skillId: skill.id,
                  tier: skill.tripod.elementAt(i),
                ),
              Center(
                child: CupertinoButton(
                  child: Text('DONE'),
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _TierRow extends StatelessWidget {
  final String skillId;
  final EnchancementTier tier;

  const _TierRow({
    @required this.skillId,
    @required this.tier,
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
          color: CupertinoTheme.of(context).primaryContrastingColor,
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
                        style: TextStyle(
                            fontSize: 20.0,
                            color: CupertinoTheme.of(context).primaryColor),
                      )
                    : AutoSizeText(
                        tier.enchancements
                            .singleWhere(
                                (item) => item.id == selectedEnchancementId)
                            .description,
                        maxFontSize: 16.0,
                        style: TextStyle(
                            color: CupertinoTheme.of(context).primaryColor),
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
                                radius: 34.0,
                                child: CircleAvatar(
                                  radius: 32.0,
                                  backgroundColor: CupertinoTheme.of(context)
                                      .scaffoldBackgroundColor,
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
                                  fontSize: 16.0,
                                  color:
                                      CupertinoTheme.of(context).primaryColor),
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
