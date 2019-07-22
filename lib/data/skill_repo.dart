import '../models/skill.dart';

class SkillRepo {
  Future<List<Skill>> fetchSkills() async {
    // await Future.delayed(Duration(seconds: 1));
    return _skillsData.map((json) => Skill.fromJson(json)).toList();
  }
}

// ids generate when serialized
// 'c01s13' skill, 'c07s02_1_13' ench
const List<Map<String, dynamic>> _skillsData = [
  {
    'name': 'Sharp Spear',
    'class': 'Warlord',
    'description': 'You stab enemies in front of you with your spear',
    'type': 'Normal',
    'cooldown': 1,
    'iconUrl': 'assets/icons/warlord/c01s00.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Advance',
            'description': 'You jump on 3 meters and attack cone-shaped.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_40.png',
          },
          {
            'name': 'Penetrate',
            'description':
                'Reduces attack width by 30% but increases range by 40%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_7.png',
          },
          {
            'name': 'Giant Spin',
            'description': 'You hit at 360°',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_39.png',
          },
        ],
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Wound',
            'description': 'Inflicts Bleeding for 4 seconds.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_45.png',
          },
          {
            'name': 'Weakness',
            'description':
                'Increases damage by 50% against enemies that suffer from a control effect.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_30.png',
          },
          {
            'name': 'Irregular Attack',
            'description': 'Attract enemies instead of repelling them.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_27.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Endless Spear',
            'description': 'Adds an extra hit that deals 100% of the damage.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_38.png',
          },
          {
            'name': 'Strengthened Spear',
            'description': 'Increases range by 30% and damage by 50%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_0.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Rising Spear',
    'class': 'Warlord',
    'description':
        'You pierce the ground in front of you with your spear to inflict damage, then remove it, inflicting damage on a line in front of you and knocking down enemies.',
    'type': 'Normal',
    'cooldown': 9,
    'iconUrl': 'assets/icons/warlord/c01s01.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Advance',
            'description':
                '[Changes the animation of the skill] Pushes forward by 6 meters by hitting with a shield and dealing Dmg1 damage, at the end striking Dmg2 with 20% additional damage.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_40.png',
          },
          {
            'name': 'Quick Preparation',
            'description': 'Reduces the cooldown by 2 seconds.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.png',
          },
          {
            'name': 'Surpise Attack',
            'description': 'Increase the speed of the attack.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_6.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Strengthened Blow',
            'description': 'Increases damage by 25%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_0.png',
          },
          {
            'name': 'Flaming Spear',
            'description':
                '[Fire] When you remove your spear from the ground, inflict a burn on enemies for 5 seconds.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_13.png',
          },
          {
            'name': 'Lightning',
            'description':
                '[Lightning] The enemies are no longer knocked down, but electrocuted for 3 seconds',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_17.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Earth Spikes',
            'description':
                'When you plant your spear in the ground, create conical rock spines in front of you, inflicting 60% additional damage and drawing enemies to the center of the attack.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_22.png',
          },
          {
            'name': 'Chain Explosion',
            'description':
                'Instead of taking your spear out of the ground, you deal damage 5 times on a line in front of you.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_8.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Fire Bullet',
    'class': 'Warlord',
    'description':
        'You shoot with your spear to deal damage to nearby enemies and repel them.',
    'type': 'Normal',
    'cooldown': 7,
    'iconUrl': 'assets/icons/warlord/c01s02.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Solid Armor',
            'description': 'During launch, you receive 20% less damage.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_25.png',
          },
          {
            'name': 'Luck',
            'description':
                '50% chance to reduce the cooldown by 4 seconds if the skill hits an enemy.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.png',
          },
          {
            'name': 'Mana Control',
            'description': 'Reduces the mana cost by 50%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_34.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Destraction',
            'description': 'Increases the Destruction level by 1.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_22.png',
          },
          {
            'name': 'Enflame',
            'description': 'Inflicts a burn on enemies for 6 seconds.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_13.png',
          },
          {
            'name': 'Stranthened Blow',
            'description': 'Increases damage by 25%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_0.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Additional Attack',
            'description':
                'You shoot twice in a row to deal 60% additional damage, and the second shot repels enemies further.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_8.png',
          },
          {
            'name': 'Area Bombardment',
            'description':
                'Decreases shooting speed but increases radius by 30%. In addition, it deals 100% additional damage and pushes enemies further. Increases cooldown by 2 seconds.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_7.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Shield Slam',
    'class': 'Warlord',
    'description':
        'You jump to inflict a large blow on your shield that deals damage to enemies, then you can make a second shield hit by pressing the shortcut again.',
    'type': 'Combo',
    'cooldown': 9,
    'iconUrl': 'assets/icons/warlord/c01s03.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Armor Desctruction',
            'description':
                'Decreases the target’s attack power by 20% for 8 seconds.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_46.png',
          },
          {
            'name': 'Defense Preparation',
            'description':
                'Landing two successful hits grants a 20% damage reduction bonus for 5 seconds',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_25.png',
          },
          {
            'name': 'Attack Speed',
            'description': 'Increase attack speed by 15%',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_6.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Shield Enchanced',
            'description':
                'Shield gauge charge is increased by 50% when attacking.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_37.png',
          },
          {
            'name': 'Superior Mobility',
            'description': 'Increases the skill range of the first hit by 1m.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_10.png',
          },
          {
            'name': 'Spot Weakness',
            'description':
                'Increases damage done any target with the Invulnerable status by 60%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_33.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Extra Hit',
            'description':
                'Increases the number of hits by 2. The additional hits deal 20% and 60% extra damage.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_50.png',
          },
          {
            'name': 'Flashbag',
            'description':
                'You can use the shield bash 3 times, and damage is increased by 30%. It stuns enemy on the last hit fir 2 seconds.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_38.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Bash',
    'class': 'Warlord',
    'description':
        'Strikes an enemy with your shield and stuns it for 3 seconds.',
    'type': 'Normal',
    'cooldown': 10,
    'iconUrl': 'assets/icons/warlord/c01s04.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Armor Destruction',
            'description':
                'Reduces the target’s attack power by 20% for 10 seconds.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_46.png',
          },
          {
            'name': 'Attack Speed',
            'description': 'Increase attack speed by 20%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_6.png',
          },
          {
            'name': 'Blitz Bash',
            'description':
                '[Lightning] 25% chance to inflict 50% more damage to your target.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_17.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Attack Preparation',
            'description':
                'Successful hits grant a 25% damage increase buff for 5 seconds.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_50.png',
          },
          {
            'name': 'Concussion',
            'description':
                'Increases the Incapacitate effect to its maximum level.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_69.png',
          },
          {
            'name': 'Shield Enchancement',
            'description':
                'Shield gauge charge is increased by 50% when attacking.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_37.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Strike',
            'description': 'Increases the area of effect by 30%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_7.png',
          },
          {
            'name': 'Echo',
            'description': 'Increases the stun effect duration by 2 seconds',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_51.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Dash Upper Fire',
    'class': 'Warlord',
    'description':
        'Rushes to a foe and lifts the target, dealing damage, then follows with a combo attack, firing a cannon that deals [] damage. Inflicts an additional [] damage to targets in the air.',
    'type': 'Combo',
    'cooldown': 16,
    'iconUrl': 'assets/icons/warlord/c01s05.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Quick Preparation',
            'description': 'Decreases skill cooldown by 3 seconds.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.png',
          },
          {
            'name': 'Defense Preparation',
            'description':
                'Successful hits grant a 20% damage reduction bonus for 4 seconds.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_25.png',
          },
          {
            'name': 'Attack Preparation',
            'description':
                'Increases attack power by 15% for 4 seconds after the first strike.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_50.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Damage Increased',
            'description': 'Increases the cannon’s damage by 50%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_0.png',
          },
          {
            'name': 'Drillmaster',
            'description': 'Increases the cannon’s area of effect by 20%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_13.png',
          },
          {
            'name': 'Penetration',
            'description': 'The cannon ignores 60% of a foe’s defense.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_2.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Burn',
            'description': 'The shot inflicts a burn for 5 seconds.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_13.png',
          },
          {
            'name': 'Attack Speed',
            'description': 'Increases attack speed by 30%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_6.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Leap Attack',
    'class': 'Warlord',
    'description':
        'Leap high in the air towards a target location, and inflict [ ] damage to nearby foes upon landing.',
    'type': 'Point',
    'cooldown': 16,
    'iconUrl': 'assets/icons/warlord/c01s06.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Damage Increased',
            'description': 'Increases damage by 15%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_0.png',
          },
          {
            'name': 'Quick Preparation',
            'description': 'Reduces the cooldown by 3s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.png',
          },
          {
            'name': 'Superior Mobility',
            'description': 'Increases the skill range by 2m.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_10.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Great Earthquake',
            'description':
                'You create an earthquake on your landing that slows enemies by 40% for 5s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_15.png',
          },
          {
            'name': 'Electric Zone',
            'description':
                '[Lightning] Upon landing you create a lightning zone that remains 5 seconds. Enemies in the area receive damage every second.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_17.png',
          },
          {
            'name': 'Shockwave',
            'description':
                'You create a shockwave on your landing, dealing 20% ​​more damage and throwing enemies into the air. PVP: Causes stiffness instead of hard cc.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_77.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Low Shock',
            'description':
                'You can relaunch the skill a second time to jump again.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_38.png',
          },
          {
            'name': 'Jump',
            'description':
                'You gather your forces before jumping, increasing the range to 18m and the damage done by 30%. The effect areas of Tier 2 talent are increased by 30%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_40.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Guardian\'s Lighting',
    'class': 'Warlord',
    'description':
        'Slams your shield down and deals [] damage to nearby enemies. Decreases enemies movement and attack speed by 20% for 4 seconds.',
    'type': 'Normal',
    'cooldown': 20,
    'iconUrl': 'assets/icons/warlord/c01s07.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Mana Control',
            'description': '50% chance to not consume MP.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_34.png',
          },
          {
            'name': 'Unquenchable Heat',
            'description':
                '50% chance to reduce the cooldown by 8 seconds when the skill hits an enemy.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.png',
          },
          {
            'name': 'Lucky Damage',
            'description':
                'An additional lightning strikes to inflict 80% of the damage.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_17.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Tenacity',
            'description':
                'You become immune to control effects during the launch.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_23.png',
          },
          {
            'name': 'Strengthened Blow',
            'description': 'Increases damage by 25%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_0.png',
          },
          {
            'name': 'Wide Strike',
            'description': 'Increases the attack radius by 20%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_7.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Second Wave',
            'description':
                'The skill turns into chain skill that can be repeated immediately. The The second hit’s damage is increased by 50%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_54.png',
          },
          {
            'name': 'Electrocution',
            'description': 'Increases the duration of electrocution by 3s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_51.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Chain Hook',
    'class': 'Warlord',
    'description':
        'Throws a chain hook to your target and deals [] damage, then pulls your target towards you and deals [] damage.',
    'type': 'Notmal',
    'cooldown': 24,
    'iconUrl': 'assets/icons/warlord/c01s08.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Quick Preparation',
            'description': 'Decreases skill cooldown by 4s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.png',
          },
          {
            'name': 'Mind Enhancement',
            'description': 'Decrease MP consumption by 50%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_34.png',
          },
          {
            'name': 'Damage Increased',
            'description': 'Increases damage by 10%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_0.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Sharpened Chain Hook',
            'description': 'Inflicts bleeding on the target for 5s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_45.png',
          },
          {
            'name': 'Shackles',
            'description': 'Reduces enemy movement speed by 40% for 5s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_47.png',
          },
          {
            'name': 'Offensive Preparation',
            'description': 'Increases your attack power by 25% for 5s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_50.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Drill Master',
            'description': 'Increases the area of effect by 20%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_7.png',
          },
          {
            'name': 'Taunt',
            'description':
                'A successful hit taunts a monster that has immunity of the crowd control effects for 2 seconds. Upper grade [seed grade] monsters cannot be taunted again for a certain duration of time.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_33.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Shield Charge',
    'class': 'Warlord',
    'description':
        'The caster raises their shield and charges forward. Each hit causes [ ] damage to foes and knocks them back. Causes stiffness instead of hard cc.',
    'type': 'Hold 2 sec',
    'cooldown': 16,
    'iconUrl': 'assets/icons/warlord/c01s09.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Improved Armor',
            'description':
                'Gain a 30% damage reduction bonus while you are performing the skill.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_25.png',
          },
          {
            'name': 'Quick Preparation',
            'description': 'Decreases skill cooldown by 3s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.png',
          },
          {
            'name': 'Damage Increased',
            'description': 'Increases damage by 15%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_0.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Drill Master',
            'description': 'Increases the area of effect by 20%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_7.png',
          },
          {
            'name': 'Barrier',
            'description':
                'During the charge, create a barrier that absorbs 15% of your maximum health.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_75.png',
          },
          {
            'name': 'Light Steps',
            'description': 'Travel speed is increased by 5% during charging.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_11.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Unfinished Business',
            'description':
                'Thrust a spear after the shield charge, dealing 40% additional damage. The target is lifted into the air.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_38.png',
          },
          {
            'name': 'Destructive Weapon',
            'description':
                'Each hit grant a 10% damage bonus for 2 seconds. This bonus stacks up to 60%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_2.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Charge Stinger',
    'class': 'Warlord',
    'description':
        'You charge your electric energy lance before you quickly shoot forward to hit the enemies. You can change direction slowly while loading the skill. It can also be charged 3 times to inflict more and more damage.',
    'type': 'Charge',
    'cooldown': 30,
    'iconUrl': 'assets/icons/warlord/c01s10.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Wound',
            'description':
                'Inflicts Bleeding for 3 seconds if the skill deals a critical hit.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_45.png',
          },
          {
            'name': 'Weak Spot',
            'description': 'Increases the damage done to your enemies by 20%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_33.png',
          },
          {
            'name': 'Improved Armor',
            'description':
                'Gain a 20% damage reduction bonus while you are performing the skill.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_25.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Improved Penetration',
            'description': 'Increases the penetration level by 1.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_21.png',
          },
          {
            'name': 'Improved Charging',
            'description':
                'Each level of the charging gauge increases the damage dealt by 10%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_0.png',
          },
          {
            'name': 'Toughness',
            'description':
                'The caster becomes Invulnerable to crowd control effects while performing the skill.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_23.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Lightning Charge',
            'description':
                'The charging level starts at 2, and overcharging causes an electric shock to your target for 4s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_17.png',
          },
          {
            'name': 'Last Charge',
            'description':
                'Increases the maximum charging level by 1. At the maximum level, you travel faster, further, and deal 40% increased damage, followed by an artillery hit that also deals 40% increased damage.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_40.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Shout of Hate',
    'class': 'Warlord',
    'description':
        'Inflicts [ ] damage to a maximum of 12 enemies within 8m. This also taunts monsters for 2 seconds.',
    'type': 'Normal',
    'cooldown': 30,
    'iconUrl': 'assets/icons/warlord/c01s11.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Quick Preparation',
            'description': 'Decreases skill cooldown by 5s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.png',
          },
          {
            'name': 'Drill Master',
            'description': 'Increases the area of effect by 25%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_7.png',
          },
          {
            'name': 'Defense Preparation',
            'description': 'All damage you receive is reduced by  20% for 6s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_25.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Keep Provocation',
            'description': 'The duration of provocation increases by 2s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_51.png',
          },
          {
            'name': 'Natural Selection',
            'description':
                'Increases the damage dealt on lower grade monsters by 200%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_61.png',
          },
          {
            'name': 'Protective Shield',
            'description':
                'Creates a protective shield for 3 seconds which absorbs up to 30% of the caster’s maximum health worth of damage.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_75.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Morale Boost',
            'description':
                'Increases the attack strength of your party and party members in the 24m range by 40% for 6s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_65.png',
          },
          {
            'name': 'Shout',
            'description':
                'Reduces the movement speed and attack power of inflicted enemies by 30% for 4s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_46.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Turbulent Shield',
    'class': 'Warlord',
    'description':
        'Stab the spear that deals [ ] damage, charges fire power on the spear, and pulling the enemy []. Once the caster reaches max charge level, the caster shoots [ ] the enemy and knock the enemy back.',
    'type': 'Normal',
    'cooldown': 12,
    'iconUrl': 'assets/icons/warlord/c01s12.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Quick Response',
            'description': 'Decreases the skill cooldown by 3s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.png',
          },
          {
            'name': 'Swift Movement',
            'description': 'Increase attack speed by 10%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_6.png',
          },
          {
            'name': 'Destroy Armor',
            'description': 'Reduces the target’s attack power by 20% for 10s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_2.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Improved Strike',
            'description': 'Increases damage done by 20%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_7.png',
          },
          {
            'name': 'Earthquake',
            'description':
                'Reduces attack speed to 40% and movement speed to 80%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_46.png',
          },
          {
            'name': 'Defense Preparation',
            'description':
                'Reduces damage taken by 15% for 10 seconds if the skill hits an enemy.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_25.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Second Crash',
            'description':
                'The skill can be cast twice, then you make a second hit that deals 100% of the damage.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_40.png',
          },
          {
            'name': 'Assault',
            'description':
                'You jump on 5 meters before hitting the ground, inflicting 50% more damage.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_0.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Counter Spear',
    'class': 'Warlord',
    'description':
        'Raise your shield to defend yourself from any harmful attack in front of you for 2 seconds. Absorbs damage by an amount equal to your maximum health. Successfully defending for 1 second grants a counter attack on the enemy which deals [] damage and knocks them back',
    'type': 'Normal',
    'cooldown': 24,
    'iconUrl': 'assets/icons/warlord/c01s13.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Offensive Preparation',
            'description':
                'A successful counter hit grants a 15% damage increase for 4s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_50.png',
          },
          {
            'name': 'Improved Armor',
            'description':
                'Gain a 30% damage reduction bonus while you are performing the skill.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_25.png',
          },
          {
            'name': 'Incapacitate',
            'description':
                'Increases the Incapacitate effect by 1 in the event of a successful counterattack.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_69.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Quick Response',
            'description':
                'Decreases the skill cooldown by 8 seconds and but reduces the damage dealt by 25%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_56.png',
          },
          {
            'name': 'Improved Strike',
            'description': 'Increases damage by 25%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_0.png',
          },
          {
            'name': 'Spot Weakness',
            'description':
                'Increases the damage dealt to targets with the Invulnerable status by 40%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_33.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Bombardment',
            'description':
                'A successful counter hit grants an extra artillery hit which deals 50% increased damage on the target.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_40.png',
          },
          {
            'name': 'Lightning Spear',
            'description':
                'A successful counter hit grants an extra attack with the spear. The attack deals magical damage instead of physical and knocks the target down. The target is also inflicted with an electric shock for 4s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_17.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Strength of Nellasia',
    'class': 'Warlord',
    'description':
        'Reduces all damage done by you and your party members by 10 to 25% for 6 seconds.',
    'type': 'Normal',
    'cooldown': 40,
    'iconUrl': 'assets/icons/warlord/c01s14.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Charge Speed',
            'description': 'Increases your movement speed by 15% for 6s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_11.png',
          },
          {
            'name': 'Mind Enhancement',
            'description': 'Decrease MP consumption by 50%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_34.png',
          },
          {
            'name': 'Quick Preparation',
            'description': 'Cooldown reduced by 6s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Increase Effectiveness',
            'description':
                'An additional 25% increase in damage reduced by Nelacia’s energy.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_24.png',
          },
          {
            'name': 'Cleanse',
            'description':
                'Cleanses all party members, removing one harmful effect.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_39.png',
          },
          {
            'name': 'Prolonged Effect',
            'description': 'Increases the duration of the effect by 4s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_51.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Leadership',
            'description': 'Increases your attack power by 40% for 6s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_0.png',
          },
          {
            'name': 'Survivability',
            'description':
                'Creates a protective shield on all party members which absorbs damage equal to 20% of their maximum health. The shield lasts for 6s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_65.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Spear Shot',
    'class': 'Warlord',
    'description':
        'After a forward thrust, you load its end of energy that attracts enemies before exploding to inflict damage and repel them.',
    'type': 'Normal',
    'cooldown': 12,
    'iconUrl': 'assets/icons/warlord/c01s15.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Controlling Mana',
            'description': 'Grants a 30% chance to ignore mana consumption.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_25.png',
          },
          {
            'name': 'Swift Movement',
            'description': 'Increases attack speed by 15%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_6.png',
          },
          {
            'name': 'Tenacity',
            'description':
                'You become immune to control effects during the launch.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_23.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Strengthened Blow',
            'description': 'Increases damage by 25%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_0.png',
          },
          {
            'name': 'Detect Weakness',
            'description':
                'Increases damage by 40% against enemies immune to control effects.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_33.png',
          },
          {
            'name': 'Penetration',
            'description': 'Increases Penetration Level by 1.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_21.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Exploding Spear',
            'description':
                'You charge 4 meters before attacking with your spear, which causes an explosion that deals 40% additional damage.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_40.png',
          },
          {
            'name': 'Close-Range Explosion',
            'description':
                'The skill can be loaded. At second charge, deals 25% additional damage. At third charge, deals 105% additional damage. On the other hand, the first charge deals 20% less damage.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_38.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Burst Cannon',
    'class': 'Warlord',
    'description':
        'Fires your cannon in front of you. When the burst gauge is fully charged, it deals [] damage your target and knocks them down. When not fully charged, it deals [] damage and pushes the target back.',
    'type': 'Normal',
    'cooldown': 30,
    'iconUrl': 'assets/icons/warlord/c01s16.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Penetrating Shot',
            'description': 'Ignore 40% of the physical defense of enemies.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_21.png',
          },
          {
            'name': 'Scatter Shot',
            'description':
                'You shoot cone-shaped, increasing damage by 30% against enemies of lower rank than Named. The area of ​​effect is increased by 20% and the enemies are no longer repulsed.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_61.png',
          },
          {
            'name': 'High Explosive',
            'description':
                'During your shot, you launch a bomb that moves 2 meters before exploding. The bomb has a Destruction Level 1 effect, and deals 50% additional damage to normal and lower monsters.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_33.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Precise Shot',
            'description':
                'The success bar becomes smaller, but if successful, the attack deals 40% more damage.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_72.png',
          },
          {
            'name': 'Fixed Attack',
            'description':
                'Becomes a normal skill, which shortens the time before reaching the area of ​​success.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_38.png',
          },
          {
            'name': 'Overcharge',
            'description':
                'Becomes a competence with charge. The first charge guarantees the Perfect effect, and the second charge increases the damage by 40%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_58.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Spinning Fire',
            'description':
                'You make a turn on yourself and shoot 4 times. Each time you hit an enemy, the cooldown is reduced by 1 second, with a maximum of 15 seconds.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_40.png',
          },
          {
            'name': 'Concentrated Strike',
            'description':
                'Fires your cannon 4 times into the front. Each shots deals 50% increased damage.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_8.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Double Slash',
    'class': 'Berserker',
    'description':
        'Use X to swing the sword and cause 82, 82, and 82 to the enemy',
    'type': 'Normal',
    'cooldown': 6,
    'iconUrl': 'assets/icons/berserker/c02s00.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Enhanced Blow',
            'description':
                'The time to prepare the attack increases by 0.3 seconds, but the damage to the enemy is increased by 25 %.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_0.png',
          },
          {
            'name': 'Shoulder Striking',
            'description':
                'When casting a skill, move 2m forward and add 10% damage.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_39.png',
          },
          {
            'name': 'Quick Hand',
            'description': 'Reduces attack preparation time by 0.3 seconds.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_41.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Ranged Blow',
            'description': 'Attack distance increases by 40%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_7.png',
          },
          {
            'name': 'Both Ends',
            'description': 'After the cut attack, 50 % of the damage is added.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_40.png',
          },
          {
            'name': 'Moving Forward',
            'description':
                'Each slash attack will move forward one meter, allowing you to use and use other skills immediately after the attack.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_10.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Hasher',
            'description':
                'Changes to Holding Skills allow rotation during an attack and up to 8 attacks. The waiting time for reuse increases by 8 seconds.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_42.png',
          },
          {
            'name': 'Cutting Space',
            'description':
                'It cuts the space with a sharp cutter and creates a scare in the air. The grenade disappears after a while and attacks with an additional 80%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_88.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Assault Blade',
    'class': 'Berserker',
    'description':
        'Deals damage with a sword. Damage bonus for an attack in the back',
    'type': 'Normal',
    'cooldown': 5,
    'iconUrl': 'assets/icons/berserker/c02s01.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Sleek Motion',
            'description': 'Attack speed increases by 10%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_6.png',
          },
          {
            'name': 'Piercing Strike',
            'description': 'Ignores 30% of the target\'s defense.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_2.png',
          },
          {
            'name': 'Charmer',
            'description':
                'Increases the attack range by 10% and increases the stagger time of hit enemies by 0.3s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_17.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Concentration',
            'description': 'Anger gain is increased by 100%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_37.png',
          },
          {
            'name': 'Strengthen Cutting',
            'description': 'Skill is given Level 1 Cut.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_20.png',
          },
          {
            'name': 'Internal Bleeding',
            'description': 'When a single target is hit, it will bleed for 5s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_28.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Cutting',
            'description':
                'The skill deals an additional hit, for a total of 4 hits. Increases damage done to enemies by 40%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_8.png',
          },
          {
            'name': 'Counter-Attack',
            'description':
                'The first attack deals 80% more damage, and after the first strike, the sword can be swung again causing 100% damage.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_38.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Hazardous Crime',
    'class': 'Berserker',
    'description':
        'Deals damage with his sword, inflicting additional damage to enemies in the air and crushing them to the ground',
    'type': 'Normal',
    'cooldown': 9,
    'iconUrl': 'assets/icons/berserker/c02s02.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Muscle Cramps',
            'description': 'Increase knockdown duration by 0.5s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_51.png',
          },
          {
            'name': 'Enhanced Blowon',
            'description':
                'Damage to enemies increases by 25%, but mana consumption increases by 40%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_0.png',
          },
          {
            'name': 'Sharp Strike',
            'description': 'Increases critical hit rate by 15%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_4.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Identified Weakness',
            'description':
                'Increases the damage done to the immune enemy by 40%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_33.png',
          },
          {
            'name': 'Concentration',
            'description': 'Anger gain is increased by 100%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_37.png',
          },
          {
            'name': 'Strike Sense',
            'description':
                'Upon the first hit, critical hit rate increases by 20% for 3s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_5.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Flame Rush',
            'description':
                'The last downcasting attack is changed to an attack taken 4 times in a row in the air, and the damage given to the enemy is changed to the [Attack] property, increasing by 50% in total.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_39.png',
          },
          {
            'name': 'Red Lightning',
            'description':
                'It rotates at the time of the rise, attacking the area of ​​360 degrees, and changes to the attack that takes a snap while it falls down. Damage to enemies increases by 75%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_8.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Finishing Strike',
    'class': 'Berserker',
    'description': 'Deals huge damage with his sword.',
    'type': 'Normal',
    'cooldown': 18,
    'iconUrl': 'assets/icons/berserker/c02s03.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Strength',
            'description': 'During casting, gain immunity to CC.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_23.png',
          },
          {
            'name': 'Internal Bleeding',
            'description': 'Applies a 5s bleed on hit.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_45.png',
          },
          {
            'name': 'Enhanced Blow',
            'description':
                'Increases attack time by 0.5s but increases your damage done by 20%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_0.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Finish Him',
            'description':
                'Increases damage done to enemies with health by less than 50% by 30%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_32.png',
          },
          {
            'name': 'Muscle Cramps',
            'description': 'The enemy\'s fallen state is increased by 1s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_51.png',
          },
          {
            'name': 'Internal Bleeding',
            'description': 'Increases damage done to target by 20% for 3s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_46.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Shockwave',
            'description':
                'After the attack, the shock wave will rise and give an additional 20% damage twice. At this time, if the target is abnormal, damage caused by shock waves increases to 40%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_8.png',
          },
          {
            'name': 'Confirm Kill',
            'description':
                'Combo attack is changed. The second attack deals 150% damage to the enemy, but the cooldown increases by 6 seconds. Also, the delay time is shortened so that the next action can be continued more quickly after the second attack.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_40.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Shoulder Charge',
    'class': 'Berserker',
    'description': 'Charge forward, inflicting damage to enemies on the way.',
    'type': 'Normal',
    'cooldown': 14,
    'iconUrl': 'assets/icons/berserker/c02s04.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Shield effect',
            'description':
                'Summons the power when casting a skill, creating a shield that absorbs up to 15% of maximum health for 5s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_75.png',
          },
          {
            'name': 'Burning Rage',
            'description':
                ' When casting a skill, it is surrounded by fire, attacking nearby enemies with a 10% damage per second for 5s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_13.png',
          },
          {
            'name': 'Excellent Mobility',
            'description': 'Dash distance increases by 2m.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_10.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Rush',
            'description':
                'Changed to a chain skill that can be used continuously up to 2 times, but the cooldown time increases by 10 seconds.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_38.png',
          },
          {
            'name': 'Hit',
            'description':
                'The final attack is added, dealing 100 % damage and knockdown.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_8.png',
          },
          {
            'name': 'Scraping',
            'description':
                'Changes to an attack that travels fast forward and cuts enemies on the path.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_39.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Earthquake',
            'description':
                'Element changed to Earth, roll the foot after a run,  it gives 30% damage in the radius of 5m radius, and makes the earthquake for 4s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_15.png',
          },
          {
            'name': 'Anger Explosion',
            'description':
                'Element changed to Fire, causing explosion with shout after rushing, causing 100% damage within 5m radius and float in the air.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_78.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Whirlwind',
    'class': 'Berserker',
    'description': 'Spin with your sword to deals damage over 4 seconds.',
    'type': 'Hold 4 sec',
    'cooldown': 24,
    'iconUrl': 'assets/icons/berserker/c02s05.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Lightfoot',
            'description':
                'Increases movement speed by 10% while using the skill.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_11.png',
          },
          {
            'name': 'Sustainability',
            'description': 'Holding duration increases to a maximum of 5s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_42.png',
          },
          {
            'name': 'Quick Preparation',
            'description':
                'The cooldown time is reduced by 12 seconds, but the holding hold time is reduced to a maximum of 2 seconds.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Forward Cut',
            'description':
                'When casting a skill, move 4m forward and add 20% damage. Reduces cooldown for reuse or reduction in loss of capacity due to skill cancellation does not apply.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_39.png',
          },
          {
            'name': 'Chain Wheel',
            'description':
                'As you continually attack an enemy, your damage will increase by 6% (per strike), up to 60% total.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_58.png',
          },
          {
            'name': 'Cleft Blade',
            'description':
                'An additional attack range equivalent to 40 % of the attack range is created outside of Wheelwind. The range increases damage by 40 %.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_0.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Vacuum Cut',
            'description':
                'Attack range is increased by 20%, attack rate is doubled, but damage is reduced by 40%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_7.png',
          },
          {
            'name': 'Hurricane',
            'description':
                'A whirlwind is created when the skill is released in the perfect zone. The whirlwind inflicts 40% damage if it strikes an enemy.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_40.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Power Break',
    'class': 'Berserker',
    'description':
        'Concentrate energy into the sword to deal damage and knockback enemies.',
    'type': 'Normal',
    'cooldown': 18,
    'iconUrl': 'assets/icons/berserker/c02s06.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Critical Hit',
            'description': 'Increases Critical Hit Rate by 15%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_4.png',
          },
          {
            'name': 'Sleek Motion',
            'description': 'Attack speed increased by 10%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_6.png',
          },
          {
            'name': 'Mental Fortification',
            'description': 'Mana cost reduced by 50%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_34.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Ranged Blow',
            'description': 'Attack range increased by 20%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_7.png',
          },
          {
            'name': 'Enhanced Strike',
            'description': 'Damage to enemies increased by 25%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_0.png',
          },
          {
            'name': 'Defenseless Target',
            'description': 'Increases damage done to disabled targets by 40%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_29.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Power Accumulation',
            'description':
                'Skill Type is changed to Charge Type, 100% for first level charge and 250% for overcharge, but the cooldown time increases by 18s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_42.png',
          },
          {
            'name': 'Swirl',
            'description':
                'Use centrifugal force to attack enemies in 360 degrees. Increases damage done by 50%',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_39.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Tempest Slash',
    'class': 'Berserker',
    'description':
        'Charge forward and swing your sword to deal damage and lift your enemies into the air, and deal additional 3 hit.',
    'type': 'Combo',
    'cooldown': 24,
    'iconUrl': 'assets/icons/berserker/c02s07.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Concentration',
            'description': 'Anger gain is increased by 50%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_37.png',
          },
          {
            'name': 'Sleek Motion',
            'description': 'Attack speed increased by 10%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_6.png',
          },
          {
            'name': 'Quick Preparation',
            'description': 'Cooldown time decreases by 2s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Quick Hit',
            'description': 'Increases Critical Hit Rate by 30%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_4.png',
          },
          {
            'name': 'Enhanced Strike',
            'description': 'Damage to enemies is increased by 25%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_0.png',
          },
          {
            'name': 'Heavy Strike',
            'description': 'Increased damage by 40%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_33.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Stir',
            'description':
                '1 The rider disappears and does not move forward anymore. After that, the damage caused by the change of air rotation attack to 3 turns increases by 60%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_39.png',
          },
          {
            'name': 'Storm Cut',
            'description':
                'The attack range is increased by 20%, and the last attack is changed to spinning so that enemies in the rear can attack. Damage to enemies increases by 80%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_8.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Mountain Crash',
    'class': 'Berserker',
    'description':
        'Powerful stomp, and decrease enemy movement speed by 60% for 2s.',
    'type': 'Normal',
    'cooldown': 12,
    'iconUrl': 'assets/icons/berserker/c02s08.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Quick Preparation',
            'description': 'Cooldown time decreases by 2s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.png',
          },
          {
            'name': 'Concentrated',
            'description': 'Increases rage acquisition by 100%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_37.png',
          },
          {
            'name': 'Reinforce',
            'description': 'The duration of the earthquake increases by 1s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_51.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Enhanced Strike',
            'description': 'Damage to enemies is increased by 30%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_0.png',
          },
          {
            'name': 'Excellent Mobility',
            'description': 'Attack hit rate increases by 25% for 3s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_48.png',
          },
          {
            'name': 'Slowdown Effect',
            'description':
                'Decreases the attack speed of the target by 20% and the movement speed by 40% for 4s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_47.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Seismic Wave',
            'description':
                'Seismic waves are generated, which extend to 8m in succession. Additional strikes have 20% increased critical strike chance, and deal 80% more damage.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_8.png',
          },
          {
            'name': 'Land Conflict',
            'description':
                'When an attack occurs, an earthquake pulling the enemy centered on the attack range, maintains the area for 6 seconds, and creates an area that deals damage every second.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_15.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Diving Slash',
    'class': 'Berserker',
    'description': 'Jump and crush the enemies with his sword.',
    'type': 'Point',
    'cooldown': 16,
    'iconUrl': 'assets/icons/berserker/c02s09.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Excellent Mobility',
            'description': 'Travel distance increased by 2m.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_10.png',
          },
          {
            'name': 'Concentration',
            'description': 'Anger gain increased by 50%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_37.png',
          },
          {
            'name': 'Quick Preparation',
            'description': 'Cooldown time decreases by 3s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Fast Movement',
            'description': 'Increases movement speed by 30% for 3s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_11.png',
          },
          {
            'name': 'Great Sword Again',
            'description':
                'No longer knocks downs enemies, but pulls and collects them in front of you. Additionally, increases attack speed by 20% for 3s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_9.png',
          },
          {
            'name': 'Muscle Training',
            'description': 'Increases knockdown duration by 1s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_51.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Power Slash',
            'description':
                'Preparation (Wind Up) time is added, but damage done is increased by 200%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_0.png',
          },
          {
            'name': 'Sword Fragment',
            'description':
                'Detection will occur when hit, increasing the Incapacitate to [medium] and causing the enemy to have a critical bleed for 4s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_45.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Hell Blade',
    'class': 'Berserker',
    'description':
        'Slot your sword into the ground, enabling you to hold for up to 2s. In addition. By successfully perfect zone, deal additional damage and lift enemies into the air.',
    'type': 'Hold 2.5 sec',
    'cooldown': 36,
    'iconUrl': 'assets/icons/berserker/c02s10.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Training Performance',
            'description': 'Attack range increased by 30%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_7.png',
          },
          {
            'name': 'Jump',
            'description': 'Leap to the desired position up to 8m and attack.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_10.png',
          },
          {
            'name': 'Absorption',
            'description':
                'The moment an attack is launched, it pulls the enemy within 5m into range.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_71.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Fusion',
            'description':
                'As you continue to hit a hit enemy, the damage done by your Hellblade increases by up to 10%, up to 50%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_46.png',
          },
          {
            'name': 'Lava Eruption',
            'description':
                'A lava zone with a total damage of 50% of the lava flow is created during 6 seconds after the final attack.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_85.png',
          },
          {
            'name': 'Imortal Blow',
            'description':
                'If you have less than 50% of your health, your damage will increase by 80%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_32.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Flip the Land',
            'description':
                '[Earth] changed to a property, and then, after the final attack, cut the knife deeper and attack again with 40 % of the damage.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_15.png',
          },
          {
            'name': 'Blood Ejection',
            'description':
                'It is changed to [fire], and it executes the finish attack immediately.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_13.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Chain Sword',
    'class': 'Berserker',
    'description':
        'Deal a diagonal sword strike that sends the enemies in the air.',
    'type': 'Normal',
    'cooldown': 15,
    'iconUrl': 'assets/icons/berserker/c02s11.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Quick Hit',
            'description': 'Critical Hit rate increased by 15% for 3s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_4.png',
          },
          {
            'name': 'Exceptional Maneuverability',
            'description': 'Attack with 2.5 meters forward.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_10.png',
          },
          {
            'name': 'Sleek Motion',
            'description': 'Preparation time is greatly reduced. ',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_6.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Annihilate',
            'description':
                'After the first attack, it strikes an additional court, causing 200% of damage and then knockdown to the enemy.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_39.png',
          },
          {
            'name': 'Geomorphic',
            'description': 'Applies a 5s bleed on hit.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_45.png',
          },
          {
            'name': 'Rapid Preparation',
            'description': 'Attack speed increases 25% for 3 seconds when hit.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_48.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Quick Preparation',
            'description':
                'Reduces the cooldown by 7s, but reduces damage done by 50%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_56.png',
          },
          {
            'name': 'Enhanced Blow',
            'description':
                'Increases attack radius by 20%. Increases damage to enemies by 50%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_7.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Wind Blade',
    'class': 'Berserker',
    'description': 'Swing your sword around while moving to deal damage.',
    'type': 'Normal',
    'cooldown': 20,
    'iconUrl': 'assets/icons/berserker/c02s12.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Swift Movement',
            'description': 'Increases movement speed by 15% for 5s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_11.png',
          },
          {
            'name': 'Internal Bleeding',
            'description': 'Applies 5s of bleeding.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_45.png',
          },
          {
            'name': 'Quick Preparation',
            'description': 'Cooldown time reduced by 4s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Enhanced Strike',
            'description': 'Damage done increased by 25%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_0.png',
          },
          {
            'name': 'Quick Hit',
            'description': 'Critical hit rate increased by 30%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_4.png',
          },
          {
            'name': 'Concentration',
            'description': 'Anger gain increased by 100%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_37.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Squall',
            'description':
                'Modifies the attack style. Attack three times with forward momentum. Total damage increases by 60%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_40.png',
          },
          {
            'name': 'Windswift',
            'description':
                'Swing forward with more forward momentum. Total damage increases by 30%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_39.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Maelstorm',
    'class': 'Berserker',
    'description':
        'SStrongly strike downwards with your sword to deal damage, and pull the sword out of the ground to damage and pull the enemy towards you.',
    'type': 'Combo',
    'cooldown': 15,
    'iconUrl': 'assets/icons/berserker/c02s13.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Sleek Motion',
            'description': 'Increases attack speed by 10%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_6.png',
          },
          {
            'name': 'Mental Fortification',
            'description': 'Mana Consumption reduced by 50%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_34.png',
          },
          {
            'name': 'Concentration',
            'description': 'Anger gain increased by 50%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_37.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Strength',
            'description': 'Become immune to cc during skill use.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_23.png',
          },
          {
            'name': 'Enhanced Strike',
            'description': 'Damage done increased by 25%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_0.png',
          },
          {
            'name': 'Quick Hit',
            'description':
                '2 Critical hit chance increases by 25% for 4 seconds when hit.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_4.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Flame Swirl',
            'description':
                'A delayed explosion occurs after the second strike, causing 40% additional damage and floating the target.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_8.png',
          },
          {
            'name': 'Depression',
            'description':
                'Increases attack range by 20% and increases skill damage by 30%. Stiffen time of the second strike increased by 1s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_15.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Strike Wave',
    'class': 'Berserker',
    'description':
        'Attack can be charged on 2 levels that crack the ground over a long distance, inflicting damage to the affected enemies.',
    'type': 'Hold',
    'cooldown': 36,
    'iconUrl': 'assets/icons/berserker/c02s14.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Wave',
            'description':
                'Increases the damage done to enemies by 10% during each charge phase.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_0.png',
          },
          {
            'name': 'Rapid Accumulation',
            'description': 'Charge time is reduced by 20%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_41.png',
          },
          {
            'name': 'Quick Preparation',
            'description': 'Cooldown reduced by 4s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Cerberus',
            'description': 'If over-charge, break into three parts and attack.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_7.png',
          },
          {
            'name': 'Limit breakthrough',
            'description':
                'Increases the charge phase by one step, reducing the time it takes to charge by 0.1 seconds, and increasing the damage done by the overcharge to the enemy by 40%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_58.png',
          },
          {
            'name': 'Blasting',
            'description':
                'If over-charge occurs, it explodes at the end of the attack, dealing an additional 50% of damage to the enemy.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_8.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Blaze Wave',
            'description':
                '[Fire] The properties change to an additional 60 % of basic damage to the enemy in the first stage of charge due to the flame explosion from the cracks in the ground.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_13.png',
          },
          {
            'name': 'Flip the Land',
            'description':
                'Changed to [Earth] type and black to move forward slowly, turning the ground over, can attack up to four times, but damage per attack is reduced by 50%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_15.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Red Dust',
    'class': 'Berserker',
    'description': 'Increases damage taken by you for 6 seconds by 12 to 30%.',
    'type': 'Normal',
    'cooldown': 30,
    'iconUrl': 'assets/icons/berserker/c02s15.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Quick Preparation',
            'description': 'Reduces cooldown time by 5s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.png',
          },
          {
            'name': 'Sleek Motion',
            'description': 'Attack speed increased by 20%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_6.png',
          },
          {
            'name': 'Mental Fortification',
            'description': 'Mana Consumption reduced by 50%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_34.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Quick Hit',
            'description': 'On hit, critical hit rate increased by 20% for 6s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_4.png',
          },
          {
            'name': 'Cut Enhancement',
            'description': 'The skill is given a level 2 cut.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_20.png',
          },
          {
            'name': 'Blood Stasis',
            'description':
                'Increases the struck time of a hit enemy by 0.5 seconds, and makes it bleed for 5 seconds.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_45.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Red Fly',
            'description':
                'When you raise the bell, a red squadron flies over the ground. Damage increases by 125% and attack distance by 25%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_0.png',
          },
          {
            'name': 'Damage Boost',
            'description':
                'Attack damage increases by 30% for 6 seconds for target and party members.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_2.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Blade Storm',
    'class': 'Berserker',
    'description':
        'Jump and create a black storm while falling. Throw the enemies in the air.',
    'type': 'Normal',
    'cooldown': 30,
    'iconUrl': 'assets/icons/berserker/c02s16.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Sleek Motion',
            'description': 'Attack speed increased by 10%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_6.png',
          },
          {
            'name': 'Quick Preparation',
            'description': 'Cooldown time reduces by 4s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.png',
          },
          {
            'name': 'Quick Hit',
            'description': 'Critical hit rate increased by 15%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_4.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Backbreak',
            'description':
                'After the attack, an explosion occurs in the area causing an additional 20% damage.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_8.png',
          },
          {
            'name': 'Weak Spot Capture',
            'description':
                'Increases the damage done to the immune enemy by 40%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_33.png',
          },
          {
            'name': 'Strength',
            'description': 'Become immune to cc during skill use.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_23.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Fire Storm',
            'description':
                'Changed to [Fire] property, and if hit, it makes 6 seconds image state. If your health is below 50%, your damage will increase 100%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_13.png',
          },
          {
            'name': 'Seismic Wave',
            'description':
                'Instead of a float effect, the attack damage is increased by 30% and causes unsteady ground beneath the enemy for 4s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_15.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Aurora Blade',
    'class': 'Berserker',
    'description':
        'Slash into the air, causing a wave of energy which does a ranged attack.',
    'type': 'Normal',
    'cooldown': 16,
    'iconUrl': 'assets/icons/berserker/c02s17.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Sleek Motion',
            'description': 'Increases attack speed by 10%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_6.png',
          },
          {
            'name': 'Quick Preparation',
            'description': 'Cooldown time reduces by 2s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.png',
          },
          {
            'name': 'Ranged Blow',
            'description': 'Skill use distance increases by 2m.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_52.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Strengthen Cutting',
            'description': 'Increases cut level to 2.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_20.png',
          },
          {
            'name': 'Cadaver',
            'description': 'Decreases enemy attack speed by 15% for 5s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_45.png',
          },
          {
            'name': 'Destruction',
            'description': 'Ignores 40% of the magical armor of enemies hit.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_2.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Space Cut',
            'description':
                'Aurora blade is modified to attack 3 times at the target position, increasing damage done by 75%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_39.png',
          },
          {
            'name': 'Extinction',
            'description':
                'Skill is modified to a combo skill. The attack range is reduced, but the critical hit rate is increase by 30% and inflicts an additional 50% of the base attack damage.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_38.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Heavy Crush',
    'class': 'Destroyer',
    'description':
        'Infuses your hammer with gravity energy and then slams it down in front of you',
    'type': 'Normal',
    'cooldown': 5,
    'iconUrl': 'assets/icons/destroyer/c00s00.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Quick Hit',
            'description': 'Reduces the casting time by 0.3 seconds.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_40.png',
          },
          {
            'name': 'Dark Matter',
            'description':
                '[Shadow] Increases the chance to deal a critical strike by 15%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_19.png',
          },
          {
            'name': 'Force of the Earth',
            'description': '[Earth] Increases damage by 10%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_15.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Crush',
            'description':
                'Reduces the movement speed of enemies by 20% for 5 seconds.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_47.png',
          },
          {
            'name': 'Lucky Core',
            'description':
                'In case of a successful attack, you have a 30% chance of getting a kernel of gravity.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_36.png',
          },
          {
            'name': 'Defenseless Target',
            'description':
                'Deals 30% additional damage to knockdown or stunned enemies.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_30.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Wide Hit',
            'description': 'Attack range increases by 30%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_7.png',
          },
          {
            'name': 'Aftershock',
            'description':
                'Your attack creates an earthquake that stays 5 seconds and deals 50% additional damage.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_22.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Gravity Impact',
    'class': 'Destroyer',
    'description':
        'You hit down to inflict damage, and you create a gravity zone. The area deals 8 times damage to the enemies present and draws them to its center. Then the area explodes to inflict damage again, luring enemies to you.',
    'type': 'Normal',
    'cooldown': 12,
    'iconUrl': 'assets/icons/destroyer/c00s01.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Improved Recharging',
            'description':
                'For each enemy hit, decreases the cooldown by 0.5 seconds, with a maximum of 4 seconds.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.png',
          },
          {
            'name': 'Gravity Enhancement',
            'description': 'Mana cost is reduced by 50%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_34.png',
          },
          {
            'name': 'Lucky Core',
            'description':
                'Successful hits grant a 75% chance to gain an extra core.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_36.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Solid Soul',
            'description':
                'For each enemy hit, reduces damage taken by 10% for 5 seconds, with a maximum of 60%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_25.png',
          },
          {
            'name': 'Hearthless Vengeance',
            'description':
                'You add a dose of energy in the gravity zone. Increases damage by 5% at each heartbeat, with a maximum of 50%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_50.png',
          },
          {
            'name': 'Gravity Echo',
            'description':
                'Stun for 2 seconds at the moment of exploding gravity.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_44.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Wisdom of Energy',
            'description':
                'You inject more energy into the gravity zone, which increases its damage gradually by 40%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_8.png',
          },
          {
            'name': 'Empowered Will',
            'description':
                'Instead of creating a vortex, generate a powerful gravity sphere that pulls foes toward it.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_53.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Dreadnought',
    'class': 'Destroyer',
    'description':
        'Concentrates gravity energy within your hammer, then smashes it to the ground. The impact creates a shockwave launches you into the air, dealing damage to foes upon landing.',
    'type': 'Normal',
    'cooldown': 10,
    'iconUrl': 'assets/icons/destroyer/c00s02.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Toughness',
            'description':
                'The caster becomes Invulnerable to crowd control effects while performing the skill.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_23.png',
          },
          {
            'name': 'Unbearable Strength',
            'description':
                'Ignores 30% of physical armor on any target with the Invulnerable status.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_2.png',
          },
          {
            'name': 'Superior Transition',
            'description': 'Increases the distance traveled by 1m.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_10.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Solid Body',
            'description': 'Reduces damage taken by 30% during casting.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_25.png',
          },
          {
            'name': 'Sharpened Hammer',
            'description':
                'Successful hits with the hammer deal 40% more damage to the target.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_63.png',
          },
          {
            'name': 'Hammer Rampage',
            'description':
                'Landing successful hits on at least 2 foes deals 10% more damage. Landing successful hits on 8 foes deals 80% more.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_58.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Shining Strike',
            'description':
                'The last hits lift foes and deals 30% increased damage.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_53.png',
          },
          {
            'name': 'Raging Hammer',
            'description':
                'Smashing the hammer on the ground rebounds you into the air, dealing 60% increased damage to foes upon landing.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_39.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Power Shoulder',
    'class': 'Destroyer',
    'description':
        'Charge 5m forward, dealing dealing damage to foes. An additional combo attack deals damage with an upward strike.',
    'type': 'Combo',
    'cooldown': 12,
    'iconUrl': 'assets/icons/destroyer/c00s03.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Iron Skin',
            'description':
                'Gain a 30% damage reduction bonus while you are performing the skill.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_25.png',
          },
          {
            'name': 'Victorious Contract',
            'description':
                'The second (Hammer Up) attack deals 20% additional damage.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_0.png',
          },
          {
            'name': 'Critical Strength',
            'description':
                'Attack speed is reduced by 15%, but damage done by enemies increases by 30%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_50.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Mission Completed',
            'description': 'Increases the skill range by 3m.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_10.png',
          },
          {
            'name': 'Antigravity',
            'description':
                'You gain a shield that absorbs 15% of your maximum life during the launch.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_75.png',
          },
          {
            'name': 'Drillmaster',
            'description': 'Increases the area of effect by 20%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_7.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Heavy Hammer',
            'description':
                'You slam the hammer instead striking upwards, dealing 50% increased damage.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_22.png',
          },
          {
            'name': 'Expression of Anger',
            'description':
                'The last move becomes a 360 ° strike with the hammer that stuns enemies for 4 seconds.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_9.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Gravity Force',
    'class': 'Destroyer',
    'description':
        'Swings the hammer in front of you, dealing damage. The hammer creates a gravity energy beam in front you. Enemies are pulled towards you.',
    'type': 'Chain',
    'cooldown': 14,
    'iconUrl': 'assets/icons/destroyer/c00s04.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Improved Recharging',
            'description':
                'Each pulled enemy reduces the cooldown by 0.5 seconds up to a maximum total of 4 seconds.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.png',
          },
          {
            'name': 'Iron Skin',
            'description':
                'Gain a 30% damage reduction bonus while you are performing the skill.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_25.png',
          },
          {
            'name': 'Critical Strength',
            'description': 'Increases damage done by 15%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_50.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Swift Movement',
            'description': 'Increases attack speed by 20%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_6.png',
          },
          {
            'name': 'Focusing Attack',
            'description': 'Increases damage done by 30% on a single target.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_28.png',
          },
          {
            'name': 'Lucky Core',
            'description':
                'When you hit the first strike, you gain 1 additional core with a 30% chance.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_36.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Effluence of Instinct',
            'description':
                'Creates a larger gravity energy beam. The charging time of the skill is increased by 0.4 seconds but the damage dealt is increased by 40%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_52.png',
          },
          {
            'name': 'Wave of Gravity',
            'description':
                'Quickly releases the gravity energy but reduces the damage dealt by 50% and the area of effect by 20%. However, the skill can be used a second time within 3 seconds of the first attack.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_41.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Running Crash',
    'class': 'Destroyer',
    'description':
        'While holding down the hotkey, you tackle enemies in front of you, and damage up to 7 times. Upon releasing the key or the gauge reaching its maximum, release an explosion that deals damage to foes.',
    'type': 'Hold',
    'cooldown': 20,
    'iconUrl': 'assets/icons/destroyer/c00s05.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Lucky Core',
            'description':
                'Successful hits grant a 50% chance to gain an extra core.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_36.png',
          },
          {
            'name': 'Improved Gravity',
            'description': 'Reduces mana cost by 50%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_34.png',
          },
          {
            'name': 'Quick Response',
            'description': 'Decreases the skill cooldown by 3s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Antigravity',
            'description':
                'Creates a gravity energy shield on the caster which absorbs damage equal to 15% of the caster’s maximum health.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_25.png',
          },
          {
            'name': 'Careful Planning',
            'description':
                'The explosion no longer repels the enemies but stuns them for 3s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_43.png',
          },
          {
            'name': 'Focused Target',
            'description':
                'Gravity Energy Blast Attack damage is increased by 20% for 6 seconds when a target deals damage to you and your party members.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_69.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Reckless Movement',
            'description':
                'Rushes up to 8m towards the target location, knocking enemies down.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_10.png',
          },
          {
            'name': 'Improved Rush',
            'description':
                'The gravity energy of your hammer charges more powerfully, increasing the attack radius by 50% and the damage by 100%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_50.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Jumping Smash',
    'class': 'Destroyer',
    'description':
        'Leap high in the air towards a target location up to 10 m away and inflict damage to nearby foes upon landing.',
    'type': 'Point',
    'cooldown': 16,
    'iconUrl': 'assets/icons/destroyer/c00s06.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Flame of Darkness',
            'description':
                '[Shadow] Increases the critical strike chance by 15%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_19.png',
          },
          {
            'name': 'Hammer of Earth',
            'description': '[Earth] Increases damage by 15%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_15.png',
          },
          {
            'name': 'Superior Transition',
            'description': 'Increases the movement distance by 2m.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_10.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Time Distortion',
            'description':
                'Because of the gravity, creates a temporal distortion. The attack is slower but deals 25% additional damage.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_8.png',
          },
          {
            'name': 'Grotesque Hammer',
            'description':
                'Increases the area of ​​effect by 20%. If Annihilation (Tier 3) is used, increase the range in front of and behind you by 20%, and reach to your sides by 40%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_7.png',
          },
          {
            'name': 'Quick Preparation',
            'description':
                'If you hit a Hammer attack last hit, you gain a 50% chance to gain 1 additional core.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_36.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Gravity Reversal',
            'description':
                'Your hammer strike deals 30% more damage and creates an inverted gravity zone 5 meters wide. It deals 30% additional damage and casts enemies into the air.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_77.png',
          },
          {
            'name': 'Annihilation',
            'description':
                'Changes to [Normal] skill, rotates in the air while jumping, attacks 100% total damage',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_40.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Power Strike',
    'class': 'Destroyer',
    'description': 'Raises your hammer and deal three brutal strikes.',
    'type': 'Normal',
    'cooldown': 14,
    'iconUrl': 'assets/icons/destroyer/c00s07.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Reckless Attack',
            'description':
                'Increases damage received by 20% while performing the skill but the damage of each strike is increased by 30%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_50.png',
          },
          {
            'name': 'Unbearable Strength',
            'description':
                'Ignores 30% of physical armor on any target with the Invulnerable status.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_2.png',
          },
          {
            'name': 'Quick Response',
            'description': 'Decreases the skill cooldown by 2s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Superhuman Strength',
            'description':
                'You can use other skills or cancel the skill while performing the skill.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_41.png',
          },
          {
            'name': 'Improved Hammer',
            'description':
                'Each hit increases damage dealt by 15% up to maximum total of 90%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_58.png',
          },
          {
            'name': 'Drillmaster',
            'description': 'Increases the area of effect by 25%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_7.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Endless attack',
            'description':
                'Unleash 5 devastating hammer strikes, which, after the first swing, deal an additional 25% damage.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_40.png',
          },
          {
            'name': 'Coordinated Attack',
            'description':
                'The last hit damages foes for 80% increased damage,  and knockdown the enemies.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_0.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Neutralizer',
    'class': 'Destroyer',
    'description':
        'Saturates the hammer with gravity energy for a massive strike. It inflicts [ ] damage, and creates an unpredictable shock wave within 4m of the target location. You can use the skill two more times. The second hit inflicts [ ] damage, and the third hit inflicts [ ] damage.',
    'type': 'Combo',
    'cooldown': 36,
    'iconUrl': 'assets/icons/destroyer/c00s08.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Dark Energy',
            'description':
                '[Shadow] You ignore 30% of the physical defense of enemies.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_19.png',
          },
          {
            'name': 'Earth Energy',
            'description':
                '[Earth] Reduces enemy movement speed by 30% for 3s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_15.png',
          },
          {
            'name': 'Strong Impact',
            'description':
                'The enemies hit by the shock waves are thrown into the air. Enemies immune to control effects receive 20% additional damage.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_9.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Wide Strike',
            'description': 'Increases shock wave radius by 20%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_7.png',
          },
          {
            'name': 'Unstable Earth',
            'description':
                'You only hit once but the shock waves propagate three times.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_78.png',
          },
          {
            'name': 'Amplified Gravity',
            'description':
                'With each hit, the shock wave damage increases by 20%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_58.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Explosive Gravity',
            'description': 'Creates three shockwaves per each hit.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_54.png',
          },
          {
            'name': 'Gravity Control',
            'description':
                'You create a series of three shockwaves around your hammer, inflicting 50% more damage.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_53.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Endure Pain',
    'class': 'Destroyer',
    'description':
        'When using a skill, you will have 15 to 40% reduction in damage that you are immune to for more than 5 seconds.',
    'type': 'Normal',
    'cooldown': 40,
    'iconUrl': 'assets/icons/destroyer/c00s09.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Drillmaster',
            'description': 'Increases the area of effect by 15%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_7.png',
          },
          {
            'name': 'Improved Gravity',
            'description': 'Reduces mana cost by 50%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_34.png',
          },
          {
            'name': 'Expulsion',
            'description':
                'Successful hits push enemies back further. The inflicted enemies remain in the stiffness status longer.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_60.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Antigravity',
            'description':
                'Gain a gravitational shield of 30% of your maximum health for 5s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_25.png',
          },
          {
            'name': 'Terror of Battlefield',
            'description':
                'Decreases the enemy attack speed by 20% and the movement speed by 40% for 6s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_46.png',
          },
          {
            'name': 'Trace of Pain',
            'description': 'Reduces the target attack power by 60% for 6s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_2.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Healthy Mentality',
            'description':
                'Increases the duration of the buff from the skill by 3s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_51.png',
          },
          {
            'name': 'Hidden Pain',
            'description':
                'Reduces damage taken by enemies when casting a skill by 90%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_24.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Earth Eater',
    'class': 'Destroyer',
    'description':
        'Slams the ground behind you. Then swings the hammer to the front up to three times. The first swing inflicts [ ] damage, the second [ ], and the third [ ]. After the third swing, you strike the ground.',
    'type': 'Normal',
    'cooldown': 1,
    'iconUrl': 'assets/icons/destroyer/c00s10.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Intensified Blow',
            'description': 'Increases hammer damage by 30%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_0.png',
          },
          {
            'name': 'Crimson Shrapnel',
            'description': 'Increases damage done by stone shards by 50%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_50.png',
          },
          {
            'name': 'Absolute Power',
            'description':
                'Ignore 10% of the physical defense of enemies by consumed kernel of gravity.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_2.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Tenacity',
            'description':
                'You are immune to control effects during the launch.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_23.png',
          },
          {
            'name': 'Practiced Outcome',
            'description': 'Increases the area of effect by 30%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_7.png',
          },
          {
            'name': 'Earth Shock',
            'description':
                'You hit the ground with your hammer, which creates an earthquake 7 meters ahead of you. It deals 15% more damage and defeats enemies for 2 seconds.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_43.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Earth\'s Wrath',
            'description':
                'Your hammer becomes a huge hammer surrounded by rocks, increasing its damage by 150%. The damage of stone chips is also increased by 30%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_39.png',
          },
          {
            'name': 'Geostorm',
            'description':
                'Competence becomes a [Hold] skill. The final blow is replaced by several hammer strokes. Damage is increased by 30% but area damage is removed.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_40.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Full Swing',
    'class': 'Destroyer',
    'description':
        'Swings the hammer 3 times like whirlwind. The first and second swings inflict [] damage. The last swing inflicts [ ] damage. This skill can be charged. The fully charged attack inflicts [ ] damage in total swings.',
    'type': 'Normal',
    'cooldown': 22,
    'iconUrl': 'assets/icons/destroyer/c00s11.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Iron Heart',
            'description':
                'Gain a 30% damage reduction bonus while you are performing the skill and a 50% damage reduction while you are charging the skill.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_25.png',
          },
          {
            'name': 'Swift Movement',
            'description': 'Increases attack speed by 10%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_6.png',
          },
          {
            'name': 'Quick Response',
            'description': 'Decreases the skill cooldown by 3s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Toughness',
            'description':
                'The caster becomes Invulnerable to crowd control effects while performing the skill.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_23.png',
          },
          {
            'name': 'Absolute Power',
            'description': 'Each core increases damage dealt by 10%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_50.png',
          },
          {
            'name': 'Terrifying Hammer',
            'description':
                'Each successful hit increases damage dealt by 10% up to  a maximum of 60%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_58.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Bestial Eyes',
            'description':
                'Reduces the charging time by 50% and increases the maximum level of the charge gauge. Overcharging increases damage dealt by 125%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_40.png',
          },
          {
            'name': 'Enraged Attack',
            'description':
                'Removes the ability to charge and instead performs stationary swings. The area of effect increases over the duration of the skill and damage dealt is increased by 25%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_7.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Earth Smasher',
    'class': 'Destroyer',
    'description':
        'Smashes the hammer to the ground,inflicting [ ] damage. It creates a rock on the landing location. You destroy the rock and particles from the rock scatter in a fan-shaped angle, dealing [ ] damage. Successful hits by the particles stun enemies for 3 seconds.',
    'type': 'Normal',
    'cooldown': 24,
    'iconUrl': 'assets/icons/destroyer/c00s12.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Critical Strength',
            'description':
                'Reduces attack speed by 10% but increases damage dealt by 20%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_0.png',
          },
          {
            'name': 'Iron Skin',
            'description':
                'Gain a 30% damage reduction bonus while you are performing the skill.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_25.png',
          },
          {
            'name': 'Absolute Strength',
            'description':
                'Increases the damage done by your opponent by 1% to 10%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_50.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Wide Strike',
            'description': 'Increases the attack radius by 15%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_7.png',
          },
          {
            'name': 'Superhuman Ability',
            'description':
                'Using the force of gravity, you can use another skill to undo it.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_41.png',
          },
          {
            'name': 'Basic Training',
            'description':
                'Enemies hit by rock fragments are stunned for 2 more seconds.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_43.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Explosive Smash',
            'description':
                'You make two rotations before sending your hammer to the rocks, which completely destroys them and makes the fragments fly 360 degrees. Increases the damage dealt by the shards by 50%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_30.png',
          },
          {
            'name': 'Strange Movement',
            'description':
                'You can change the direction of the skill. You then lift the hammer above your head and jump up to a distance of 6 meters.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_27.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'One Man Army',
    'class': 'Destroyer',
    'description':
        'Swing the hammer left and right. Each hit inflicts [ ] damage. Continual swings increase over the time and the last hit deals [ ] damage.',
    'type': 'Hold',
    'cooldown': 24,
    'iconUrl': 'assets/icons/destroyer/c00s13.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Quick Ready',
            'description': 'Decreases the skill cooldown by 3s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.png',
          },
          {
            'name': 'Swift Movement',
            'description': 'Increases attack speed by 10%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_6.png',
          },
          {
            'name': 'Improved Gravity',
            'description': 'Reduces mana cost by 50%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_34.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Well-maintained Hammer',
            'description':
                'The damage of the first and second hits are increased by 100%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_0.png',
          },
          {
            'name': 'Spot Weakness',
            'description':
                'Increases the damage dealt to targets with the Invulnerable status by 30%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_33.png',
          },
          {
            'name': 'Red Hammer',
            'description':
                'Each hit increases damage dealt by 10% up to a maximum total of 50%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_58.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Critical Hammer',
            'description':
                'You cannot change direction while performing the skill, but instead rapidly swing 5 time in front of you for 250% increased damage.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_40.png',
          },
          {
            'name': 'Superior Blow',
            'description':
                'Swings the hammer in a 360 degree arc for a maximum of 4.5 seconds. The swing deals 40% increased damage.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_39.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Perfect Swing',
    'class': 'Destroyer',
    'description':
        'Moves forward and tackles an enemy for [ ] damage, then hefts the hammer with two hands and smashes them for [ ]. You can charge the skill for 2 seconds. When fully charged, the skill moves 2m farther and the hammer strike deals [ ] damage.',
    'type': 'Charge',
    'cooldown': 30,
    'iconUrl': 'assets/icons/destroyer/c00s14.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Capture Weakness',
            'description': 'Increases the damage done to your enemies by 20%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_33.png',
          },
          {
            'name': 'Final Blow',
            'description':
                'When you hit a skill with an HP of 50% or less, your damage increases by 20%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_0.png',
          },
          {
            'name': 'Toughness',
            'description':
                'The caster becomes Invulnerable to crowd control effects while charging the skill.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_23.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Concussion',
            'description': 'Increases the incapacitate level by 1.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_69.png',
          },
          {
            'name': 'Sharpened Hammer',
            'description':
                'Successful hits with the hammer deal 40% more damage.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_63.png',
          },
          {
            'name': 'Unnecessary Waiting',
            'description': 'Reduces the time for charging the skill by 1s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_41.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Massacre',
            'description':
                'Immediately swings the hammer without charging it, creating a soundwave which damages the foe for 30% of the skill damage.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_53.png',
          },
          {
            'name': 'Intemperate',
            'description':
                'Reduces the charging time by 50% and increases the maximum level of the charge gauge. Overcharging increases damage dealt by 100%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_8.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Gravity Compression',
    'class': 'Destroyer',
    'description':
        'Thrusts the hilt of the hammer into the ground, creating a black hole that deals [ ] damage. You can infuse gravity energy into the black hole for 2 seconds, which then spreads in all directions, dealing [ ] damage. Releasing the hotkey explodes the black hole for [ ]. A completed infusion creates a larger black hole that deals [ ] damage.',
    'type': 'Hold',
    'cooldown': 24,
    'iconUrl': 'assets/icons/destroyer/c00s15.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Hard Heart',
            'description':
                'Reduces damage taken by 30% during casting and by 50% while loading the skill.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_25.png',
          },
          {
            'name': 'Reasonable Choice',
            'description':
                'Increases attack speed by 25% but increases the skill cooldown by 6s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_6.png',
          },
          {
            'name': 'Unbearable Strength',
            'description':
                'Unleashing 3 cores ignores 30% of all armor on any target.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_2.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Wide Strike',
            'description': 'Increases the area of effect by 20%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_7.png',
          },
          {
            'name': 'Strong Finish',
            'description':
                'The damage of the black hole’s explosion is increased by 50%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_0.png',
          },
          {
            'name': 'Absolute Power',
            'description': 'Each core increases damage dealt by 10%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_50.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Target Location',
            'description':
                'You target the location to create a magnetic field up to 10m from the current location. You can hold for 3s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_52.png',
          },
          {
            'name': 'Improved Magnetic Field',
            'description': 'Increases damage of the black hole by 150%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_1.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Seismic Hammer',
    'class': 'Destroyer',
    'description':
        'Hold the hammer upside down, then leap in the air and smashing the ground for [ ]. After the impact, the skill creates a 5m cone-shaped wall which deals [ ] damage.',
    'type': 'Normal',
    'cooldown': 30,
    'iconUrl': 'assets/icons/destroyer/c00s16.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Quick Preparation',
            'description': 'Reduces the cooldown by 4s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.png',
          },
          {
            'name': 'Toughness',
            'description':
                'The caster becomes Invulnerable to crowd control effects while performing the skill.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_23.png',
          },
          {
            'name': 'Absolute Force',
            'description':
                'Increases the damage done by your opponent by 1% to 10%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_50.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Unbearable Strength',
            'description':
                'Reduces all enemy armor by 60% for 4 seconds when attacking.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_46.png',
          },
          {
            'name': 'Concussion',
            'description':
                'Increases the level of the Incapacitate effect by 1.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_69.png',
          },
          {
            'name': 'Sharp Wall',
            'description':
                'Increases damage done to wall-targeted enemies by 60%. In addition, we adjusted it to hit the wall more easily than usual.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_50.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Power Hungry',
            'description':
                'The attack distance is reduced by 30%, but a circular shock wave extends to create a round wall, which increases wall damage by 60%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_0.png',
          },
          {
            'name': 'Improved Spot Weakness',
            'description':
                'Hit the hammer in place without jumping. It extends 2m further forward, creating walls that are larger in size and thickness, and increases wall damage by 40%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_52.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Heaven Cleaving Kick',
    'class': 'Battle Master',
    'description':
        'Strike forward. When pressed again, that deals additional damage and throws enemies into the air. You can change direction for the second attack.',
    'type': 'Combo',
    'cooldown': 8,
    'iconUrl': 'assets/icons/battlemaster/c03s00.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Movement Distance',
            'description': 'Movement distance can increases by 1m.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_10.png',
          },
          {
            'name': 'Winning Angle',
            'description':
                'Increases the distance at which enemies are thrown, but the cast time is longer.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_9.png',
          },
          {
            'name': 'Attack Speed',
            'description': 'Attack speed increases by 20%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_6.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Ice Strike',
            'description':
                '[Cold] When the attack hits 2 or more enemies freeze an enemy for 2s. Cooldown increased by 6s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_43.png',
          },
          {
            'name': 'Range',
            'description': 'Skill range increased by 20%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_7.png',
          },
          {
            'name': 'Ready to Attack',
            'description':
                'Increases attack power by 15% for 3 seconds if you hit 2 or more enemies.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_50.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Crushing Blade',
            'description':
                'The first hit becomes more violent. Damage to enemies increases by up to 175%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_8.png',
          },
          {
            'name': 'Concentration',
            'description': 'Increases the gain of the identity gauge by 200%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_36.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Thunder Kick',
    'class': 'Battle Master',
    'description':
        'Inflicts damage in two attacks on the enemy. The first attack causes it to fall, then the second attack hits it on the ground and inflicts additional damage to the targets in the air.',
    'type': 'Normal',
    'cooldown': 7,
    'iconUrl': 'assets/icons/battlemaster/c03s01.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Movement Distance',
            'description':
                'Using the skill, you can change direction and the movement distance is increased by 2 meters.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_10.png',
          },
          {
            'name': 'Transcendental',
            'description':
                'Increases the gain of the identity gauge by 30% by attacking.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_34.png',
          },
          {
            'name': 'Without Mercy',
            'description':
                'Increases damage by 30% against enemies that suffer from a control effect.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_69.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Lightning Strike',
            'description': 'Affected enemies receive 30% more damage.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_0.png',
          },
          {
            'name': 'Thunderbolt',
            'description':
                'When this skill deals damage to the enemy, the enemy suffers a 30% increase in damage.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_29.png',
          },
          {
            'name': 'Violent Flash',
            'description':
                'You get a 50% chance to electrify the enemy for 4 seconds.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_17.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Lightning',
            'description':
                'A quick-fire attack is added after 1 hit, increasing total damage by 60%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_40.png',
          },
          {
            'name': 'Thump',
            'description':
                'You can move in the direction of your cursor during the attack. Increases damage by 15%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_27.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Triple Punch',
    'class': 'Battle Master',
    'description': 'Makes 3 violent strikes, the 3rd deals more damage.',
    'type': 'Normal',
    'cooldown': 6,
    'iconUrl': 'assets/icons/battlemaster/c03s02.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Dark Attack',
            'description':
                'Changed: Changed to [Cancer] property, increasing the critical hit rate by 15%. A target that is hit by an attack will be in a dark state for 3 seconds.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_19.png',
          },
          {
            'name': 'Single Extortion',
            'description':
                'Increases the gain of the identity gauge by 100% if you only hit one enemy.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_34.png',
          },
          {
            'name': 'Flame Attack',
            'description': 'Increase the damage by 15%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_13.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Damage Reduction',
            'description':
                'Reduces damage to you by 40% while using the skill.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_25.png',
          },
          {
            'name': 'Resonance',
            'description': 'Increases damage by 15% each time you hit.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_58.png',
          },
          {
            'name': 'Without Mercy',
            'description':
                'Increases damage by 50% against enemies that suffer from a control effect.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_69.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Thunder',
            'description':
                'Movement distance increased by 2 m, attack speed increased by 20%. The damage done to the enemy by the last strike increases by 50%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_6.png',
          },
          {
            'name': 'Damage',
            'description':
                'The violent fists are changed to 5 manual attacks. Skill damage increased by 50%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_40.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Pummel',
    'class': 'Battle Master',
    'description':
        'Attack with a volley of 9 rounds that deal damage to enemies, the last move is more powerful.',
    'type': 'Normal',
    'cooldown': 14,
    'iconUrl': 'assets/icons/battlemaster/c03s03.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Holy Attack',
            'description': '[Holy] Increases attack speed by 20% for 3s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_18.png',
          },
          {
            'name': 'Dark Attack',
            'description':
                'Changed: Changed to [Cancer] property, increasing the critical hit rate by 15%. A target that is hit by an attack will be in a dark state for 3s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_19.png',
          },
          {
            'name': 'Wide Blow',
            'description': 'Attack Range increases by 30%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_7.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Master of Strike',
            'description':
                'Becomes a skill that can be channeled for 2.5 to inflict a myriad of blows on enemies. The damage is increased by 80%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_39.png',
          },
          {
            'name': 'Quick Blow',
            'description':
                'You hit the enemies with 4 powerful shots instead of 9, and the last shot projects them. Increases damage by 20%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_40.png',
          },
          {
            'name': 'Weak Catch',
            'description': 'Increases the damage done to your enemies by 60%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_33.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Quietens',
            'description':
                'The last move is transformed into uppercut, increasing the critical chance by 30% and the damage dealt to the enemy by 50%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_77.png',
          },
          {
            'name': 'Unbelievable',
            'description':
                'While using the skill, the character is immune to attacks and ignores 40% of the enemy\'s physical defense.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_50.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Crescent Kick',
    'class': 'Battle Master',
    'description':
        'You charge to the enemies by kicking. Then you launch a series of kicks that hit enemies 4 times.',
    'type': 'Combo',
    'cooldown': 18,
    'iconUrl': 'assets/icons/battlemaster/c03s04.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Termal Fiber Angle',
            'description':
                '[Fire] If you start the sequence of 4 kicks, inflict a burn for 5 seconds.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_13.png',
          },
          {
            'name': 'Violent Flash',
            'description':
                '[Lightning] You can move during the chaining. In addition, the first shot repels enemies further and they suffer lightning damage for 4s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_17.png',
          },
          {
            'name': 'Incandescent Angle',
            'description': 'Increases the gain of the Identity Meter by 50%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_34.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Movement Distance',
            'description':
                'The movement distance of the first shot is increased by 3 meters. Cooldown is reduced by 3 seconds.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_10.png',
          },
          {
            'name': 'Diagonal Angle',
            'description':
                'Increases the range by 30% and the number of kicks in the chain by 100%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_7.png',
          },
          {
            'name': 'Single Blow',
            'description': 'Increases damage by 50% against single targets.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_28.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Colorful Footstep',
            'description':
                'Competence becomes a channeled skill. You can not move and you are not kicking anymore. Instead, you make a series of quick kicks for 2 seconds just after charging.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_39.png',
          },
          {
            'name': 'Full Moon Angle',
            'description':
                'The preparation for the final blow is getting longer. Damage to enemies increased by 250%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_41.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Ground Pound',
    'class': 'Battle Master',
    'description':
        'You jump to create an earthquake that deals damage to enemies every second for 5 seconds.',
    'type': 'Normal',
    'cooldown': 16,
    'iconUrl': 'assets/icons/battlemaster/c03s05.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Vibration Strengthening',
            'description': 'First hit, it knockdown the enemy.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_77.png',
          },
          {
            'name': 'Strong Attack',
            'description':
                'Damage dealt to enemies who are knockdown is increased by 25%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_29.png',
          },
          {
            'name': 'Echo of the Earth',
            'description': 'Earthquake duration increased by 1s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_51.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Heavy Steel',
            'description':
                'Increases damage by 40% against normal or lower enemies.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_61.png',
          },
          {
            'name': 'Identified Weakness',
            'description':
                'Increases damage by 40% against enemies immune to control effects.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_33.png',
          },
          {
            'name': 'Firmness',
            'description':
                'The jump animation is removed, now the earth is punched by the character, which reduces the cast time.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_40.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Crustal Change',
            'description':
                'The number of earthquakes is reduced to 3. Last earthquake causes a larger explosion, knockdown. Damage increased by 300%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_22.png',
          },
          {
            'name': 'Great Earthquake',
            'description':
                'The attack range of the earthquake is increased by 30%. The time between earthquakes is reduced and the number of earthquakes is doubled.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_8.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Dragon Spiral Kick',
    'class': 'Battle Master',
    'description':
        'Charge to an enemy and attack You charge to enemies by attacking them on your way, dealing damage 5 times. Each shot throws enemies into the air and you can change direction between each.by dealing damage up to 5 times. If the enemy is hit in the air extra damage is applied.',
    'type': 'Combo',
    'cooldown': 16,
    'iconUrl': 'assets/icons/battlemaster/c03s06.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Attack Speed',
            'description': 'Increases attack speed and attack range by 10%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_6.png',
          },
          {
            'name': 'Wide Blow',
            'description': 'Attack Range increases by 20%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_7.png',
          },
          {
            'name': 'Critical Hit',
            'description': 'Increases Critical Hit Rate by 15%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_4.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Quick Preparation',
            'description': 'Cooldown reduced by 4s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_56.png',
          },
          {
            'name': 'Damage Increased',
            'description': 'Damage increased by 100%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_0.png',
          },
          {
            'name': 'AP buff',
            'description':
                'Increases attack power by 25% for 3 seconds when hit.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_50.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Fallen Leaves',
            'description':
                'Slide forward, and allow you to knockdown enemies by pressing the skill key again. You can use the windmill during sliding.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_77.png',
          },
          {
            'name': 'Order Ascension Angle',
            'description':
                '[Water] Increases damage by 50% and casts enemies into the air.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_9.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Whisper of the Wind',
    'class': 'Battle Master',
    'description':
        'Within the range of yourself and 24m, the party’s powers of wind increase the movement speed and attack speed by 11 to 16% and 5.5 to 8% for 6 sec.',
    'type': 'Normal',
    'cooldown': 30,
    'iconUrl': 'assets/icons/battlemaster/c03s07.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Blessing of the Wind',
            'description':
                'Your attack speed increases by 8% for 6 seconds when casting a skill.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_6.png',
          },
          {
            'name': 'Breeze',
            'description':
                'Your skill damage will be reduced by 25% for 6 seconds. The effect is lost when hit once.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_25.png',
          },
          {
            'name': 'Oath of Wind',
            'description':
                'Your critical strike rate increases by 10% for 6 seconds when casting a skill.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_49.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Reduction Damage',
            'description': '30% reduction in damage to party members for 6s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_25.png',
          },
          {
            'name': 'Quicker',
            'description': 'Cooldown reduced by 6s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_56.png',
          },
          {
            'name': 'Whisper of the Wind',
            'description':
                'The blessing of the wind, the blessing of the wind, and the effect of the wind swear increase by 100%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_51.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Ready to Attack',
            'description': 'Your attack power increases by 40% for 6s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_50.png',
          },
          {
            'name': 'Super-strong',
            'description':
                'Causes powerful damage, also repelling enemies. The damage dealt to the enemies will result in the filling of the identity meter. PVP: Reduced damaged done by 46.0%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_16.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Electric Wind Kick',
    'class': 'Battle Master',
    'description':
        'You jump on 16 meters to give an aerial kick. Enemies are struck up to 11 times and are severely repulsed. The movement of the skill is directed by the player\'s cursor.',
    'type': 'Normal',
    'cooldown': 20,
    'iconUrl': 'assets/icons/battlemaster/c03s08.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Critical Hit',
            'description': '[Lightning] Increases Critical Hit Rate by 15%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_17.png',
          },
          {
            'name': 'Hydropower',
            'description':
                'Reduces enemy attack speed by 20% and movement speed by 40% for 4 seconds when attacking.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_14.png',
          },
          {
            'name': 'Burns',
            'description':
                '[Fire] The enemy burns for 5 seconds when hit by the attack.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_13.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Wide Blow',
            'description': 'Increases attack range by 20%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_7.png',
          },
          {
            'name': 'Quick Preparation',
            'description': 'Cooldown time decreases by 5s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_56.png',
          },
          {
            'name': 'Agile Judgment',
            'description': 'Attack speed increased by 20%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_6.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Wrath of Ange',
            'description':
                'Changes the skill in a rotating kick of 4 turns diagonally, with a final hit on the ground. Dealing 30% more damage to enemies.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_8.png',
          },
          {
            'name': 'Extreme Water Lily',
            'description':
                'Increases the spinning kick time by 1 second, facilitates redirection, and increases the total damage done by enemies by 100%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_58.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Phoenix Dive',
    'class': 'Battle Master',
    'description':
        'You jump very high in the air, before falling heavily on the ground at a maximum distance of 5 meters. You deal damage as you approach the ground and then do more damage at the end of your fall.',
    'type': 'Point',
    'cooldown': 18,
    'iconUrl': 'assets/icons/battlemaster/c03s09.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Wide Blow',
            'description': 'Attack Range increases by 20%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_7.png',
          },
          {
            'name': 'Light Target',
            'description':
                'Targets that are stunned by this skill take 20% more damage.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_29.png',
          },
          {
            'name': 'Burns',
            'description':
                'The enemy burns for 5 seconds when hit by the attack',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_13.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Fierce Attack',
            'description':
                'When you fall back and hit the ground, an explosion occurs, causing 25% more damage to enemies.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_0.png',
          },
          {
            'name': 'Weak Point',
            'description':
                'Increases damage dealt to enemies immune to controls by 40%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_33.png',
          },
          {
            'name': 'Frozen',
            'description': 'When attacking, the enemy is frozen for 2s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_43.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Unstoppable Surprise',
            'description':
                'You can start the skill a second time by pressing the skill key again. Cooldown increased by 6s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_38.png',
          },
          {
            'name': 'Attack Speed',
            'description':
                'Attack speed increased by 20%. Movement distance increased by 5 m.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_6.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Roar of Valor',
    'class': 'Battle Master',
    'description':
        'Shoots a momentary spell to inflict damage and expels nearby enemies. Reduces critical strike resistance by 20% for 6s.',
    'type': 'Normal',
    'cooldown': 25,
    'iconUrl': 'assets/icons/battlemaster/c03s10.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Mind Enhancement',
            'description': 'Decrease MP consumption by 50%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_34.png',
          },
          {
            'name': 'Wide Blow',
            'description': 'Attack Range increases by 20%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_7.png',
          },
          {
            'name': 'Concentration',
            'description':
                'Increases the gain of the identity gauge by 25% by attacking.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_34.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Rapid Preparation',
            'description': 'Cooldown reduced by 5s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_56.png',
          },
          {
            'name': 'Mobility Weakness',
            'description':
                'Reduces enemy movement speed by 60% for 4 seconds when attacking.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_47.png',
          },
          {
            'name': 'Afterimage of the King',
            'description':
                'Increases the duration of the Roar of Valor effect by 2s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_46.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Deadly Wave',
            'description':
                'When attacking, the enemy’s critical resistance decreases by 20%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_45.png',
          },
          {
            'name': 'Impact Enhanced',
            'description':
                'The skill casting method is changed to charge, and the damage done to the enemy by charge is increased by 250%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_39.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Room Fire',
    'class': 'Battle Master',
    'description':
        'You kick that deals damage and sends enemies through the air. The player jumps quickly and then hitting twice more, inflicting additional damage on projected enemies. The direction can be changed between strikes.',
    'type': 'Combo',
    'cooldown': 25,
    'iconUrl': 'assets/icons/battlemaster/c03s11.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Concentration',
            'description':
                'Increases the gain of the identity gauge by 25% by attacking.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_37.png',
          },
          {
            'name': 'Weak Point',
            'description':
                'Increases the damage dealt to enemies immune to controls by 30%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_33.png',
          },
          {
            'name': 'Sharp Footwork',
            'description':
                'Hit the enemy without falling on it, reducing the time of the animation of the skill.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_60.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Attack Range',
            'description': 'Increases attack range and attack speed by 20%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_7.png',
          },
          {
            'name': 'Shadows of Darkness',
            'description':
                'Changed: Changed to [Cancer] property and increases the critical hit rate by 30%. The target hit in the last kick attack will be in darkness for 5s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_19.png',
          },
          {
            'name': 'Intense Lightning',
            'description':
                '[Lightning] Enemies hit by the last attack have a 50% chance of being electrified for 4s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_17.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Exceptiona',
            'description':
                'Reduces stance, pulls the toes, jumps forward, and blows one of the extreme bounces, giving 150% more damage to enemies and knocking them around. While collecting flags at the end of your foot, damage done by your attack increases by 30%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_39.png',
          },
          {
            'name': 'Exaggerated Ability',
            'description':
                'The movement of the kicker becomes concise, and the damage given to the attacking enemy increases by 80%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_40.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Internal Combustion',
    'class': 'Battle Master',
    'description':
        'The wind is around the player and instantly deals damage to nearby enemies. The wind holds for 20 seconds and deals damage to nearby enemies every 0.5 seconds while repelling them.',
    'type': 'Normal',
    'cooldown': 36,
    'iconUrl': 'assets/icons/battlemaster/c03s12.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Burning Armor',
            'description':
                'The damage received at the launch of the skill is reduced by 10%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_25.png',
          },
          {
            'name': 'Lightfoot',
            'description':
                'Increases movement speed by 30% for 3s while launching the skill.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_11.png',
          },
          {
            'name': 'Deadly Acting',
            'description':
                'Increases the gain of the Identity Meter by 50% by attacking.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_34.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Road of Commitment',
            'description': 'The duration increases by 8s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_51.png',
          },
          {
            'name': 'Technology Loss',
            'description':
                'Reduces the cooldown by 15s, but also decreases the duration by 4s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_56.png',
          },
          {
            'name': 'Fierce Battle',
            'description':
                'Increases damage by 5% for 2s, cumulative up to 10 times.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_0.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Attack Range',
            'description':
                'Increases attack range by 20%. Increases critical damage by 50%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_7.png',
          },
          {
            'name': 'Explosion in the Air',
            'description':
                'When a gust of wind blows, it causes an explosion, inflicting 50% of basic skill damage and detonating the enemy.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_53.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Art: Spiral Blast',
    'class': 'Battle Master',
    'description':
        'Cost 1 globe of identity. Performs a powerful, smashing attack that deals damage to enemies.',
    'type': 'Normal',
    'cooldown': 16,
    'iconUrl': 'assets/icons/battlemaster/c03s13.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Weak Point',
            'description':
                'Increases the damage dealt to enemies immune to controls by 30%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_33.png',
          },
          {
            'name': 'Attack Range',
            'description': 'Attack range increased by 20%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_7.png',
          },
          {
            'name': 'Absorption Blow',
            'description':
                'During the preparation of this attack, the player is immune to dizziness. A model is created that represents the negative and positive forces on the ground, the surrounding enemies are pulled into the attack.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_71.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Attack Speed',
            'description': 'Attack speed increased by 20%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_6.png',
          },
          {
            'name': 'Сollection',
            'description': '30% chance of acquire 1 globe of identity.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_36.png',
          },
          {
            'name': 'Dead Set',
            'description':
                'Increases attack power by 30% for 4 seconds when attacking.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_50.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Bastion of Destruction',
            'description': 'Increases damage by 80%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_0.png',
          },
          {
            'name': 'Meditation Strike',
            'description':
                'The skill no longer repels the enemy but stuns them for 5s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_44.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Art: Dragon Ascend',
    'class': 'Battle Master',
    'description':
        'Cost 2 globe of identity. Summons a circle of flames that deals damage by gathering enemies and then releases spiraling Dragon\'s energy upwards to hit enemies 5 times.',
    'type': 'Normal',
    'cooldown': 24,
    'iconUrl': 'assets/icons/battlemaster/c03s14.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Attack Range',
            'description': 'Attack Range increases by 20%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_71.png',
          },
          {
            'name': 'Сollection',
            'description': '40% chance of acquire 1 globe of identity.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_36.png',
          },
          {
            'name': 'Strength',
            'description':
                'After your jump, you are becomes immune to attacks.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_23.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Concentrated Hit',
            'description': 'Increases damage by 30%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_0.png',
          },
          {
            'name': 'Ascension of the Black Dragon',
            'description': 'Increases critical damage by 100%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_19.png',
          },
          {
            'name': 'Finishing Attack',
            'description': 'Deals 80% more damage to enemies with <30% health.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_32.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Eye of the Storm',
            'description':
                'Now, the skill allows enemies to pulled up to 2.5 seconds. The skill begins when the skill key is released or the 2.5 seconds elapse. Increased damage to immune enemies by 50% against the pull effect.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_33.png',
          },
          {
            'name': 'Finishing Blow',
            'description':
                'The last attack will have a 100% chance of being a critical hit.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_5.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Art: Launching Punch',
    'class': 'Battle Master',
    'description':
        'Cost 1 globe of identity. Unleashes an aura of electricity that deals 3 damage to enemies. Enemies become stunned for 2s, and receive 20% more [Cold] damage while stunning.',
    'type': 'Normal',
    'cooldown': 16,
    'iconUrl': 'assets/icons/battlemaster/c03s15.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Critical Hit',
            'description': 'Increase critical hit rate by 15%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_4.png',
          },
          {
            'name': 'Сollection',
            'description': 'The attack lasts 4s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_17.png',
          },
          {
            'name': 'Attack Speed',
            'description': 'Increases attack speed by 30%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_7.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Lightning',
            'description':
                'The electric current goes in line and extends over 9 meters.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_87.png',
          },
          {
            'name': 'Firm Will',
            'description': 'Increases damage by 50%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_0.png',
          },
          {
            'name': 'Bend',
            'description': 'You charge 4 meters during the attack.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_40.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Electric Shock',
            'description':
                'After the attack, a cloud of electric current remains for 5 seconds. It deals damage to enemies.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_53.png',
          },
          {
            'name': 'Dangerous Deal',
            'description':
                'You consume 1 additional elemental bubble and the stunning effect is removed. However, the skill becomes a combo and its damage increases by 100%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_38.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Art: Tornado',
    'class': 'Battle Master',
    'description':
        'Cost 2 globe of identity. The player rises in the air and turns quickly to create a tornado. Each enemy caught in the whirlwind suffers damage with each hit. The skill can be held for 4 seconds while continuing to attract enemies. The movement of the skill is directed by the player\'s cursor.',
    'type': 'Hold 4 sec',
    'cooldown': 24,
    'iconUrl': 'assets/icons/battlemaster/c03s16.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Earth Storm',
            'description':
                '[Earth] Enemies are no longer attracted, but the damage increases by 30%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_15.png',
          },
          {
            'name': 'Cold Storm',
            'description':
                '[Cold] Enemies hit 5 times are frozen for 2 seconds. PVP: Will not cause stiffness.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_14.png',
          },
          {
            'name': 'Lightning Storm',
            'description':
                '[Lighting] Each hit in the tornado has a 30% chance to increase critical damage by 10%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_17.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Growing Attack',
            'description':
                'On each turn, the damage of the tornado increases by 5%, with a maximum of 60%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_58.png',
          },
          {
            'name': 'Wide Attack',
            'description': 'Increases the range by 30%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_7.png',
          },
          {
            'name': 'Add Rotation',
            'description':
                'Increases movement speed by 13% while casting and increases its duration by 1s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_11.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Summon Storm',
            'description':
                'Instead of turning you into a tornado, you summon one that blows slowly in all directions, and attracts the surrounding enemies. It remains 4s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_85.png',
          },
          {
            'name': 'Raging Storm',
            'description':
                'When the swirl ends, it dispels forcefully and deals 60% of the basic skill damage to the enemy.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_78.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Art: Exploding Quake',
    'class': 'Battle Master',
    'description':
        'Cost 2 globe of identity. Make a powerful punch that causes 3 ground explosions in its wake. Explosions advance forward and repel enemies on their way, causing damage',
    'type': 'Normal',
    'cooldown': 30,
    'iconUrl': 'assets/icons/battlemaster/c03s17.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Weak Point',
            'description':
                'Increases damage dealt to enemies immune to controls by 30%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_33.png',
          },
          {
            'name': 'The Last Blast',
            'description':
                'The damage caused by the third explosion is increased by 25%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_0.png',
          },
          {
            'name': 'Rough Explosion',
            'description':
                'Increases the attack power by 3% for 5 seconds for the number of enemies hit. It can be stacked up to 10 times.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_50.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Сollection',
            'description': '75% chance of acquire 1 globe of identity.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_36.png',
          },
          {
            'name': 'Frost Explosion',
            'description': 'Enemies are frozen for 4s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_14.png',
          },
          {
            'name': 'Flame Explosion',
            'description':
                '[Fire] Inflicts a burn for 5 seconds, which can accumulate up to 6 times.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_13.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Endless Destruction',
            'description':
                'The blast spreads in three directions. Damage increased by 30%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_54.png',
          },
          {
            'name': 'Big Explosion',
            'description':
                'After the third explosion, the player jumps once more, causing a massive explosion. Damage increased by 60%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_53.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Advancing Strike',
    'class': 'Infighter',
    'description':
        'Charge foward, deal 31 damage (max 3 times) on contact while charging, then land a ground slam for 40 damage.',
    'type': 'Normal',
    'cooldown': 5,
    'iconUrl': 'assets/icons/infighter/c04s00.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Focus',
            'description': 'Shock gauge generation increased by 10.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_36.png',
          },
          {
            'name': 'Excellent Mobility',
            'description': 'The charge distance increased by 3 meters.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_10.png',
          },
          {
            'name': 'Ready to Attack',
            'description':
                'ATK increases by 10% for 3 seconds when hit in an aggressive attack.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_50.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Ruthless Advance',
            'description':
                'After ground slam, add an extra slam. Increase total damage by 30%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_39.png',
          },
          {
            'name': 'Strong Fist',
            'description':
                'The range of slam attack increases by 70% and pulls enemies to the slam location.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_71.png',
          },
          {
            'name': 'Destroyer',
            'description':
                'Increase damage by 15% and knock up enemies with the slam attack.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_0.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Ruthless Advance',
            'description': 'Damage increases by 50%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_5.png',
          },
          {
            'name': 'Shock Wave',
            'description':
                'Attack speed is increased by 20% and damage increases by 40% against enemies that are immune to CC.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_33.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Sundering Strike',
    'class': 'Infighter',
    'description': 'Punch 3 times, each dealing 52/52/70 damage.',
    'type': 'Combo',
    'cooldown': 8,
    'iconUrl': 'assets/icons/infighter/c04s01.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Internal Bleeding',
            'description': '50% chance to inflict Bleed for 3s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_45.png',
          },
          {
            'name': 'Wide Blow',
            'description': 'Increases attack range by 20%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_7.png',
          },
          {
            'name': 'Monster Shock',
            'description':
                'Damage to target and party members increases by 10% for 8s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_61.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Trifoliate',
            'description':
                'Damage of the first hit increases by 5% and every hit after that increases by 10%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_58.png',
          },
          {
            'name': 'Identified Weakness',
            'description': 'Increases damage done to cc immune enemies by 50%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_33.png',
          },
          {
            'name': 'Focus',
            'description': 'Shock gauge generation increased by 15.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_36.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'One Punch Blow',
            'description':
                'After the third hit adds one more attack, the total damage increases by 50%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_38.png',
          },
          {
            'name': 'Transcendent',
            'description':
                'The last hit has it’s critical chance raised by 100%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_5.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Wild Tiger Strike',
    'class': 'Infighter',
    'description':
        'Attack two times rapidly dealing 34, 68 damage and knock up on the last hit.',
    'type': 'Normal',
    'cooldown': 8,
    'iconUrl': 'assets/icons/infighter/c04s02.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Wide Blow',
            'description': 'Attack Range increases by 20%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_7.png',
          },
          {
            'name': 'Amplification',
            'description':
                'Damage to target and party members increases by 10% for 8s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_2.png',
          },
          {
            'name': 'Abdominal Respiration',
            'description': 'Power gauge consumption reduced by 5.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_35.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Dig',
            'description': 'Moving foward while attack.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_10.png',
          },
          {
            'name': 'Identified Weakness',
            'description': 'Increases damage done to CC immune enemies by 50%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_33.png',
          },
          {
            'name': 'Concentration',
            'description': 'Shock gain increased by 15.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_36.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Coarse Division',
            'description':
                'On successful hit the attack strength increases by 10% for each enemy hit up to 50%, buff lasts 3 seconds.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_50.png',
          },
          {
            'name': 'Frantic Bombing',
            'description':
                'Add an additional attack after the second jab, and if hit on a single target, deal 40% extra damage.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_38.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Dragon\'s Descent',
    'class': 'Infighter',
    'description':
        'Cost 30 Ki, Regen 20 Shock. Jump to mouse location, dealing 300 damage and knock enemies over.',
    'type': 'Point',
    'cooldown': 16,
    'iconUrl': 'assets/icons/infighter/c04s03.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Excellent Mobility',
            'description': 'Travel distance increased by 2 meters.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_10.png',
          },
          {
            'name': 'Abdominal Respiration',
            'description': 'Ki gauge consumption reduced by 5.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_35.png',
          },
          {
            'name': 'Momentary Burst',
            'description':
                'Increases Ki gauge consumption by 10 but increases damage by 30%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_2.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Wide Blow',
            'description': 'Increases AoE by 30%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_7.png',
          },
          {
            'name': 'Incarnation',
            'description':
                'After landing, you cover yourself in a fire aura for 6s, dealing continuous damage to nearby enemies.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_13.png',
          },
          {
            'name': 'Strength',
            'description': 'Immune to one attack while cast.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_23.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Destruction',
            'description': 'Increases damage to single targets by 60%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_28.png',
          },
          {
            'name': 'Black Dragon\'s Fall',
            'description': 'Increases damage by 40%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_19.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Instant Strike',
    'class': 'Infighter',
    'description':
        'Cost 30 Ki, Regen 15 Shock. Instantly strike for 137 damage and stun target for 3 sec.',
    'type': 'Normal',
    'cooldown': 20,
    'iconUrl': 'assets/icons/infighter/c04s04.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Wide Blow',
            'description': 'Attack Range increases by 20%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_7.png',
          },
          {
            'name': 'Abdominal Respiration',
            'description': 'Ki gauge consumption reduced by 5.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_35.png',
          },
          {
            'name': 'Concentration',
            'description': 'Shock gauge generation increased by 10.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_36.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Dangerous Contract',
            'description':
                'Decreases cooldown by 6s but reduces Stun duration by 1s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_56.png',
          },
          {
            'name': 'Accuracy',
            'description': 'Increases the Stun duration by 2s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_44.png',
          },
          {
            'name': 'Adverse Effect',
            'description':
                'The stun effect disappears and the damage done to the enemy is 300% increased.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_33.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Tracking Instinct',
            'description': 'Move and attack to the mouse position in 4m.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_10.png',
          },
          {
            'name': 'Last Stand',
            'description': 'Increase attack AoE by 350 degrees.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_40.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Earth Tremor',
    'class': 'Infighter',
    'description':
        'Cost 30 Ki, Regen 20 Shock. Shake the ground with your feet, dealing 256 damage to the nearby enemies and knock over',
    'type': 'Normal',
    'cooldown': 16,
    'iconUrl': 'assets/icons/infighter/c04s05.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Force of the Earth',
            'description':
                'Change element to Earth and removes super armor on successful hit from the enemies, an earthquake occurs at the bottom, reducing the enemy\'s move speed by 30% for 4s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_15.png',
          },
          {
            'name': 'Indomitable Strength',
            'description':
                'Change element to Fire, applies Burn effect for 3s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_13.png',
          },
          {
            'name': 'Shock Release',
            'description': 'Increase the duration of the knock up in 2 times.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_9.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Breakthrough',
            'description': 'Creates a wave for 7m in the direction of cursor.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_39.png',
          },
          {
            'name': 'Surprise Attack',
            'description':
                'Strike very hard in one hit, damage to enemy is increased by 50%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_40.png',
          },
          {
            'name': 'Strong Case',
            'description':
                'Changes to combo skill, the damage to the enemy increases by 40% by pressing on the left foot 2 times fast and then strong on the right foot.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_38.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Empowered Earthquake',
            'description':
                'After a short delay another hit occurs at the the same place, the total damage increases by 60%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_78.png',
          },
          {
            'name': 'Giant’s Advance',
            'description': 'Attack range increased by 30%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_7.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Fury Strike',
    'class': 'Infighter',
    'description':
        'Cost 15 Ki, Regen 20 Shock. Hold a button to deal 24 damage witch each hit and then move forward for 2 m with a kick to deal 142 damage.',
    'type': 'Hold 1 sec',
    'cooldown': 16,
    'iconUrl': 'assets/icons/infighter/c04s06.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Crackshot',
            'description': 'Increases damage of the last attack by 50%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_18.png',
          },
          {
            'name': 'Righteous Plunder',
            'description':
                'As you jab, there’s a 50% chance to apply Bleed for 5s, this can stack up to 3 times.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_45.png',
          },
          {
            'name': 'Excellent Mobility',
            'description': 'Travel distance increased by 2m.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_10.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Formidable Will',
            'description':
                'The duration of a quick punch increases by up to 0.3s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_42.png',
          },
          {
            'name': 'Red Explosion',
            'description':
                'Increases damage by 100% against CC immune enemies.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_33.png',
          },
          {
            'name': 'Single Blow',
            'description':
                'Increases fast jabs damage to single targets by 60%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_28.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Widespread',
            'description':
                'The fast jabs turn into two spurts of furious flurries and the damage increases by 100%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_50.png',
          },
          {
            'name': 'Reverse Rotation Blow',
            'description':
                'After the final hit, adds one more attack in front.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_77.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Push Through',
    'class': 'Infighter',
    'description':
        'Cost 25 Ki, Regen 20 Shock. Makes stream of punches in a cursor direction, each hit do 65 damage, applies buff with each successfull hit on 1s which decreases incoming damage for 5%, stacks up to 10 stacks, direction can be changed while holding the skill.',
    'type': 'Hold 1 sec',
    'cooldown': 24,
    'iconUrl': 'assets/icons/infighter/c04s07.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Critical Hit',
            'description': 'Increases critical hit rate by 15%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_4.png',
          },
          {
            'name': 'Solid Armor',
            'description':
                'Incoming damage received reduced by 20% during cast.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_25.png',
          },
          {
            'name': 'Quick Charge',
            'description':
                'Every time this attack successfully lands, generates 1 additional Shock.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_36.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Anger',
            'description':
                'If your health falls under 50%, increases damage dealt by 50%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_32.png',
          },
          {
            'name': 'Momentary Burst',
            'description':
                'Increases Power gauge consumption by 5 but increases damage by 30%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_0.png',
          },
          {
            'name': 'Piercing Strike',
            'description': 'Attack ignores 40 % of enemy’s physical defense.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_2.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Threshold of Death',
            'description':
                'Adds the perfect zone, when the perfect zone is successfull strike with additional hit to do 6 times more damage then ordinary punches.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_72.png',
          },
          {
            'name': 'Forward Advance',
            'description':
                'Increases attack speed by 20% and total charge time by 50% (2s).',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_6.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Triplex Punch',
    'class': 'Infighter',
    'description':
        'Cost 25 Ki, Regen 30 Shock. Perform 3 attacks dealing 73, 88, 132 damage and character is moved forward before the last hit.',
    'type': 'Combo',
    'cooldown': 16,
    'iconUrl': 'assets/icons/infighter/c04s08.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Enhanced Blow',
            'description':
                'Transforms the last attack into a strong smash which knocks down enemies.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_39.png',
          },
          {
            'name': 'Wave',
            'description':
                'The final strike fires a burst of energy 7 meter outwards.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_87.png',
          },
          {
            'name': 'Full Power',
            'description':
                'The last blow releases energy from the swinging arm and Increases damage by 30%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_0.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Concentration',
            'description': 'Shock gauge generation increased by 10.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_37.png',
          },
          {
            'name': 'Wide Blow',
            'description': 'Increases attack range by 20%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_7.png',
          },
          {
            'name': 'Quick Preparation',
            'description': 'Reduces the cooldown time by 4s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_56.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Reinforcement',
            'description':
                'Increases movement distance by 1 meter, attack speed by 20%, and damage by 150% when attacking CC immune enemy.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_10.png',
          },
          {
            'name': 'Enhanced Fist',
            'description':
                'Grants immunity to hit-effects while casting and increases the damage by 40%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_23.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Chains Of Resonsnce',
    'class': 'Infighter',
    'description':
        'Cost 20 Ki, Regen 10 Shock. Fire a shock wave to the front causing 94 damage and pull enemies dealing 120 damage.',
    'type': 'Normal',
    'cooldown': 15,
    'iconUrl': 'assets/icons/infighter/c04s09.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Quick Preparation',
            'description': 'Cooldown reduced by 2s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.png',
          },
          {
            'name': 'Concentration',
            'description': 'Increases Shock gauge generation by 5s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_36.png',
          },
          {
            'name': 'Quick Hand',
            'description': 'Attack speed increases by 10%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_41.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Enhanced Blow',
            'description':
                'Decreases Shock gauge generation by 10 but increases damage by 40%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_0.png',
          },
          {
            'name': 'Vigilance',
            'description':
                'Increases attack power by 5% for 3s. Can be stacked up to 10 times.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_50.png',
          },
          {
            'name': 'Piercing Strike',
            'description': 'Attack ignores 40% of enemy’s physical defense.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_2.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Oscillating Resonance',
            'description':
                'Chains project into a circular shape and pulls enemies towards the center.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_52.png',
          },
          {
            'name': 'Empowered Resonance',
            'description': 'Launches three chains that pull the enemy to you.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_71.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Judgement',
    'class': 'Infighter',
    'description':
        'Jump into the air and hit down, causing 148 damage and 29 more damage to fallen enemies.',
    'type': 'Combo',
    'cooldown': 6,
    'iconUrl': 'assets/icons/infighter/c04s10.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Abdominal Respiration',
            'description': 'Increases Critical Hit Rate by 15%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_4.png',
          },
          {
            'name': 'Quick Preparation',
            'description': 'Increases energy gain by 10.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_36.png',
          },
          {
            'name': 'Sleek Motion',
            'description':
                'Damage to target and party members increases by 10% for 8s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_41.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Strength',
            'description': 'Damage to knockdown enemies increases by 50%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_29.png',
          },
          {
            'name': 'Ignorant Blow',
            'description':
                'Can be cast a second time dealing 100% additional damage however increases cooldown by 8s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_40.png',
          },
          {
            'name': 'Neurology',
            'description':
                'Increase the total damage by 20% but the additional damage to fallen enemyes can\'t be applied.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_77.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'True Judgment',
            'description':
                'Changes the attack into two smaller attacks and increases total damage by 80%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_39.png',
          },
          {
            'name': 'Talon of the Falcon',
            'description':
                'Increases damage inflicted by 40%  and shock consumption decreases by 10%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_0.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Swallow',
    'class': 'Infighter',
    'description':
        'Release the shock wave in the cursor direction to cause 225 damage.',
    'type': 'Normal',
    'cooldown': 8,
    'iconUrl': 'assets/icons/infighter/c04s11.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Quick Preparation',
            'description': 'On a critical hit, 50% chance to reset the CD.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.png',
          },
          {
            'name': 'Single Blow',
            'description': 'Increases damage to single targets by 25%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_28.png',
          },
          {
            'name': 'Concentration',
            'description':
                'When a fist hit is hit, 50% chance to cause the enemy to bleed for 3 seconds.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_45.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Identified Weakness',
            'description':
                'Striking a fist results in a trajectory that is 30% longer than the basics, and increases the damage to the enemy by 30%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_88.png',
          },
          {
            'name': 'Lucky Blow',
            'description':
                'Immediately move 3 m forward rapidly in a forward direction, increasing the damage done to the enemy by 15%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_10.png',
          },
          {
            'name': 'Finishing Strike',
            'description': 'You can have 2 stacks of a skill.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_83.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Reinforced Blow',
            'description':
                'Huge fist appear attacking the enemy with a thrust increasing skill damage by 30%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_39.png',
          },
          {
            'name': 'Heavy Swing',
            'description':
                'Increases the attack wind-up for a heavier hit, increases total damage by 60%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_0.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Death Sentence',
    'class': 'Infighter',
    'description':
        'Release all Shock energy dealing 442 damages and blow away enemies, damage depends on the reduction of Shock energy, at 0 - 25% energy damage increases by 15%, at 26 - 50 % energy damage increases by 30 %, at 51 - 75% energy damage increases by 45 % and at 76 - 100% energy damage increases by 60%.',
    'type': 'Normal',
    'cooldown': 24,
    'iconUrl': 'assets/icons/infighter/c04s12.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Quick Preparation',
            'description': 'Cooldown reduced by 4s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.png',
          },
          {
            'name': 'Wide Blow',
            'description': 'Attack Range increases by 15%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_7.png',
          },
          {
            'name': 'Eye of the Heart',
            'description':
                'Increases attack speed by 15% but also increases cooldown by 2s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_6.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Strength',
            'description': 'Become immune to CC during skill casting.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_23.png',
          },
          {
            'name': 'Single Blow',
            'description': 'Increases damage to single targets by 40%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_28.png',
          },
          {
            'name': 'Finishing Strike',
            'description':
                'Increases damage by 50% to enemies below 50% of max HP.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_32.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Shock',
            'description':
                'Increases bonus damage by 20%, 40%, 60%, and 120% depending on the amount of impact gauges you have.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_50.png',
          },
          {
            'name': 'Mind Relaxation',
            'description': 'Consumes 50% of Shock gauge instead of all.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_37.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Decisive Attack',
    'class': 'Infighter',
    'description':
        'Gather the flags in the gontlette, and damage 113 by a powerful energy strike. It can be charged for continuous input of skill buttons. If it is overfilled, it can cause 168 damages and 393 damages due to secondary wave attacks.',
    'type': 'Charge',
    'cooldown': 20,
    'iconUrl': 'assets/icons/infighter/c04s13.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Quick Preparation',
            'description': 'Cooldown reduced by 4s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.png',
          },
          {
            'name': 'Suddenly Strike',
            'description': 'Critical hit rate increases by 15%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_4.png',
          },
          {
            'name': 'Concentration',
            'description': 'Shock gauge consumption reduced by 10.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_35.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Muscle Burst',
            'description': 'Second wave hit knocks enemy down.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_77.png',
          },
          {
            'name': 'Ligament Burst',
            'description': 'Second wave hit damage is increased by 50%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_0.png',
          },
          {
            'name': 'Focus Target',
            'description':
                'When a fist or a second wave attack is hit, the target will lose 20% of his or her damage to the party member for 6s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_69.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Mastery',
            'description':
                'Increases Shock gauge consumption by 10 but no longer needs to be charged.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_39.png',
          },
          {
            'name': 'Supersonic Shockwave',
            'description':
                'Increases Strength gauge generation by 15 and increases damage by 80% against enemies whose HP is below 40%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_50.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Reincarnation',
    'class': 'Infighter',
    'description':
        'It hits the ground strongly, causing earthquakes to inflict and blow a wide range of damage on enemies for a total of four times, 108, 146, 182, 290.',
    'type': 'Normal',
    'cooldown': 30,
    'iconUrl': 'assets/icons/infighter/c04s14.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Old Hand',
            'description':
                'The damage done while using the skill is reduced by 20%, the number of strikes hit on the ground increases, and the damage done to the enemy is increased by 25%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_39.png',
          },
          {
            'name': 'Arousal',
            'description': 'Strike fast 2 times and make final attack.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_41.png',
          },
          {
            'name': 'Wide Blow',
            'description':
                'The damage to the enemy is increased by 20% by rapidly charging the floor several times and taking the last blow. As you hit, the range of attacks increases slightly and restores two shocks of energy for each attack hit.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_40.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Armor Destruction',
            'description':
                'Every time you hit the ground except for the last blow, the energy is released and then washed back into the character, pulling the enemies together.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_71.png',
          },
          {
            'name': 'Strength',
            'description': 'Become immune to cc during skill casting.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_23.png',
          },
          {
            'name': 'Unbalanced',
            'description':
                '[Fire] If an attack is hit, it is damaged by burn. It can be supersioned up to 5 times.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_13.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Mega Explosion',
            'description':
                'The last attack has a slight delay (adds a jumping animation) and the damage of it is increased by 150%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_50.png',
          },
          {
            'name': 'Vital Impact',
            'description':
                'Each time you cut, the damage to the enemy increases by 10% as the pointed posts rise from the ground.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_85.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'True Art: Rising Dragon',
    'class': 'Infighter',
    'description':
        'Launch yourself into the air with first attack, causing 53 damage and proceed with downward strike in the cursor position dealing 210 damage on landing, first hit also launches enemies into the air.',
    'type': 'Combo',
    'cooldown': 24,
    'iconUrl': 'assets/icons/infighter/c04s15.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Technical Finesse',
            'description':
                'Adds an uppercut in the beginning of the attack, increasing total damage by 10%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_40.png',
          },
          {
            'name': 'Lightning Fist',
            'description':
                'The first attack has a 50% chance to inflict Shock on the enemy for 5s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_17.png',
          },
          {
            'name': 'Fist of Destruction',
            'description':
                'First hit gathers enemies up before floating them into the air.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_71.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Identified Weakness',
            'description': 'Increases damage done to CC immune enemies by 80%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_33.png',
          },
          {
            'name': 'Angry Strike',
            'description':
                'While your HP is 50% or lower, the critical damage of this skill increases by 150%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_4.png',
          },
          {
            'name': 'Midair Bombing',
            'description':
                'The upper cut pierces 60% of enemy’s physical defense.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_21.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Dragon\'s Rage',
            'description':
                'Increases attack radius by 30% and decreases incoming damage by 80%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_7.png',
          },
          {
            'name': 'Explosive Strike',
            'description':
                'The downward strike will always be a critical hit and the critical damage is increased by 30%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_49.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Crush',
    'class': 'Infighter',
    'description':
        'Staring forward, she instantly slips 3 meters in front of her arms for one second, causes 150 damages, and then throws a punch to 350 damages. Damage depends on the reduction of impact energy. Impact energy increases 15% to 25%, increases 30% to 26% to 50%, increases 45% to 51% to 75%, and increases to 76% to 100%, increases damage to 60%.',
    'type': 'Normal',
    'cooldown': 24,
    'iconUrl': 'assets/icons/infighter/c04s16.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Violent Fist',
            'description':
                'The attack when moving forward is turned to a multi-hit. The attack becomes an explosion and inflicts burning damage.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_13.png',
          },
          {
            'name': 'Rational Move',
            'description':
                'Movement distance is reduced by 3 meters but damage is increased by 30%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_7.png',
          },
          {
            'name': 'Unexpected Move',
            'description':
                'It will become possible to take over and take up to 2 stages. Depending on the level of charge, the distance to hit the fist increases by 1 meter.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_39.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Overflowing Force',
            'description':
                'Increases damage from Shock gauge consumption by 20%, 40%, 60% and 80%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_0.png',
          },
          {
            'name': 'Shock Control',
            'description': 'Damage increased by 30%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_50.png',
          },
          {
            'name': 'Patience',
            'description': 'Reduces incoming damage by 50% whille using skill.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_25.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Surprise Attack',
            'description':
                'Increases attack speed by 30% and Power gauge generated by 30.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_37.png',
          },
          {
            'name': 'Strength',
            'description': 'Become immune to CC during skill casting.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_23.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Supernova Explosion',
    'class': 'Infighter',
    'description':
        'Create a ball of energy dealing 66 damage, pull enemies to the ball dealing 66 damage and blow it up with a powerful finishing blow to cause 556 damage.',
    'type': 'Normal',
    'cooldown': 30,
    'iconUrl': 'assets/icons/infighter/c04s17.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Sleek Motion',
            'description': 'Attack speed increases by 10%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_41.png',
          },
          {
            'name': 'Justice Plunder',
            'description':
                'Reduces Shock gauge consumption by 30 but increases cooldown by 12s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_35.png',
          },
          {
            'name': 'Quick Preparation',
            'description': 'Cooldown reduced by 5s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Piercing Strike',
            'description': 'Attack ignores 30% of enemy’s defense.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_2.png',
          },
          {
            'name': 'Angry Explosion',
            'description':
                'The attack that pulls enemies is removed and the explosion happens instantly instead.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_41.png',
          },
          {
            'name': 'Wide Blow',
            'description': 'Attack Range increases by 20%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_7.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Pride of Fighters',
            'description':
                'Make 4 additional punches to increase damage by 20% and scope of explosion by 20%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_8.png',
          },
          {
            'name': 'Unyielding Blow',
            'description': 'Increases damage by 50%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_50.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Force Bullet',
    'class': 'Soul Master',
    'description': 'Fires three condensed energy blasts in succession.',
    'type': 'Normal',
    'cooldown': 8,
    'iconUrl': 'assets/icons/soulmaster/c05s00.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Penetrative Force',
            'description':
                'Increases the airborne consumption by 20% and attack rate by 20%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_11.png',
          },
          {
            'name': 'Ranged Attack',
            'description': 'Increases the skill range by 4 meters.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_52.png',
          },
          {
            'name': 'Mobility Weakness',
            'description':
                'Skill hits the enemy\'s movement speed by 5% for 5 seconds and up to 6 stacks.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_47.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Penetrating Pain',
            'description':
                'Gives a 20% additional damage to your opponent in the form of a 4-meter fan-shaped strike against your hit position.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_53.png',
          },
          {
            'name': 'Over Supply',
            'description':
                ' As the number of shots fired increases, the damage done to one enemy per shot increases by 15%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_58.png',
          },
          {
            'name': 'Shaft',
            'description':
                ' The longer the distance of the shot, the greater the damage done to the enemy by up to 80%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_82.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Trance',
            'description':
                'Allows the caster to fire six energy blasts by holding the skill. Increases damage done by enemies by 100%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_42.png',
          },
          {
            'name': 'Precision Strike',
            'description':
                ' Increases the skill range by 30% and reduces cooldown by 5s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_62.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Destruction Force',
    'class': 'Soul Master',
    'description':
        'Rushes 4m in front you and damages the enemy. Summons a destructive force to the caster’s hand, then detonates it, dealing damage to the enemy twice. Performs a final blow which deals damage. The final blow deals 100% increased damage to the enemies in the air.',
    'type': 'Normal',
    'cooldown': 9,
    'iconUrl': 'assets/icons/soulmaster/c05s01.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Improved Endurance',
            'description': 'Reduces force consumption by 20%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_35.png',
          },
          {
            'name': 'Superior Mobility',
            'description': 'Increases the movement distance by 2 meters.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_10.png',
          },
          {
            'name': 'Dexterous',
            'description': 'Increases attack speed by 10%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_6.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Strengthens',
            'description':
                'When you hit an attack that attacks with your hand, you and your party members within a 24m radius increase attack strength by 15% for 8s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_65.png',
          },
          {
            'name': 'Ready to Attack',
            'description':
                'If an attack that attacks with a palm is successful, the attack power increases by 25% for 4s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_50.png',
          },
          {
            'name': 'Drillmaster',
            'description': 'Increases the area of effect by 30%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_7.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Force Master',
            'description':
                'The last hit fires the force energy forward. The force energy deals 40% increased damage.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_38.png',
          },
          {
            'name': 'Unavoidable Strike',
            'description': 'The force energy pulls the enemies.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_71.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Poison Strike',
    'class': 'Soul Master',
    'description':
        'Strikes the enemy three times and pulls the enemy toward you. The inflicted enemy has a 30% chance to expose to poison for 3 seconds.',
    'type': 'Normal',
    'cooldown': 8,
    'iconUrl': 'assets/icons/soulmaster/c05s02.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Improved Recharging',
            'description':
                'For each enemy stuck by the last hit, the skill cooldown is reduced by 0.5 seconds, up to maximum total of 4 seconds.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.png',
          },
          {
            'name': 'Improved Strike',
            'description':
                'Increases damage dealt by 30%, but increases force cost by 20%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_80.png',
          },
          {
            'name': 'Improved Endurance',
            'description': 'Reduces force consumption by 20%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_35.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Successful Transition',
            'description':
                'Increases the area of effect by 30%. Deals 30% more damage to any target with the vulnerable status.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_7.png',
          },
          {
            'name': 'Penetrating Strike',
            'description': 'The skill ignores 40% of the enemies all defense.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_2.png',
          },
          {
            'name': 'Skilled Movement',
            'description':
                'After the last hit, the caster performs a 4m backstep.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_39.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Trusted Strike',
            'description':
                'The skill knocks the enemy down instead of pulling them.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_77.png',
          },
          {
            'name': 'Channeled Strike',
            'description':
                'Absorbs additional power. The damage dealt is increased by 40% and the inflicted enemy is exposed to a stronger poison.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_40.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Spin Kick',
    'class': 'Soul Master',
    'description':
        'Step forward then performs a low kick that knocks the target down deals (82) damage. Then, tackle them, knocking them backwards inflict (124) damage.',
    'type': 'Normal',
    'cooldown': 12,
    'iconUrl': 'assets/icons/soulmaster/c05s03.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Push',
            'description':
                'The enemy\'s distance is increased when the enemy hits.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_60.png',
          },
          {
            'name': 'Improved Speed',
            'description':
                'Increases attack speed by 15% but the mana cost is increased by 20%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_80.png',
          },
          {
            'name': 'Improved Mobility',
            'description': 'Increases the movement distance by 1m.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_10.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Strengthens',
            'description':
                'During your last hit, you and your party members within a 24m radius increase attack strength by 15% for 10s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_65.png',
          },
          {
            'name': 'Vulnerable Target',
            'description':
                'Deals 30% more damage to any target with the vulnerable status.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_29.png',
          },
          {
            'name': 'Changed Circumstance',
            'description':
                'Deals 50% more damage on any target with the incapacitate status.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_69.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Strong Shoulder',
            'description':
                'Instead of kicking, rush 2m forward and tackle the enemy.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_77.png',
          },
          {
            'name': 'Aggressive Attack',
            'description':
                'All the hits stiffen the enemy and reduce travel distance on the second hit. After 2 hit, hit the opposite side of the body more strongly, striking an enemy for 3 seconds when attacking, increases the damage done to enemies by 80%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_40.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Implosion',
    'class': 'Soul Master',
    'description':
        'Jump 3m forward and strike the enemy three times. Infuse the ground with energy, pulling the target toward the caster. Afterwards, launch the enemy into the air. The caster can hold the skill during the infusion for 1 second.',
    'type': 'Hold',
    'cooldown': 14,
    'iconUrl': 'assets/icons/soulmaster/c05s04.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Defensive Preparation',
            'description': 'Takes 20% less damage while performing the skill.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_25.png',
          },
          {
            'name': 'Improved Recharging',
            'description':
                'For each enemy inflicted by the last hit, reduces the skill cooldown by 0.5 seconds up to a maximum total of 4 seconds.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.png',
          },
          {
            'name': 'Superior Control',
            'description':
                'For each enemy inflicted by the last hit, recharges the force by 30 up to a maximum total of 150.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_36.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Strength',
            'description':
                'The caster becomes Invulnerable to crowd control effects while performing the skill.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_23.png',
          },
          {
            'name': 'Dexterous',
            'description': 'The infusion increases attack speed by 30%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_41.png',
          },
          {
            'name': 'Changed Circumstance',
            'description':
                'Deals 50% more damage to any target with the incapacitate status.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_69.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Brave Ember',
            'description':
                'Burn the enemy when pulling them toward you. If the enemy has 3 stacks of the burning debuff, they suffer serious burn damage. Following the infusion, detonate the energy, delaing 50% increased damage.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_13.png',
          },
          {
            'name': 'Unforgiven Chill',
            'description': 'The pulling freezes the enemy for 2s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_14.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Energy Strike',
    'class': 'Soul Master',
    'description':
        'Fires eight successive energy attacks from your fingertip while backstepping 2m. The skill deals 30% more to airborne enemies.',
    'type': 'Normal',
    'cooldown': 16,
    'iconUrl': 'assets/icons/soulmaster/c05s05.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Quick Response',
            'description': 'Decreases the skill cooldown by 2s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.png',
          },
          {
            'name': 'Drillmaster',
            'description': 'Increases the area of effect by 20%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_7.png',
          },
          {
            'name': 'Quick Response',
            'description': 'Increases attack speed by 15%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_6.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Reduced Mobility',
            'description':
                'Successful hits reduce the enemy’s movement speed by 30% for 8s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_47.png',
          },
          {
            'name': 'Heat',
            'description': 'Successful hits burn the enemy for 7s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_13.png',
          },
          {
            'name': 'Vulnerable Strike',
            'description': 'Deals 50% more damage to any target in the air.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_29.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Strong Will',
            'description': 'Fire a single attack instead of eight.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_87.png',
          },
          {
            'name': 'Rapid Strike',
            'description':
                'Rapidly fire your attacks, dealing 50% increased damage.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_54.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Thunderbolt Strike',
    'class': 'Soul Master',
    'description':
        'Stretches forth both hands and unleashes a blast of energy, dealing [ ] damage. The skill knocks airborne enemies backwards.',
    'type': 'Normal',
    'cooldown': 16,
    'iconUrl': 'assets/icons/soulmaster/c05s06.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Justice Strike',
            'description':
                'Increases the attack strength by 4% for 3 sec. It can be stacked up to 5 times.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_50.png',
          },
          {
            'name': 'Improved Endurance',
            'description': 'Reduces force consumption by 20%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_35.png',
          },
          {
            'name': 'Improved Penetration',
            'description': 'Adds penetration level by 1.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_21.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Drillmaster',
            'description': 'Increases the area of effect by 30%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_7.png',
          },
          {
            'name': 'Icy Fist',
            'description':
                'Increases the skill cooldown by 6 seconds. The last hit freezes the enemy for 2 seconds.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_14.png',
          },
          {
            'name': 'Heat',
            'description':
                'The last hit knocks the enemy down and burns them for 5s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_13.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Raging Wave',
            'description':
                'Changes the skill into a multi-strike attack, dealing 20% increased damage under the faster skill animation.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_41.png',
          },
          {
            'name': 'Cruel Grip',
            'description':
                'Increases the damage dealt by 150% to enemies in melee range.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_0.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Palm of Ru Lai',
    'class': 'Soul Master',
    'description':
        'Summons the Palm of Ru Lai to the target location. Knockdowned enemies and airborne enemies take 30% increased damage.',
    'type': 'Point',
    'cooldown': 20,
    'iconUrl': 'assets/icons/soulmaster/c05s07.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Improved Strike',
            'description':
                'Increases damage dealt by 30%, but increases force cost by 20%',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_80.png',
          },
          {
            'name': 'Quick Response',
            'description': 'Decreases the skill cooldown by 3s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.png',
          },
          {
            'name': 'Insight',
            'description': 'Increases the skill range by 3m.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_52.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Cold Attack',
            'description': 'Freeze the enemy for 2s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_14.png',
          },
          {
            'name': 'Tough Training',
            'description':
                'Faster attack, stiffen enemies without knocking them down.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_40.png',
          },
          {
            'name': 'Heat',
            'description': 'Successful hits burn the enemy for 7s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_13.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Greatest Revenge',
            'description':
                'Removes the Destruction property of the skill. Summons 4 small palms, dealing 120% increased total skill damage.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_54.png',
          },
          {
            'name': 'Ignorant Palm',
            'description':
                'It changes to tap skill. When using the skill, the palm moves forward 9m and affects the enemy.  Ignores 50% of all enemy armor when attacking.  Increases the attack distance by 3m when acquiring a ranged buff.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_81.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Dashing Strike',
    'class': 'Soul Master',
    'description':
        'Dashes to the target location and deals (53) damage to the enemy. Airborne enemies are knocked airborne again. The skill can be used two additional times. Each time the caster uses the skill, the skill cooldown increases by 4 seconds, and force cost increases double.',
    'type': 'Chain',
    'cooldown': 8,
    'iconUrl': 'assets/icons/soulmaster/c05s08.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Unstoppable Passion',
            'description': 'The next turn available time increases by 4s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_51.png',
          },
          {
            'name': 'Ready-to-Ready',
            'description':
                'The cooldown time is reduced by the number of turnovers. Reduces the cooldown time by 1 second when used. Reduces cooldown time by 2 seconds when using twice in a row. Reduces cooldown time by 4 seconds when using 3 consecutive times.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.png',
          },
          {
            'name': 'Superior Mobility',
            'description': 'Increases the movement distance by 2m.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_10.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Swift Step',
            'description':
                'Successful hits grant a 10% movement speed bonus for 3 seconds. The bonus can be stacked up to 3 times.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_48.png',
          },
          {
            'name': 'Prompt Defense',
            'description':
                'When using a skill, the damage you receive for 3 seconds is reduced by 30%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_25.png',
          },
          {
            'name': 'Cheers of Victory',
            'description':
                'Performing the skill grants a buff that increases attack power by 10%. The buff can be stacked 3 times.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_50.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Unstable Space-time',
            'description':
                'Increases the damage dealt by 50%. Each additional use of the skill deals double damage.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_0.png',
          },
          {
            'name': 'Fierce Movement',
            'description':
                'Reduces the force cost by 50% and each additional use of the skill reduces the force cost by 10%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_35.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Force Strike',
    'class': 'Soul Master',
    'description':
        'Lashes forward, sending a burst of energy outward. The caster recoils 3m backwards.',
    'type': 'Normal',
    'cooldown': 18,
    'iconUrl': 'assets/icons/soulmaster/c05s09.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Quick Response',
            'description': 'Decreases the skill cooldown by 2s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.png',
          },
          {
            'name': 'Improved Endurance',
            'description': 'Reduces force consumption by 20%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_35.png',
          },
          {
            'name': 'Dramatic Blow',
            'description': 'Increases the incapacitate level to [Medium].',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_69.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Heat',
            'description':
                'The last hit knocks the enemy down, and burns them for 7s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_13.png',
          },
          {
            'name': 'Instant Evasion',
            'description': 'The caster recoils 3m backwards.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_40.png',
          },
          {
            'name': 'Aggressive Attack',
            'description':
                'Take 20% more damage while performing the skill but deal 50% additional damage to any target with the Invulnerable status.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_33.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Exceptional Movement',
            'description':
                'After the backstep, fire an energy burst forward and evade when the skill is used again.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_87.png',
          },
          {
            'name': 'Space Adsorption',
            'description':
                'After collecting the energy, the energy sphere is blown forward.  The spheres are advanced by about 9m and are destroyed. Summons a black hole that attracts nearby enemies, increasing damage by 40%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_71.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Tempest Ray',
    'class': 'Soul Master',
    'description':
        'If you fire your fingers toward the front and then release your palm again, a thicker, more powerful weapon will be fired and you will have (340) damage.',
    'type': 'Normal',
    'cooldown': 20,
    'iconUrl': 'assets/icons/soulmaster/c05s10.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Recharge',
            'description':
                'Reduces the cooldown per hit by 0.5 seconds for a maximum of 5 seconds.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.png',
          },
          {
            'name': 'Instinctive Movement',
            'description':
                'If you fire your toward the front and then release again, stronger weapon will be fired, giving 391 damage.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_35.png',
          },
          {
            'name': 'Song of Time',
            'description':
                'Launches flashing light energy. Which stuns for 3s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_44.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Harsh Training',
            'description':
                'Preparatory time is accelerated and released more quickly.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_41.png',
          },
          {
            'name': 'Delete target',
            'description':
                'Attack width is reduced by 50%. The damage done to the enemy by charge is increased by 50%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_39.png',
          },
          {
            'name': 'Energy Explosion',
            'description':
                'Emits enormous energy with a 30% increase in attack width.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_62.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Exit Status',
            'description':
                'An additional explosion occurs immediately after the attack, and the damage it inflicts on the enemy increases by 50%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_78.png',
          },
          {
            'name': 'Explosive Attack',
            'description':
                'Increases the attack range by 4m and increases the damage done by the attacker by 100%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_52.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Lighting Force',
    'class': 'Soul Master',
    'description':
        'Slams the ground twice, then slams the ground again. Airborne enemies immediately fall when struck by the first and second hits, dealing 50% increased damage.',
    'type': 'Normal',
    'cooldown': 16,
    'iconUrl': 'assets/icons/soulmaster/c05s11.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Improved Endurance',
            'description': 'Reduces force consumption by 20%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_35.png',
          },
          {
            'name': 'Secret Attack',
            'description':
                'Increases damage by 20% when attacking an enemy with health below 50%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_32.png',
          },
          {
            'name': 'Fine Hitting',
            'description':
                'A successful last hit on a knockdowned enemy lifts them into the air.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_77.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Defenseless Target',
            'description': '100% additional damage to airborne enemies.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_29.png',
          },
          {
            'name': 'Spot Weakness',
            'description':
                'Increases the damage dealt to targets with the Invulnerable status by 30%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_33.png',
          },
          {
            'name': 'Concussion',
            'description': 'The Incapacitate stage 1 increases.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_69.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Six Sense',
            'description':
                'Increases attack speed by 20% and pulls the enemy toward the caster and Last Hit Damage increased by 100%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_71.png',
          },
          {
            'name': 'Slowed Movement',
            'description':
                'Attack range is increased by 20% and the other 3 on hit for 5 seconds enemy movement speed by 60% reduce.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_7.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Force Wave',
    'class': 'Soul Master',
    'description':
        'Instantly stretches your palms and launches powerful pore-guns. The pore shot spreads at a slow pace and stuns the enemy with (216) damage.',
    'type': 'Normal',
    'cooldown': 15,
    'iconUrl': 'assets/icons/soulmaster/c05s12.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Quick Response',
            'description': 'Decreases the skill cooldown by 2s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.png',
          },
          {
            'name': 'Improved Endurance',
            'description': 'Reduces force consumption by 20%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_35.png',
          },
          {
            'name': 'Improved Speed',
            'description':
                'Increases attack speed by 20% but the mana cost is increased by 20%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_11.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Growing Wave',
            'description':
                'Damage increases up to 60% when the force wave travels farther.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_53.png',
          },
          {
            'name': 'Reduced Mobility',
            'description':
                'Successful hits reduce the enemy’s movement speed by 30% for 8s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_47.png',
          },
          {
            'name': 'Raging Wave',
            'description': 'Increases damage dealt by 30%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_0.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Space Expansion',
            'description':
                'Releases the force wave three times but deals 30% less damage.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_54.png',
          },
          {
            'name': 'Space Contraction',
            'description':
                'The speed of the wave is increased by 50% and enemies are stiffened instead of knocked back. Additional skill use creates a strong wind that deals 100% increased damage.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_87.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Force Barrier',
    'class': 'Soul Master',
    'description':
        'Creates a force barrier around itself and makes the surrounding enemies slow. The force barrier deals damage and reduces enemies’ attack and movement speed by 10% for 0.5 seconds per stack of the debuff. The debuff can stack up to four times. The caster can maintain the barrier for 3 seconds by holding the skill.',
    'type': 'Hold',
    'cooldown': 24,
    'iconUrl': 'assets/icons/soulmaster/c05s13.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Defensive Preparation',
            'description': 'Takes 30% less damage while performing the skill.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_25.png',
          },
          {
            'name': 'Quick Response',
            'description': 'Decreases the skill cooldown by 3s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.png',
          },
          {
            'name': 'Improved Endurance',
            'description': 'Reduces force consumption by 20%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_35.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Toughness',
            'description':
                'The caster becomes Invulnerable to crowd control effects while performing the skill.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_23.png',
          },
          {
            'name': 'Spot Weakness',
            'description':
                'Increases the damage dealt to targets with the Invulnerable status by 50%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_33.png',
          },
          {
            'name': 'Overheated Force',
            'description':
                'Increase the force cost by 20% but deals 10% more damage per hit.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_80.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Desperate Attack',
            'description':
                'Holding the barrier for the full duration knocks enemies back and deals 40% more damage.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_77.png',
          },
          {
            'name': 'Incisive Decision',
            'description':
                'Holding the barrier for the full duration pulls enemies towards the caster, and deals 40% more damage.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_71.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Spiral Strikes',
    'class': 'Soul Master',
    'description':
        'Throws a jab in front of the caster, performs a spiral kick, and then fires a burst of force energy.',
    'type': 'Normal',
    'cooldown': 20,
    'iconUrl': 'assets/icons/soulmaster/c05s14.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Attack Enhance',
            'description':
                'Increases your armor consumption by 20% and increases your damage by 20%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_80.png',
          },
          {
            'name': 'Stealing',
            'description':
                'When attacking, the target\'s movement speed is reduced by 5% for 5 seconds, its movement speed is increased by 5%, and can be stacked up to 5 times.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_47.png',
          },
          {
            'name': 'Wide Blow',
            'description': 'Increases attack range by 30%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_7.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Sure Strike',
            'description':
                'Throw a roundhouse kick that lifts enemies into the air.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_39.png',
          },
          {
            'name': 'No Regrets Attack',
            'description':
                'Move forward 5 meters and deal 3 hits for 20% increased damage.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_40.png',
          },
          {
            'name': 'Sober Movement',
            'description':
                'The last hit after 2 more times, with a palm attack, and the enemies give a total damage increase of 50%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_8.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Transitional Burn',
            'description':
                'Change skill damage to fire. Target will burn for 7 seconds then spread it to nearby enemies. Target then will burn for additional 10 seconds.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_13.png',
          },
          {
            'name': 'Afterimage Attack',
            'description':
                'A shadow of yourself will deal additional hits increasing damage by 100%. Increase cooldown by 5s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_88.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Inferno Beam',
    'class': 'Soul Master',
    'description':
        'Strike with a combination of kicks and punches. Can change direction during skill animation.',
    'type': 'Hold',
    'cooldown': 30,
    'iconUrl': 'assets/icons/soulmaster/c05s15.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Improved Endurance',
            'description': 'Reduces force consumption by 20%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_35.png',
          },
          {
            'name': 'Concussion',
            'description': 'The skill’s disabling phase increases to [Up].',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_69.png',
          },
          {
            'name': 'Spot Weakness',
            'description':
                'Increases the damage dealt to targets with the Invulnerable status by 25%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_33.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Ranged Target',
            'description': 'Increases the skill range by 5m.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_52.png',
          },
          {
            'name': 'Changed Circumstance',
            'description':
                'Deals 50% more damage to any target with the Incapacitate status.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_69.png',
          },
          {
            'name': 'Toughness',
            'description':
                'The caster becomes Invulnerable to crowd control effects while performing the skill.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_23.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Bold Movement',
            'description':
                'Skips the skill preparation animation but prevents the caster from changing the attack direction. Increases attack speed by 30% and ignores 50% of the enemies’ armor.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_41.png',
          },
          {
            'name': 'Rapid Fire',
            'description':
                'Increases the damage dealt by 80% during the last second of the cast.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_53.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Force Unleashed',
    'class': 'Soul Master',
    'description':
        'You and your party within 24m will lose 12 to 25% damage for 6 seconds.',
    'type': 'Normal',
    'cooldown': 24,
    'iconUrl': 'assets/icons/soulmaster/c05s16.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Dexterous',
            'description': 'Increases attack speed by 20%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_6.png',
          },
          {
            'name': 'Quick Response',
            'description': 'Decreases the skill cooldown by 5s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.png',
          },
          {
            'name': 'Fortified Strong',
            'description':
                'You and your party members within a 24m radius increase attack strength by 15% for 16s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_65.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Tripod of Cleansing',
            'description':
                'Unlocks one of the harmful effects of yourself and party members within the 24m range.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_39.png',
          },
          {
            'name': 'Enhanced Wave',
            'description': 'All party members take 50% less damage for 6s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_24.png',
          },
          {
            'name': 'Toughness',
            'description':
                'The caster becomes Invulnerable to crowd control effects while performing the skill.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_23.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Ready to Attack',
            'description': 'Your attack power increases by 40% for 6s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_50.png',
          },
          {
            'name': 'Shout',
            'description': 'Performs a strong attack to the enemies within 4m.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_50.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Degeneration',
    'class': 'Lance Master',
    'description': 'Swinging a spear twice',
    'type': 'Normal',
    'cooldown': 6,
    'iconUrl': 'assets/icons/lancemaster/c12s00.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Flame Cutting',
            'description': '[Fire] Inflicts a burn for 5s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_13.png',
          },
          {
            'name': 'Ice',
            'description': 'Reduce the target 30% movement speed for 5 second.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_14.png',
          },
          {
            'name': 'Earth',
            'description':
                'Increase 20% more dmg for down enemy or enemy being stuck from the change of environment',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_15.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Airbound',
            'description': 'Increase damage and launch the enemy into the air.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_9.png',
          },
          {
            'name': 'Last Judgment',
            'description':
                'Consume 10% of the crescent blade (Identity) to boost 40% dmg, if your gauge less than 10% then it won’t apply.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_91.png',
          },
          {
            'name': 'Specialization',
            'description':
                'Increase dmg for single target 30% / +5% for more than 2 / +10% for more than 5 / +20% for more than 10 enemies.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_90.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Space Cutter',
            'description':
                'Increase 20% range of the skill + dealing 50% dmg for the last target it hit, the last hit will be 100% critical.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_88.png',
          },
          {
            'name': 'Trackpot',
            'description':
                'Increase 60% dmg but can’t move freely while using the skill, increase 100% effect for Flame / Ice / Earth effect from tripod 1 + Increase the Destructive level by 1 (Medium).',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_77.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Wind Hammer',
    'class': 'Lance Master',
    'description':
        'Swinging the spear in all directions and collects the enemy in front.',
    'type': 'Normal',
    'cooldown': 12,
    'iconUrl': 'assets/icons/lancemaster/c12s01.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Mana Control',
            'description': 'Mana consumption reduced by 50%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_34.png',
          },
          {
            'name': 'Concussion',
            'description': 'Increases the Incapacitate effect.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_69.png',
          },
          {
            'name': 'Bounding',
            'description': 'Reduces enemy movement speed by 50% for 2s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_47.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Specialization',
            'description':
                'Increase dmg for single target 30% / +5% for more than 2 / +10% for more than 5 / +20% for more than 10 enemies.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_90.png',
          },
          {
            'name': 'Rage',
            'description': 'Increase damage by 30% for bosses.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_33.png',
          },
          {
            'name': 'Last Judgment',
            'description':
                'Consume 10% of the crescent blade (Identity) to boost 40% dmg, if your gauge less than 10% then it won’t apply.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_91.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Face Me',
            'description':
                'Change the skill to 2 time step, dealing 100% damage.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_88.png',
          },
          {
            'name': 'Quick Access',
            'description':
                'Change the skill to a slam attack, dealing 50% dmg and 100% crit damage.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_77.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Heat',
    'class': 'Lance Master',
    'description':
        'Moves 4 meters forward, dealing 3 hits and throw opponents in the air.',
    'type': 'Normal',
    'cooldown': 10,
    'iconUrl': 'assets/icons/lancemaster/c12s02.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Quick Hand',
            'description': 'Attack speed increases by 15%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_41.png',
          },
          {
            'name': 'Quick Hit',
            'description': 'Increases Critical Hit Rate by 15%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_4.png',
          },
          {
            'name': 'Specialization',
            'description':
                'Increase dmg for single target 30% / +3% for more than 2 / +7% for more than 5 / +15% for more than 10 enemies.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_90.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Flame',
            'description':
                'Burn the target for 5 second, can stack up to 5 stack.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_13.png',
          },
          {
            'name': 'Ice',
            'description':
                'Reduce the target 10% movement speed for 5 second, when reaching 5 stack, the enemy will be stun for 3 second.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_14.png',
          },
          {
            'name': 'Enhanced Blow',
            'description': 'Damage increases by 25%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_0.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Spin',
            'description':
                'Increase the attack up to 2 time, increase the range for 2m but reduce the number of hit down to 3, increase the dmg up to 50%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_40.png',
          },
          {
            'name': 'Rotation',
            'description':
                'Increases the number of strikes by 7 and increases the damage done by the enemy by 80%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_39.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Spiral Tracker',
    'class': 'Devil Hunter',
    'description':
        'Launch a gun at the targeted location. It whirls and deals damage to all enemies in the area.',
    'type': 'Point',
    'cooldown': 8,
    'iconUrl': 'assets/icons/devilhunter/c06s00.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Range',
            'description': 'Increase the skill range by 2 meters.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_52.png',
          },
          {
            'name': 'Quick Release',
            'description':
                'When a target is attacked, the critical hit rate of the target and the party member increases by 15% for 6s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_49.png',
          },
          {
            'name': 'Quick Hand',
            'description': 'Attack speed increases by 20%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_41.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Swift Movement',
            'description': 'Increases movement speed by 20% for 3s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_48.png',
          },
          {
            'name': 'Growing Bullet',
            'description':
                'Each time your attack hits 3 times. Damage is increased by 10%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_58.png',
          },
          {
            'name': 'Concentrated Shot',
            'description':
                'Damage done to enemies in the center of the area is increased by 30%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_0.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Swirl',
            'description':
                'Creates a magnetic field and the attack range increases by 15%. Slowly draw the enemies into the center of the circle.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_71.png',
          },
          {
            'name': 'Continuous Use',
            'description': 'Can stack up to 2 times.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_83.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Execution',
    'class': 'Devil Hunter',
    'description':
        'Charge the enemy and launch into the air, and then you retreat to strafe him.',
    'type': 'Combo',
    'cooldown': 12,
    'iconUrl': 'assets/icons/devilhunter/c06s01.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Movement Distance',
            'description': 'Movement distance can increases by 1m.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_10.png',
          },
          {
            'name': 'Big Foot',
            'description':
                'Upper kick is changed to kick, attack rate is increased by 30%. Increase the height of the enemy in the air.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_7.png',
          },
          {
            'name': 'Sudden Strike',
            'description': 'Increases Critical Hit Rate of Upper Kick by 100%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_4.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Range',
            'description':
                'Increases the attack range by 30% when using a handgun.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_7.png',
          },
          {
            'name': 'Strength',
            'description': 'Become super armor during the cast a skill.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_23.png',
          },
          {
            'name': 'Fire',
            'description': 'Deals 40% more damage to enemies with >50% health.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_32.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Air Strike',
            'description':
                'Increases the critical hit rate of enemies in the air by 50% when you hit a hand.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_29.png',
          },
          {
            'name': 'Strafing indiscriminately',
            'description':
                'Increases the number of shots by 4. Damage increased by 15%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_8.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Plasma Bullet',
    'class': 'Devil Hunter',
    'description':
        'Shoot a slow plasma ball that deals damage to enemies in its path.',
    'type': 'Normal',
    'cooldown': 8,
    'iconUrl': 'assets/icons/devilhunter/c06s02.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Range',
            'description': 'Increase the skill range by 3m.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_52.png',
          },
          {
            'name': 'Attack Speed',
            'description': 'Increases attack speed by 20%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_6.png',
          },
          {
            'name': 'Retreat',
            'description': 'You retreat 1.5m after the shot.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_40.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Continuous Use',
            'description': 'Changes to stack skill, stack up to 2 times.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_83.png',
          },
          {
            'name': 'Icing Effect',
            'description': 'Reduces enemy movement speed by 40% for 2s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_47.png',
          },
          {
            'name': 'Shoot-out',
            'description': 'Critical hit rate increases by 30%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_4.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Supercharge Zone',
            'description':
                'Generates an overloaded area at the targeted location. In this area, damage is inflicted periodically.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_53.png',
          },
          {
            'name': 'Plasma Fragmentation',
            'description':
                'Launch three plasma bullets at once. The two bullets added have a 50% reduction in attack range. Reduced damage to enemies by 70%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_54.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Enhanced Bullet',
    'class': 'Blaster',
    'description': 'Fires the enhanced bullet.',
    'type': 'Normal',
    'cooldown': 5,
    'iconUrl': 'assets/icons/blaster/c07s00.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Armor Destroyed',
            'description': 'Reduces 20% of all enemy armor for 8s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_46.png',
          },
          {
            'name': 'Critical Hit',
            'description': 'Increases a critical hit chance by 15%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_4.png',
          },
          {
            'name': 'Push',
            'description': 'Increases the push distance by 1 meter.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_60.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Bullet Strengthening',
            'description': 'Damage to enemies increases by 25%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_0.png',
          },
          {
            'name': 'Natural Selection',
            'description':
                'Increases the damage dealt on lower grade and normal grade monsters by 40%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_61.png',
          },
          {
            'name': 'Attack Speed',
            'description': 'Increases attack speed by 20%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_6.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Penetration Shell',
            'description': 'The shell penetrates the enemy.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_2.png',
          },
          {
            'name': 'Ignition',
            'description': 'Successful hits burn the enemy for 3s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_13.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Aim and Fire',
    'class': 'Blaster',
    'description':
        'Deals [77] damage to the enemies and lowers movement speed by 60% for 4 seconds.',
    'type': 'Normal',
    'cooldown': 6,
    'iconUrl': 'assets/icons/blaster/c07s01.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Skill Range',
            'description': 'Increases the skill range by 2 meters.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_52.png',
          },
          {
            'name': 'Empowered Will',
            'description': 'Reduces mana consumption by 50%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_34.png',
          },
          {
            'name': 'Freezing',
            'description':
                'Enhances the movement speed debuff by 20% and deals 15% more damage to monsters above the seed grade.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_47.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Icy Shell',
            'description':
                'Increases the duration of chill effect by 2 seconds and the duration of freeze effect by 1 second.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_14.png',
          },
          {
            'name': 'Improved Shell',
            'description': 'Increases damage by 25%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_0.png',
          },
          {
            'name': 'Extensive Explosion',
            'description': 'Increases the area of effect by 20%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_7.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Chain Explosion',
            'description':
                'The shell penetrates through the enemy and explodes 3 times until it reaches the maximum range.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_53.png',
          },
          {
            'name': 'Icy Explosion',
            'description':
                'Successful hits freeze the enemy for 3 seconds but increases the skill cooldown by 4 seconds.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_43.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Gutling Gun',
    'class': 'Blaster',
    'description':
        'Fires the machine gun rapidly to the direction of your mouse cursor for 3 seconds, and deals up to [366] damage.',
    'type': 'Normal',
    'cooldown': 16,
    'iconUrl': 'assets/icons/blaster/c07s02.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Improved Shot',
            'description': 'Increases damage by 10%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_0.png',
          },
          {
            'name': 'Quick Response',
            'description': 'Decreases the skill cooldown by 3s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.png',
          },
          {
            'name': 'Final Blow',
            'description':
                'Deals 30% more damage to enemies that have less than 50% health.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_32.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Growing Bullet',
            'description': 'Every second hit increases damage dealt by 5%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_58.png',
          },
          {
            'name': 'Toughness',
            'description':
                'The caster becomes Invulnerable to crowd control effects while performing the skill.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_23.png',
          },
          {
            'name': 'Thick Armor',
            'description': 'Takes 50% less damage while performing the skill.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_25.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Will of Destroyer',
            'description':
                'The skill becomes a holding skill and the caster can shoot the machine gun for 4s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_42.png',
          },
          {
            'name': 'Aim and Fire',
            'description':
                'The skill has 50% decreased the area of effect but the skill range is increased by 50%. Also, it ignores the enemy’s armor by 60%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_7.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Rapid Shot',
    'class': 'Hawk Eye',
    'description': 'After aiming, you shoot 3 arrows.',
    'type': 'Normal',
    'cooldown': 5,
    'iconUrl': 'assets/icons/hawkeye/c08s00.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Damage Boost',
            'description':
                'Damage to target and party members increases by 10% for 8s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_2.png',
          },
          {
            'name': 'Horsepower Control',
            'description': 'Mana consumption is reduced by 50%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_34.png',
          },
          {
            'name': 'Tracking Fire',
            'description':
                'It automatically turns and fires to the nearest enemy within 90 degrees ahead.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_84.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Double Shot',
            'description': 'Damage done increased by 25%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_54.png',
          },
          {
            'name': 'Shock Shot',
            'description':
                'Attribute changes to [Lighting] property, and applies Shock for 3s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_17.png',
          },
          {
            'name': 'Light Footsteps',
            'description': 'Increases movement speed by 30% for 3s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_11.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Power shot',
            'description':
                'The last strike is changed to a powerful attack, which increases the critical hit rate by 100% and the width by 20%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_4.png',
          },
          {
            'name': 'Sustained Fire',
            'description': 'The number of arrow shoots increases from 3 to 5.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_8.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Atomic Arrow',
    'class': 'Hawk Eye',
    'description':
        'After aiming, you shoot an arrow that deals damage. It explodes 3 seconds later, inflicting further damage and knocking down enemies.',
    'type': 'Normal',
    'cooldown': 9,
    'iconUrl': 'assets/icons/hawkeye/c08s01.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Horsepower Control',
            'description': 'Mana consumption is reduced by 50%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_34.png',
          },
          {
            'name': 'Quick Hand',
            'description': 'Increases attack speed by 15%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_6.png',
          },
          {
            'name': 'Damage Boost',
            'description':
                'The damage a target receives on his or her party member during a blast attack increases by 10% for 8s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_2.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Heavy Bomb',
            'description':
                'Decrease enemy’s movement speed for 50% before explosion.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_47.png',
          },
          {
            'name': 'Flame Gunpowder',
            'description':
                'We burn for 6 seconds to the enemy hit by the explosion.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_13.png',
          },
          {
            'name': 'Arrowhead Enhancement',
            'description':
                'Increases the chance of a critical hit by 30%. Increases the duration of an electric shock by 50%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_4.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Light Arrow',
            'description':
                'It does not surpass an enemy hit by an explosion anymore, but the Atomic Arrow\'s flight speed is increased by 50% , the explosion time is shortened from 2 seconds to 1 second, and the explosion creates an electric shock for 2 seconds. When using a flame arrow, instead of burning, it takes 3 seconds of lightning, causing damage every second.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_17.png',
          },
          {
            'name': 'Long Fuse',
            'description':
                'The explosion time increases from 3 seconds to 5 seconds. Damage to enemies increases by 75%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_78.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Whirlwind Arrow',
    'class': 'Hawk Eye',
    'description':
        'You shoot a swirling arrow that deals damage along the way.',
    'type': 'Normal',
    'cooldown': 6,
    'iconUrl': 'assets/icons/hawkeye/c08s02.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Reinforced Arrow',
            'description': 'Increases the damage done by the arrows by 15%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_0.png',
          },
          {
            'name': 'Blizzard',
            'description':
                'Changed to [Frost] property and deals a frosty condition that slows the movement speed by 20% for 5 seconds to the affected enemy . Freeze the enemy when the frost condition is inflicted 3 times.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_14.png',
          },
          {
            'name': 'Hellfire',
            'description':
                'Changed to [Fire] property, and deals a flame condition that damages enemies for 5 seconds every second. When the flame condition is inflicted 3 times, the target detonates.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_13.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Slow Bullet',
            'description':
                'The speed of the whirlwind decreases, hitting the enemy more.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_51.png',
          },
          {
            'name': 'Quick Launch',
            'description':
                'Gather the wind power to increase the attack rate by 20% , flips back 2m and fires.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_6.png',
          },
          {
            'name': 'Giant Whirlwind',
            'description': 'The width of the whirlwind increases by 20%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_7.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Tidal Wave',
            'description':
                'It changes to a straight attack form. During the third firing, the tornado will form long and attack enemies within range, and increasing damage done to enemies by 30%. If you apply a Slow bullet, your damage to the enemy increases by 30%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_87.png',
          },
          {
            'name': 'Multi Tidal',
            'description':
                'After a certain period of time, the whirlwind will separate and fire up to four whirlwinds.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_8.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Soundstrike',
    'class': 'Bard',
    'description':
        'Shoots a projectile that explodes and staggers targets near explosion when collision happens.',
    'type': 'Normal',
    'cooldown': 6,
    'iconUrl': 'assets/icons/bard/c09s00.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Quick Preparation',
            'description': 'Cooldown reduced by 1s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.png',
          },
          {
            'name': 'Wide Explosion',
            'description': 'Increases the range of explosive blast by 50%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_7.png',
          },
          {
            'name': 'Remaining Blast',
            'description': 'Leaves a DoT on the ground at the explosion.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_8.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Sacred Shock',
            'description':
                'Changes to [Holy] property, for 1 second, enemy hit by soundshock takes 15% increased damage.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_18.png',
          },
          {
            'name': 'Cold Shock',
            'description':
                'Changes to [Ice] property, soundshock freezes enemies for 3 seconds, if they are not frozen their movement speed is reduced by 60%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_14.png',
          },
          {
            'name': 'Shock Reinforcement',
            'description': 'Damage increases by 30%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_1.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Speaker',
            'description': 'Shoots another soundstrike.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_54.png',
          },
          {
            'name': 'Song',
            'description':
                'Soundstrike is no longer shot straight but falls as a bomb to the pointed location and the damage is increased by 60%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_62.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Dissonance',
    'class': 'Bard',
    'description':
        'AoE void zone that ticks 7 times once per second, each ticks slows enemies for 2 seconds for 60%.',
    'type': 'Point',
    'cooldown': 8,
    'iconUrl': 'assets/icons/bard/c09s01.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Nimble Cast',
            'description': 'Skill cast time is reduced by 15%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_41.png',
          },
          {
            'name': 'Increase Melody',
            'description': 'Serenade gauge charges from the skill 30% faster.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_64.png',
          },
          {
            'name': 'Mental fortification',
            'description': 'Mana cost reduced by 50%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_34.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Dragon Rigid',
            'description':
                'Damage to monsters under a given name increases by 100%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_61.png',
          },
          {
            'name': 'Helpless Chord',
            'description':
                'When hit, the attack power of the enemy decreases by 6% every 2 seconds for a maximum of 30%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_46.png',
          },
          {
            'name': 'Achievement of Training',
            'description': 'Skill range increased by 20%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_7.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Live Chord',
            'description':
                'Void zone now moves towards nearest enemy and follows him as he is moving. dissonant chord has the slower speed to chase a target and increase skill cooldown by 4s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_81.png',
          },
          {
            'name': 'Chord Enhancement',
            'description': 'Skill damage increased by 100%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_1.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Soundwave',
    'class': 'Bard',
    'description':
        'Shoots soundwave that pushes enemies backwards as it flies. Doesn’t affect elites/bosses.',
    'type': 'Normal',
    'cooldown': 12,
    'iconUrl': 'assets/icons/bard/c09s02.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Slick Casting',
            'description': 'Casting speed increased by 20%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_41.png',
          },
          {
            'name': 'Excellent Maneuver',
            'description': 'When casting skill you are pushed back 4m away.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_11.png',
          },
          {
            'name': 'Large Wave',
            'description': 'Increase the skill range by 20%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_7.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Mana Control',
            'description': '70% chance to not consume MP.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_34.png',
          },
          {
            'name': 'Wave of Patience',
            'description':
                'When soundwave touches your party member it grants damage 40% reduce buff for 4s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_65.png',
          },
          {
            'name': 'Increase Melody',
            'description': 'Serenade gauge charges from the skill 50% faster.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_64.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Burning Wave',
            'description': 'Skill damage increased by 50%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_1.png',
          },
          {
            'name': 'Ground Breaking',
            'description':
                'With the last wave hit enemies are falling into sleep for 2s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_44.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Mana Crystal',
    'class': 'Summoner',
    'description':
        'Throws Mana Crystal to deal (139) damage to collided and (112) to outer cone shape. Damaged target gets slow by 60% for 2s.',
    'type': 'Normal',
    'cooldown': 6,
    'iconUrl': 'assets/icons/summoner/c10s00.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Mind Enhancement',
            'description': 'Mana consumption reduce by 50%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_34.png',
          },
          {
            'name': 'Ranged Launch',
            'description': 'Increase the skill range by 2m.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_52.png',
          },
          {
            'name': 'Slow Enhancement',
            'description': 'Increase duration of slow effect by 1s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_47.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Flame Crystal',
            'description': 'Increase the damage by 25%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_1.png',
          },
          {
            'name': 'Ice Crystal',
            'description':
                'Property, the cooldown increases by 5 seconds, and does not decrease the movement speed anymore, but it is frozen for 2 seconds.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_43.png',
          },
          {
            'name': 'Thunder Crystal',
            'description': 'Increase critical hit rate by 30%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_49.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Chain Explosion',
            'description':
                'In the case of an attacking attack , an additional sectorial damage occurs 2m behind the explosion location . Additional damage increases attack distance by 30%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_8.png',
          },
          {
            'name': 'Area Explosion',
            'description':
                'Removed cone shape AOE at successful hit but explodes in circle with increase in 30% damage and 20% slow effect.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_53.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Instant Explosion',
    'class': 'Summoner',
    'description':
        'Explode condensed mana energy at cursor point to deal (167) damage.',
    'type': 'Point',
    'cooldown': 12,
    'iconUrl': 'assets/icons/summoner/c10s01.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Insight',
            'description': 'Increase the skill range by 2m.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_52.png',
          },
          {
            'name': 'Destruction Enhancement',
            'description': 'Add Lv1 Destruction effect.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_22.png',
          },
          {
            'name': 'Energy Control',
            'description':
                'At successful hit, increase ancient spirit gauge gain by 50%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_37.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Vital Point Explosion',
            'description': 'Increase critical hit rate by 30%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_4.png',
          },
          {
            'name': 'Shiny Explosion',
            'description':
                'At successful hit, sleep the target for 2s but increase CD by 4s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_44.png',
          },
          {
            'name': 'Capture Weakness',
            'description': 'Increases the damage done to your enemies by 40%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_33.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Mega Explosion',
            'description':
                'Increase the delay of explosion but increase the damage by 50% and range by 30%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_53.png',
          },
          {
            'name': 'It’s a Trap!',
            'description':
                'Create a mine that explodes automatically when enemy approaches and decrease enemy’s movement speed for 60% for 3s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_47.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Accelerating Wind Bird',
    'class': 'Summoner',
    'description':
        'Summon groups of Wind Bird and can move freely while holding. Skill can last up to 3 s and can deal (37) damage at maximum.',
    'type': 'Hold 3 sec',
    'cooldown': 18,
    'iconUrl': 'assets/icons/summoner/c10s02.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Mind Enhancement',
            'description': 'Mana consumption is reduced by 50%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.png',
          },
          {
            'name': 'Accumulated Energy',
            'description':
                'You can not acquire ancient energy during holding, but if you keep holding to the end, you gain 80% chance to gain 1 elemental bead.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_36.png',
          },
          {
            'name': 'Sleek Motion',
            'description': 'Movement speed increases by 10% during holding.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_11.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Fire Bird',
            'description': 'Increase the damage by 30% while holding.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_1.png',
          },
          {
            'name': 'Ice Bird',
            'description':
                'Holding the skill for 0.5s or longer removes stiffness effect but decrease enemy’s movement speed by 60% for 3s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_47.png',
          },
          {
            'name': 'Wisdom of Mage',
            'description': 'Maximum holding time increase to 2s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_42.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Flock of Birds',
            'description':
                'Summons more bird to increase the skill range by 30% and ignore 60% of magic defense.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_7.png',
          },
          {
            'name': 'Mother Bird',
            'description':
                'Holding the skill 0.5 s or longer summons mother bird additionally at the end of holding. Increased skill damage by 33.3%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_59.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Call of Destiny',
    'class': 'Arcana',
    'description':
        'Throws a card in the specified direction, dealing damage. After a short time, inflict additional damage and launches enemy into the air. PVP: Cause stiffness to a target who is not casting skill.',
    'type': 'Normal',
    'cooldown': 8,
    'iconUrl': 'assets/icons/arcana/c11s00.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Mental Fortification',
            'description': 'Mana cost reduced by 50%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_34.png',
          },
          {
            'name': 'Piercing Strike',
            'description': 'Ignores 30% of the magical defense of a hit enemy.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_3.png',
          },
          {
            'name': 'Sleek Motion',
            'description': 'Attack speed increases by 15%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_6.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Increase Card',
            'description': '10% chance to draw a Tarot card on hit.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_66.png',
          },
          {
            'name': 'Identified Weakness',
            'description': 'Increases damage done to immune enemies by 40%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_33.png',
          },
          {
            'name': 'Dark Fate',
            'description':
                'increases the damage done to the enemy by 15%, and increases the critical damage received for 3s by 50%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_53.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Continuous Attack',
            'description':
                'Changes the attack to a three hit attack. The first hit repeats before knocking up on the third hit.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_54.png',
          },
          {
            'name': 'Concentration of Fate',
            'description':
                'Cast time reduced by 0.3s. Changes the attack to a single hit and increases damage by 100%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_41.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Unlimited Shuffle',
    'class': 'Arcana',
    'description':
        'Several cards fly where indicated, inflicting between damage. Launches enemies into the air and then hit the ground, inflicting damage. PVP: Cause stiffness to a target who is casting skill.',
    'type': 'Point',
    'cooldown': 24,
    'iconUrl': 'assets/icons/arcana/c11s01.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Shuffle',
            'description':
                'While use Unlimited Shuffle, the card rolls around the Arcana and deals 20% damage.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_8.png',
          },
          {
            'name': 'Quick Preparation',
            'description': 'Cooldown reduced by 4s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.png',
          },
          {
            'name': 'Mental Fortification',
            'description':
                'When you hit the last attack, you get a 15% chance to draw a Tarot card.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_66.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Infinite Stroke',
            'description':
                'no longer hit the attack, but the enemy hit in the last attack makes the state of electric shock for 4s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_17.png',
          },
          {
            'name': 'Dark Nucleus',
            'description':
                'Increases Critical Hit Rate by 15%, and increases critical damage by 3% for 3s by 50%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_19.png',
          },
          {
            'name': 'Ultimate Shuffle',
            'description':
                'The duration of unlimited shuffle is increased by 0.6 seconds, and the card fires even faster, increasing the number of hits by 3.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_40.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Predicted Death',
            'description':
                'Increases the range of your judgment by 40%, additionally creates a circular spell, and increases the damage done to the enemy on the circular spell by 40%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_54.png',
          },
          {
            'name': 'Storm of Destruction',
            'description':
                'You can not move your enemies to the air, you can move to 70% of your movement speed, and you will be able to fly all the cards 4m in front of you when landing. Send the enemy away.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_41.png',
          },
        ]
      }
    ],
  },
  {
    'name': 'Return',
    'class': 'Arcana',
    'description':
        'Launches cards in the specified area, dealing damage to the target. If the skill is activated again, knockdown the targets and deals additional damage.',
    'type': 'Combo',
    'cooldown': 12,
    'iconUrl': 'assets/icons/arcana/c11s02.png',
    'tripod': [
      {
        'tier': 1,
        'points': 4,
        'skills': [
          {
            'name': 'Quick Release',
            'description':
                'Increases the critical hit rate your and party members by 15% for 10s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_4.png',
          },
          {
            'name': 'Mind Focus',
            'description': 'Mana cost is reduced by 50%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_34.png',
          },
          {
            'name': 'Penetration Enhance',
            'description':
                'Increases penetration rate of second skill attack by 2.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_21.png',
          },
        ]
      },
      {
        'tier': 2,
        'points': 20,
        'skills': [
          {
            'name': 'Exposed Target',
            'description':
                'Second skill attack damage is increased by 50% when target has been hit by first hit.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_50.png',
          },
          {
            'name': 'Capture Weakness',
            'description': 'Increases the damage done to your enemies by 40%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_33.png',
          },
          {
            'name': 'Concentrated Card',
            'description':
                'Decreases the attack angle but increases attack range and damage by 20%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_7.png',
          },
        ]
      },
      {
        'tier': 3,
        'points': 48,
        'skills': [
          {
            'name': 'Continuous Attack',
            'description':
                'Changes the attack to a three hit attack. The second hit repeats a third time damage done to the enemy by the added combo attack is increased by 50%.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_40.png',
          },
          {
            'name': 'Exposed Dark',
            'description':
                'Changed to [Cancer] property, which increases 40% critical chanse and 50% of critical damage received from you for 5s.',
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_49.png',
          },
        ]
      }
    ],
  },
];

