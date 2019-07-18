import 'package:flutter/material.dart';
import 'package:lost_ark/models/skill.dart';
import 'package:provider/provider.dart';

import '../managers/app_manager.dart';
import '../ui/skill_tile.dart';
// import '../data/skill_data.dart';

class TripodPage extends StatelessWidget {
  final String skillName;

  const TripodPage({@required this.skillName});

  @override
  Widget build(BuildContext context) {
    final skill = Provider.of<AppManager>(context, listen: false)
        .skills
        .getSkillByName(skillName);

    return Scaffold(
      body: SafeArea(
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
                style: Theme.of(context).textTheme.subhead,
              ),
              SizedBox(height: 10.0),
              Text(
                '${skill.description}',
                style: Theme.of(context).textTheme.subhead,
              ),
              for (var i = 0; i < 3; ++i)
                _TierRow(
                  tripod: skill.tripod.elementAt(i),
                ),
              Center(
                child: RaisedButton(
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
  final Tripod tripod;

  const _TierRow({@required this.tripod});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Column(
        children: [
          Text('Tier ${tripod.tier}'),
          SizedBox(height: 30.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              for (var enchancement in tripod.enchancements)
                Expanded(
                  child: Container(
                    child: Column(
                      children: [
                        Image.asset(enchancement.iconUrl),
                        SizedBox(height: 10.0),
                        Text(
                          enchancement.name,
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
