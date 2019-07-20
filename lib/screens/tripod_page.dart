import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lost_ark/models/skill.dart';
import 'package:provider/provider.dart';

import '../managers/app_manager.dart';
import '../ui/skill_tile.dart';

class TripodPage extends StatelessWidget {
  final String skillName;

  const TripodPage({@required this.skillName});

  @override
  Widget build(BuildContext context) {
    final app = Provider.of<AppManager>(context, listen: true);
    final skill = app.getSkillByName(skillName);
    // final build = app.getCurrentBuild;

    return CupertinoPageScaffold(
      child: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SkillTile(
                name: skill.name,
                type: skill.type,
                iconUrl: skill.iconUrl,
              ),
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
                  skillName: skillName,
                  tier: skill.tripod.elementAt(i),
                  selectedEnchancement:
                      app.getSelectedEnchancementAtTier(skillName, i),
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
  final String skillName;
  final EnchancementTier tier;
  final String selectedEnchancement;

  const _TierRow({
    @required this.skillName,
    @required this.tier,
    this.selectedEnchancement,
  });

  @override
  Widget build(BuildContext context) {
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
                                selectedEnchancement == enchancement.name
                                    ? Colors.white
                                    : Colors.transparent,
                            radius: 33.0,
                            child: CircleAvatar(
                              radius: 32.0,
                              backgroundColor: CupertinoTheme.of(context)
                                  .scaffoldBackgroundColor,
                              child: Image.asset(enchancement.iconUrl),
                            ),
                          ),
                          onTap: () {
                            Provider.of<AppManager>(context, listen: false)
                                .addToBuild(
                                    skillName, tier.tier, enchancement.name);
                          },
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
        ],
      ),
    );
  }
}
