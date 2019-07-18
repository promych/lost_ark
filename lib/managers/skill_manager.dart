import '../models/skill.dart';

class SkillManager {
  List<Skill> _skills;

  SkillManager.instance()
      : _skills = _skillsData.map((json) => Skill.fromJson(json)).toList();

  List<Skill> get getAllSkills => _skills;

  List<Skill> getSkillsByClassName(String name) =>
      _skills.where((item) => item.className == name).toList();

  Skill getSkillByName(String name) =>
      _skills.where((item) => item.name == name).first;
}

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
  {
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
  },
];