const _emptySkill = {
  'name': '',
  'class': '',
  'description': '',
  'type': '',
  'cooldown': 1,
  'iconUrl': 'assets/icons/',
  'tripod': [
    {
      'tier': 1,
      'points': 4,
      'skills': [
        {
          'name': '',
          'description': '',
          'iconUrl': 'assets/icons/tripod/',
        },
        {
          'name': '',
          'description': '',
          'iconUrl': 'assets/icons/tripod/',
        },
        {
          'name': '',
          'description': '',
          'iconUrl': 'assets/icons/tripod/',
        },
      ]
    },
    {
      'tier': 2,
      'points': 20,
      'skills': [
        {
          'name': '',
          'description': '',
          'iconUrl': 'assets/icons/tripod/',
        },
        {
          'name': '',
          'description': '',
          'iconUrl': 'assets/icons/tripod/',
        },
        {
          'name': '',
          'description': '',
          'iconUrl': 'assets/icons/tripod/',
        },
      ]
    },
    {
      'tier': 3,
      'points': 48,
      'skills': [
        {
          'name': '',
          'description': '',
          'iconUrl': 'assets/icons/tripod/',
        },
        {
          'name': '',
          'description': '',
          'iconUrl': 'assets/icons/tripod/',
        },
      ]
    }
  ],
};
