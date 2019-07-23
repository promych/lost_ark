import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lost_ark/managers/build_manager.dart';
import 'package:lost_ark/models/skill.dart';
import 'package:provider/provider.dart';

import '../managers/app_manager.dart';
import '../ui/skill_tile.dart';

class TripodPage extends StatelessWidget {
  final String id;

  const TripodPage({@required this.id});

  @override
  Widget build(BuildContext context) {
    final skill = Provider.of<AppManager>(context, listen: false).skillById(id);

    return CupertinoPageScaffold(
      child: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SkillTile(id: id),
              Divider(),
              Text(
                'Cooldown: ${skill.cooldown}',
                style: TextStyle(
                    fontSize: 20.0,
                    color: CupertinoTheme.of(context).primaryColor),
              ),
              SizedBox(height: 10.0),
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
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Column(
        children: [
          Text(
            'Tier ${tier.tier}',
            style: TextStyle(
                fontSize: 20.0, color: CupertinoTheme.of(context).primaryColor),
          ),
          SizedBox(height: 20.0),
          Row(
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
                            radius: 33.0,
                            child: CircleAvatar(
                              radius: 32.0,
                              backgroundColor: CupertinoTheme.of(context)
                                  .scaffoldBackgroundColor,
                              child: Image.asset(enchancement.iconUrl),
                            ),
                          ),
                          onTap: () => build.addToBuild(enchancement.id),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          enchancement.name,
                          style: TextStyle(
                              fontSize: 16.0,
                              color: CupertinoTheme.of(context).primaryColor),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                )
            ],
          ),
          if (selectedEnchancementId != '')
            Text(
              tier.enchancements
                  .singleWhere((item) => item.id == selectedEnchancementId)
                  .description,
              style: TextStyle(color: CupertinoTheme.of(context).primaryColor),
            )
        ],
      ),
    );
  }
}
