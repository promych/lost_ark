import '../models/skill.dart';

class SkillRepo {
  Future<List<Skill>> fetchSkills({String lang = 'en'}) async {
    return _skillsData.map((json) => Skill.fromJson(json, lang: lang)).toList();
  }
}

// ids generate when serialized
// 'c01s13' skill, 'c07s02_1_13' ench
const List<Map<String, dynamic>> _skillsData = [
  {
    'name': 'Sharp Spear',
    'class': {
      'en': 'Warlord',
      'ru': 'Полководец',
    },
    'description': {
      'en': 'You stab enemies in front of you with spear for 132 damage.',
      'ru': 'Вы наносите 132 урона копьем перед собой.'
    },
    'type': 'Normal',
    'cooldown': 1,
    'mana': 41,
    'iconUrl': 'assets/icons/warlord/c01s00.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Advance',
            'description': {
              'en': 'You jump on 3 meters and attack cone-shaped.',
              'ru':
                  'Вы перемещаетесь на 3 метра вперед, нанося урон перед собой по области.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_40.webp',
          },
          {
            'name': 'Penetrate',
            'description': {
              'en': 'Reduces attack width by 30% but increases range by 40%.',
              'ru':
                  'Область аткаки сужается на 30%, дальность увеличивается на 40%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_7.webp',
          },
          {
            'name': 'Giant Spin',
            'description': {
              'en': 'You hit at 360°',
              'ru': 'Урон наносится вокруг - на 360°.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_39.webp',
          },
        ],
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Wound',
            'description': {
              'en': 'Inflicts Bleeding for 4 seconds.',
              'ru': 'Накладывает эффект кровотечения на 4 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_45.webp',
          },
          {
            'name': 'Weakness',
            'description': {
              'en':
                  'Increases damage by 50% against enemies that suffer from a control effect.',
              'ru': 'Урон увеличен на 50% по противникам под эффекта контроля.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_30.webp',
          },
          {
            'name': 'Irregular Attack',
            'description': {
              'en': 'Pull enemies instead of pushing them.',
              'ru': 'Притгивает врагов вместо отталкивания.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_27.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Endless Spear',
            'description': {
              'en': 'Adds an extra hit that deals 100% of the damage.',
              'ru': 'Добавляет дополнительную атаку, наносящую 100% урона.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_38.webp',
          },
          {
            'name': 'Strengthened Spear',
            'description': {
              'en': 'Increases range by 30% and damage by 50%.',
              'ru': 'Радиус атаки увеличен на 30% и урон на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_0.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Rising Spear',
    'class': {
      'en': 'Warlord',
      'ru': 'Полководец',
    },
    'description': {
      'en':
          'You pierce the ground in front of you with your spear to inflict 26 damage, then remove it, inflicting 103 damage on a line in front of you and knocking down enemies.',
      'ru':
          'Вонзает копье в землю, нанося 26 урона перед собой, затем дополнительно 103 урона.'
    },
    'type': 'Normal',
    'cooldown': 9,
    'mana': 57,
    'iconUrl': 'assets/icons/warlord/c01s01.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Advance',
            'description': {
              'en':
                  'Pushes forward by 6 meters by hitting with a shield and dealing 20% additional damage.',
              'ru':
                  'Отталкивает вперед на 6 метров, нанося дополнительно 20% урона.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_40.webp',
          },
          {
            'name': 'Quick Preparation',
            'description': {
              'en': 'Reduces the cooldown by 2 seconds.',
              'ru': 'Время восстановления умения сокращено на 2 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.webp',
          },
          {
            'name': 'Surprise Attack',
            'description': {
              'en': 'Increase the speed of the attack.',
              'ru': 'Увеличивает скорость умения.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_6.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Strengthened Blow',
            'description': {
              'en': 'Increases damage by 25%.',
              'ru': 'Урон увеличен на 25%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_0.webp',
          },
          {
            'name': 'Flaming Spear',
            'description': {
              'en':
                  '[Fire] When you remove your spear from the ground, inflict a burn on enemies for 5 seconds.',
              'ru':
                  '[Огонь] При поднятии копья добавляет врагам эффект горения на 5 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_13.webp',
          },
          {
            'name': 'Lightning',
            'description': {
              'en':
                  '[Lightning] The enemies are no longer knocked down, but electrocuted for 3 seconds',
              'ru': 'Вместо подбрасывания врагов добавляет эффект молнии.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_17.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Earth Spikes',
            'description': {
              'en':
                  'Inflicting 60% additional damage and pulling enemies after smashing spear into ground.',
              'ru': 'Наносит дополнительно 60% урона и притягивает противников.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_22.webp',
          },
          {
            'name': 'Chain Explosion',
            'description': {
              'en':
                  'Instead of taking your spear out of the ground, you deal damage 5 times on a line in front of you up to 375% damage.',
              'ru':
                  'Вместо того чтобы поднять копье, наносит до 375% урона за 5 ударов.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_8.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Fire Bullet',
    'class': {
      'en': 'Warlord',
      'ru': 'Полководец',
    },
    'description': {
      'en':
          'You shoot with your spear to deal damage to nearby enemies for 126 damage.',
      'ru': 'Наносит 126 урона выстрелом.'
    },
    'type': 'Normal',
    'cooldown': 7,
    'mana': 49,
    'iconUrl': 'assets/icons/warlord/c01s02.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Solid Armor',
            'description': {
              'en': 'During casting, you receive 20% less damage.',
              'ru':
                  'Вы получаете на 20% меньше урона во время подготовки умения.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_25.webp',
          },
          {
            'name': 'Luck',
            'description': {
              'en':
                  '50% chance to reduce the cooldown by 4 seconds if the skill hits an enemy.',
              'ru': '50% шанс сократить время перезарядки умения на 4 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.webp',
          },
          {
            'name': 'Mana Control',
            'description': {
              'en': 'Reduces the mana cost by 50%.',
              'ru': 'Сокращает потребление маны на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_34.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Destruction',
            'description': {
              'en': 'Increases the Destruction level by 1.',
              'ru': 'Увеличивает уровень Разрушения на 1.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_22.webp',
          },
          {
            'name': 'Enflame',
            'description': {
              'en': 'Inflicts a burn on enemies for 6 seconds.',
              'ru': 'Добавляет врагам эффект горения на 6 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_13.webp',
          },
          {
            'name': 'Strengthened Blow',
            'description': {
              'en': 'Increases damage by 25%.',
              'ru': 'Урон увеличен на 25%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_0.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Additional Attack',
            'description': {
              'en':
                  'You shoot twice in a row to deal 60% additional damage, and the second shot repels enemies further.',
              'ru':
                  'Наносит дополнительный выстрел 60% урона и отбрасывая врага дальше.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_8.webp',
          },
          {
            'name': 'Area Bombardment',
            'description': {
              'en':
                  'Decreases shooting speed but increases radius by 30%. In addition, it deals 100% additional damage and pushes enemies further. Increases cooldown by 2 seconds.',
              'ru':
                  'Уменьшает скорость выстрела, увеличивает дальность на 30%. Увеличивает урон на 100% и время перезарядки умения на 2 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_7.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Shield Slam',
    'class': {
      'en': 'Warlord',
      'ru': 'Полководец',
    },
    'description': {
      'en':
          'You jump to inflict a large blow on your shield that deals 34 damage to enemies, then you can make a second shield hit by 80 damage.',
      'ru': 'Наносит 34 урона врага и дополнительно 80 урона за второй удар.'
    },
    'type': 'Combo',
    'cooldown': 9,
    'mana': 57,
    'iconUrl': 'assets/icons/warlord/c01s03.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Armor Destruction',
            'description': {
              'en': 'Decreases the target’s defense by 20% for 8 seconds.',
              'ru': 'Уменьшает защиту врагов на 20% в течение 8 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_46.webp',
          },
          {
            'name': 'Defense Preparation',
            'description': {
              'en': 'Grants a 20% damage reduction bonus for 5 seconds',
              'ru': 'Уменьшает получаемый урон на 20% в течение 5 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_25.webp',
          },
          {
            'name': 'Attack Speed',
            'description': {
              'en': 'Increase attack speed by 15%',
              'ru': 'Увеличивает скорость атаки на 15%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_6.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Shield Enhanced',
            'description': {
              'en': 'Shield charge is increased by 50% when attacking.',
              'ru': 'Заряд щита увеличен на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_37.webp',
          },
          {
            'name': 'Superior Mobility',
            'description': {
              'en': 'Increases the skill range by 1m.',
              'ru': 'Дистанция атаки увеличена на 1 метр.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_10.webp',
          },
          {
            'name': 'Spot Weakness',
            'description': {
              'en':
                  'Increases damage done any target with the Invulnerable status by 60%.',
              'ru': 'Урон по врагам под эффектом контроля увеличен на 60%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_33.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Extra Hit',
            'description': {
              'en':
                  'Increases the number of hits by 2. The additional hits deal 20% and 60% extra damage.',
              'ru':
                  'Увеличивает количество ударов на 2 - по 20% и 60% дополнительного урона соотвественно.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_50.webp',
          },
          {
            'name': 'Flashbag',
            'description': {
              'en':
                  'You hit 3 times, damage is increased by 30% and last hit stuns enemy for 2 seconds.',
              'ru':
                  'Вы наносите 3 удара, урон увеличен на 30% и последний удар добавляет врагам эффект обездвиживания на 2 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_38.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Bash',
    'class': {
      'en': 'Warlord',
      'ru': 'Полководец',
    },
    'description': {
      'en':
          'Strikes an enemy with your shield for 106 damage and stuns for 3 seconds.',
      'ru': 'Наносит 106 урона и обездвиживает на 3 секунды.'
    },
    'type': 'Normal',
    'cooldown': 10,
    'mana': 61,
    'iconUrl': 'assets/icons/warlord/c01s04.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Armor Destruction',
            'description': {
              'en': 'Reduces the target’s defense power by 20% for 10 seconds.',
              'ru': 'Уменьшает защиту врагов на 20% в течение 10 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_46.webp',
          },
          {
            'name': 'Attack Speed',
            'description': {
              'en': 'Increase attack speed by 20%.',
              'ru': 'Увеличивает скорость атаки на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_6.webp',
          },
          {
            'name': 'Lighting Bash',
            'description': {
              'en':
                  '[Lightning] 25% chance to inflict 50% more damage to your target.',
              'ru': 'Шанс 25% нанести на 50% урона больше.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_17.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Attack Preparation',
            'description': {
              'en': 'Grant 25% damage increase for 5 seconds.',
              'ru': 'Увеличивает урон на 25% в течение 5 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_50.webp',
          },
          {
            'name': 'Concussion',
            'description': {
              'en': 'Increases the Incapacitate effect to its maximum level.',
              'ru': 'Снижает стойкость врага.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_69.webp',
          },
          {
            'name': 'Shield Enhancement',
            'description': {
              'en': 'Shield charge is increased by 50% when attacking.',
              'ru': 'Заряд щита увеличен на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_37.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Strike',
            'description': {
              'en': 'Increases the area of effect by 30%.',
              'ru': 'Дальность атаки увеличена на 30%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_7.webp',
          },
          {
            'name': 'Echo',
            'description': {
              'en': 'Increases the stun effect duration by 2 seconds',
              'ru': 'Эффект обездвиживания увеличен на 2 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_51.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Dash Upper Fire',
    'class': {
      'en': 'Warlord',
      'ru': 'Полководец',
    },
    'description': {
      'en':
          'Rushes to a foe and lifts the target, dealing 46 damage, then follows with a combo attack dealing 183 damage.',
      'ru':
          'Подбрасывает врага в воздух нанося 46 урона и затем дополнительным выстрелом еще 183 урона.'
    },
    'type': 'Combo',
    'cooldown': 16,
    'mana': 80,
    'iconUrl': 'assets/icons/warlord/c01s05.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Quick Preparation',
            'description': {
              'en': 'Decreases skill cooldown by 3 seconds.',
              'ru': 'Уменьшено врем перезарядки умения на 3 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.webp',
          },
          {
            'name': 'Defense Preparation',
            'description': {
              'en': 'Grants a 20% damage reduction bonus for 4 seconds.',
              'ru': 'Уменьшает получаемый урон на 20% в течение 4 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_25.webp',
          },
          {
            'name': 'Attack Preparation',
            'description': {
              'en':
                  'Increases attack power by 15% for 4 seconds after the first strike.',
              'ru': 'Увеличивает урон на 15% в течение 4 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_50.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Damage Increased',
            'description': {
              'en': 'Increases the cannon’s damage by 50%.',
              'ru': 'Урон от выстрела увеличен на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_0.webp',
          },
          {
            'name': 'Drillmaster',
            'description': {
              'en': 'Increases the cannon’s area of effect by 20%.',
              'ru': 'Радиус выстрела увеличен на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_13.webp',
          },
          {
            'name': 'Penetration',
            'description': {
              'en': 'The cannon ignores 60% of a foe’s defense.',
              'ru': 'Выстрел игнорирует 60% защиты врага.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_2.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Burn',
            'description': {
              'en': 'The shot inflicts a burn for 5 seconds.',
              'ru': 'Выстрел добавляет эффект горения на 5 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_13.webp',
          },
          {
            'name': 'Attack Speed',
            'description': {
              'en': 'Increases attack speed by 30%.',
              'ru': 'Увеличивает скорость атаки на 30%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_6.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Jump Attack',
    'class': {
      'en': 'Warlord',
      'ru': 'Полководец',
    },
    'description': {
      'en':
          'Jump high in the air towards a target location, and inflict 235 damage to nearby foes upon landing.',
      'ru':
          'Прыгает вверх в сторону противника и наносит 235 урона при приземлении.'
    },
    'type': 'Point',
    'cooldown': 16,
    'mana': 80,
    'iconUrl': 'assets/icons/warlord/c01s06.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Damage Increased',
            'description': {
              'en': 'Increases damage by 15%.',
              'ru': 'Урон увеличен на 15%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_0.webp',
          },
          {
            'name': 'Quick Preparation',
            'description': {
              'en': 'Reduces the cooldown by 3s.',
              'ru': 'Время восстановления умения сокращено на 3 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.webp',
          },
          {
            'name': 'Superior Mobility',
            'description': {
              'en': 'Increases the skill range by 2m.',
              'ru': 'Увеличен радиус действия на 2 метра.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_10.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Great Earthquake',
            'description': {
              'en':
                  'You create an earthquake on your landing that slows enemies by 40% for 5s.',
              'ru':
                  'Создает эффект землетрясения, замедляя противников на 40% в течение 5 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_15.webp',
          },
          {
            'name': 'Electric Zone',
            'description': {
              'en':
                  '[Lightning] Upon landing you create a lightning zone that remains 5 seconds. Enemies in the area receive damage every second.',
              'ru':
                  'Добавляет эффект молнии на 5 секунд, каждую секунду враги получают урон.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_17.webp',
          },
          {
            'name': 'Shockwave',
            'description': {
              'en':
                  'You create a shockwave on your landing, dealing 20% ​​more damage and throwing enemies into the air.',
              'ru': 'Подбрасывает врагов в воздух и увеличивает урон на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_77.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Low Shock',
            'description': {
              'en':
                  'You can jump again a second time dealing 50% additional damage.',
              'ru':
                  'Позволяет прыгнуть второй раз, нанося 50% дополнительного урона.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_38.webp',
          },
          {
            'name': 'Jump',
            'description': {
              'en':
                  'Increasing jump range to 18m and the damage by 30%. The effect areas of Tier 2 talent are increased by 30%.',
              'ru':
                  'Увеличивает дальность прыжка на 18 метров и урон на 30%. Радиус действия усилений 2 Уровня увеличен на 30%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_40.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Guardian\'s Lighting',
    'class': {
      'en': 'Warlord',
      'ru': 'Полководец',
    },
    'description': {
      'en':
          '[Lighting] Deals 295 damage to nearby enemies within 5m and electrocuted them for 3s.',
      'ru':
          '[Молния] Наносит 295 урона противникам в радиусе 5 метров, накладывает эффект молнии на 3 секунды.'
    },
    'type': 'Normal',
    'cooldown': 20,
    'mana': 91,
    'iconUrl': 'assets/icons/warlord/c01s07.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Mana Control',
            'description': {
              'en': '50% chance to not consume MP.',
              'ru': '50% шанс не потратить ману.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_34.webp',
          },
          {
            'name': 'Unquenchable Heat',
            'description': {
              'en': '50% chance to reduce the cooldown by 8 seconds.',
              'ru': '50% шанс сократить время перезарядки умения на 8 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.webp',
          },
          {
            'name': 'Lucky Damage',
            'description': {
              'en':
                  'An additional lightning strikes to inflict 80% of the damage.',
              'ru': 'Дополнительный урон молнией на 80% урона.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_17.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Tenacity',
            'description': {
              'en': 'You become immune to control effects during the cast.',
              'ru':
                  'Вы неуязвимы к эффектам контроля во время подготовки умения.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_23.webp',
          },
          {
            'name': 'Strengthened Blow',
            'description': {
              'en': 'Increases damage by 25%.',
              'ru': 'Урон увеличен на 25%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_0.webp',
          },
          {
            'name': 'Wide Strike',
            'description': {
              'en': 'Increases the attack radius by 20%.',
              'ru': 'Радиус действия увеличен на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_7.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Second Wave',
            'description': {
              'en':
                  'You cast second time in cross direction inflicting 50% additional damage.',
              'ru': 'Наносит дополнительно 50% урона вторым ударом.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_54.webp',
          },
          {
            'name': 'Electrocution',
            'description': {
              'en': 'Increases the duration of electrocution by 3s.',
              'ru': 'Увеличивает эффект молнии на 3 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_51.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Chain Hook',
    'class': {
      'en': 'Warlord',
      'ru': 'Полководец',
    },
    'description': {
      'en':
          'Throws a chain hook to your target and deals 71 damage, then pulls your target towards you and deals 80 damage.',
      'ru':
          'Бросает крюк в сторону противника, нанося 71 урона и притягивая к себе, нанося 80 урона.'
    },
    'type': 'Notmal',
    'cooldown': 24,
    'mana': 101,
    'iconUrl': 'assets/icons/warlord/c01s08.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Quick Preparation',
            'description': {
              'en': 'Decreases skill cooldown by 4s.',
              'ru': 'Время перезарядки умения уменьшено на 4 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.webp',
          },
          {
            'name': 'Mind Enhancement',
            'description': {
              'en': 'Decrease MP consumption by 50%.',
              'ru': 'Количество маны для умения сокращено на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_34.webp',
          },
          {
            'name': 'Damage Increased',
            'description': {
              'en': 'Increases damage by 10%.',
              'ru': 'Урон увеличен на 10%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_0.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Sharpened Chain Hook',
            'description': {
              'en': 'Inflicts bleeding on the target for 5s.',
              'ru': 'Добавляет эффект кровотечения на 5 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_45.webp',
          },
          {
            'name': 'Shackles',
            'description': {
              'en': 'Reduces enemy movement speed by 40% for 5s.',
              'ru': 'Замедляет врагов на 40% в течение 5 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_47.webp',
          },
          {
            'name': 'Offensive Preparation',
            'description': {
              'en': 'Increases your attack power by 25% for 5s.',
              'ru': 'Показатель атаки увеличен на 25% в течение 5 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_50.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Drill Master',
            'description': {
              'en': 'Increases the area of effect by 20%.',
              'ru': 'Радиус действия умения увеличен на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_7.webp',
          },
          {
            'name': 'Taunt',
            'description': {
              'en':
                  'Taunts a monster that has immunity of the crowd control effects for 2 seconds.',
              'ru':
                  'Провоцирует монстров с иммунитетом к эффектам контроля на 2 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_33.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Shield Charge',
    'class': {
      'en': 'Warlord',
      'ru': 'Полководец',
    },
    'description': {
      'en':
          'Charges forward dealing 37 damage each strike to foes and knocks them back.',
      'ru':
          'Делает выпад вперед нанося 37 урона за каждое столкновение с врагами и отбрасывая их.'
    },
    'type': 'Hold 2 sec',
    'cooldown': 16,
    'mana': 80,
    'iconUrl': 'assets/icons/warlord/c01s09.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Improved Armor',
            'description': {
              'en':
                  'Gain a 30% damage reduction bonus while you are performing the skill.',
              'ru': 'Урон, получаемый при атаке, сокращен на 30%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_25.webp',
          },
          {
            'name': 'Quick Preparation',
            'description': {
              'en': 'Decreases skill cooldown by 3s.',
              'ru': 'Время перезарядки умения сокращено на 3 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.webp',
          },
          {
            'name': 'Damage Increased',
            'description': {
              'en': 'Increases damage by 15%.',
              'ru': 'Урон увеличен на 15%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_0.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Drill Master',
            'description': {
              'en': 'Increases the area of effect by 20%.',
              'ru': 'Радиус действия увеличен на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_7.webp',
          },
          {
            'name': 'Barrier',
            'description': {
              'en':
                  'During the charge, create a barrier that absorbs 15% of your maximum health.',
              'ru': 'Во время атаки восполняет до 15% здоровья.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_75.webp',
          },
          {
            'name': 'Light Steps',
            'description': {
              'en': 'Travel speed is increased by 5% during charging.',
              'ru': 'Скорость перемещения во время атаки увеличена на 5%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_11.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Unfinished Business',
            'description': {
              'en':
                  'Thrust a spear after the shield charge, dealing 40% additional damage. The target is lifted into the air.',
              'ru':
                  'После атаки бросает копье, нанося 40% дополнительного урона и подбрасывая врагов в воздух.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_38.webp',
          },
          {
            'name': 'Destructive Weapon',
            'description': {
              'en':
                  'Each hit grant a 10% damage bonus for 2 seconds. This bonus stacks up to 60%.',
              'ru':
                  'Каждое столкновение увеличивает урон на 10% в течение 2 секунд, максимум до 60%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_2.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Charge Stinger',
    'class': {
      'en': 'Warlord',
      'ru': 'Полководец',
    },
    'description': {
      'en':
          'You charge your electric energy before you quickly shoot forward to hit the enemies. You can change direction slowly while loading the skill. Dealing 204 damage before completing charge, 478 damage when taking 1st stage, and 682 damage when overcharged.',
      'ru':
          'Заряжает умение эффектом молнии, во время подготовки позволяет медленно перемещаться. Наносит 204 урона не завершив подготовку, 478 за первый уровень заряда, 682 за перегрузку умения.'
    },
    'type': 'Charge',
    'cooldown': 30,
    'mana': 114,
    'iconUrl': 'assets/icons/warlord/c01s10.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Wound',
            'description': {
              'en':
                  'Inflicts Bleeding for 3 seconds if the skill deals a critical hit.',
              'ru':
                  'Добавляет эффект кровотечения на 3 секунды при критической атаке.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_45.webp',
          },
          {
            'name': 'Weak Spot',
            'description': {
              'en':
                  'Increases the damage done to enemies with control immunity by 20%.',
              'ru': 'Урон по врагам с иммунитетом к контрою увеличен на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_33.webp',
          },
          {
            'name': 'Improved Armor',
            'description': {
              'en':
                  'Gain a 20% damage reduction bonus while you are performing the skill.',
              'ru': 'Получаемый урон во время умения снижен на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_25.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Improved Penetration',
            'description': {
              'en': 'Increases the Penetration level by 1.',
              'ru': 'Уровень пробивания увеличен на 1.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_21.webp',
          },
          {
            'name': 'Improved Charging',
            'description': {
              'en':
                  'Each level of the charging increases the physical damage dealt by 15%.',
              'ru': 'Каждый уровень заряда умения увеличивает физический урон на 15%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_0.webp',
          },
          {
            'name': 'Toughness',
            'description': {
              'en':
                  'You become Invulnerable to crowd control effects while performing the skill.',
              'ru':
                  'Вы неуязвимы у эффектам контроля во время использования умения.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_23.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Lightning Charge',
            'description': {
              'en':
                  'The charging level starts at 2, and overcharging causes an electric shock to your target for 4s.',
              'ru':
                  'Заряд умения начинается со 2 уровня, перегрузка добавляет эффект молнии на 4 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_17.webp',
          },
          {
            'name': 'Last Charge',
            'description': {
              'en':
                  'Increases the maximum charging level by 1. At the maximum level, you travel faster, further, and deal 40% increased damage, last hit deals 30% more damage and knocking enemies.',
              'ru':
                  'Добавляет еще один уровень заряда, позволяя двигаться дальше и быстрее, нанося 40% урона больше. В конце наносит 30% дополнительного урона и отбрасывает врагов.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_40.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Shout of Hate',
    'class': {
      'en': 'Warlord',
      'ru': 'Полководец',
    },
    'description': {
      'en':
          'Inflicts 182 damage to a maximum of 11 enemies within 8m. This also taunts monsters for 2 seconds.',
      'ru':
          'Наносит 182 урона максимум 11 целям в радиусе 8 метров. Провоцирует монстров на 2 секунды.'
    },
    'type': 'Normal',
    'cooldown': 30,
    'mana': 114,
    'iconUrl': 'assets/icons/warlord/c01s11.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Quick Preparation',
            'description': {
              'en': 'Decreases skill cooldown by 5s.',
              'ru': 'Время перезарядки умения сокращено на 5 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.webp',
          },
          {
            'name': 'Drill Master',
            'description': {
              'en': 'Increases the area of effect by 25%.',
              'ru': 'Радиус действия умения увеличен на 25%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_7.webp',
          },
          {
            'name': 'Defense Preparation',
            'description': {
              'en': 'All damage you receive is reduced by 20% for 6s.',
              'ru': 'Получаемый урон сокращен на 20% в течение 6 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_25.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Keep Provocation',
            'description': {
              'en': 'The duration of provocation increases by 2s.',
              'ru': 'Действие провокации увеличено на 2 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_51.webp',
          },
          {
            'name': 'Natural Selection',
            'description': {
              'en': 'Increases the damage dealt on normal monsters by 200%.',
              'ru': 'Увеличен урон по обычным монстрам на 200%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_61.webp',
          },
          {
            'name': 'Protective Shield',
            'description': {
              'en':
                  'Creates a protective shield for 3 seconds which absorbs up to 30% of the maximum health.',
              'ru':
                  'Поглощает урон в течение 3 секунд и восстанавливает до 30% здоровья.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_75.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Morale Boost',
            'description': {
              'en':
                  'Recovers 20% of energy on attack, and increases the target back attack by 20% for 12 seconds.',
              'ru':
                  'Восстанавливает 20% энергии за удар, урон по цели со спины увеличен на 20% в течение 12 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_65.webp',
          },
          {
            'name': 'Shout',
            'description': {
              'en':
                  'Reduces the movement speed and attack power of inflicted enemies by 30% for 4s.',
              'ru':
                  'Уменьшает скорость перемещения и показатель атаки врагов на 30% в течение 4 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_46.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Turbulent Shield',
    'class': {
      'en': 'Warlord',
      'ru': 'Полководец',
    },
    'description': {
      'en':
          'Slams with shield dealing 129 damage and slowing down enemies by 40% for 4s.',
      'ru':
          'Наносит 129 урона щитом и замедляет врагов на 40% в течение 4 секунд.'
    },
    'type': 'Normal',
    'cooldown': 12,
    'mana': 67,
    'iconUrl': 'assets/icons/warlord/c01s12.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Quick Response',
            'description': {
              'en': 'Decreases the skill cooldown by 3s.',
              'ru': 'Время перезарядки умения уменьшено на 3 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.webp',
          },
          {
            'name': 'Swift Movement',
            'description': {
              'en': 'Increase attack speed by 10%.',
              'ru': 'Скорость атки увеличена на 10%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_6.webp',
          },
          {
            'name': 'Destroy Armor',
            'description': {
              'en': 'Reduces the target’s defense by 20% for 10s.',
              'ru': 'Сокращает защиту врага на 20% в течение 10 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_2.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Improved Strike',
            'description': {
              'en': 'Increases damage done by 20%.',
              'ru': 'Урон увеличен на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_7.webp',
          },
          {
            'name': 'Earthquake',
            'description': {
              'en':
                  'Reduces enemies attack speed by 40% and movement speed by 80%.',
              'ru':
                  'Уменьшает скорость атаки врагов на 40% и скорость перемещения на 80%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_46.webp',
          },
          {
            'name': 'Defense Preparation',
            'description': {
              'en':
                  'Reduces damage taken by 15% for 10 seconds if the skill hits an enemy.',
              'ru':
                  'Получаемый урон сокращается на 15% в течение 10 секунд при успешной атаке.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_25.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Second Crash',
            'description': {
              'en':
                  'The skill can be cast twice, then you make a second hit that deals 100% of the damage.',
              'ru':
                  'Позволяет ударить дважды, нанося 100% дополнительного урона.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_40.webp',
          },
          {
            'name': 'Assault',
            'description': {
              'en':
                  'You jump on 5 meters forward hitting the ground, inflicting 50% more damage.',
              'ru':
                  'Вы прыгаете на 5 метров вперед, нанося на 50% урона больше.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_0.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Counter Sphere',
    'class': {
      'en': 'Warlord',
      'ru': 'Полководец',
    },
    'description': {
      'en':
          'Raise your shield to defend yourself from any harmful attack in front of you for 2 seconds. Absorbs damage by an amount equal to your maximum health. Successfully defending for 1 second grants a counter attack on the enemy which deals 469 damage and knocks them back.',
      'ru':
          'В течение 2 секунд щит способен поглотить урон равный 100% вашего здоровья. Через секунду гарантирует контратаку нанося 469 урона и отталкивая врага.'
    },
    'type': 'Normal',
    'cooldown': 20,
    'mana': 101,
    'iconUrl': 'assets/icons/warlord/c01s13.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Offensive Preparation',
            'description': {
              'en':
                  'A successful counter hit grants a 15% damage increase for 4s.',
              'ru':
                  'Успешная контратака увеличивает урон на 15% в течение 4 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_50.webp',
          },
          {
            'name': 'Improved Armor',
            'description': {
              'en':
                  'Gain a 30% damage reduction bonus while you are performing the skill.',
              'ru': 'Уменьшает получаемый урон на 30% во время атаки.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_25.webp',
          },
          {
            'name': 'Incapacitate',
            'description': {
              'en':
                  'Increases the Incapacitate effect by 1 in the event of a successful counter attack.',
              'ru':
                  'Увеличивает эффект Ослабления на 1 при успешной контратаке.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_69.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Quick Response',
            'description': {
              'en':
                  'Reduces cooldown time by 4 seconds.',
              'ru':
                  'Сокращает время перезарядки на 4 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_56.webp',
          },
          {
            'name': 'Improved Strike',
            'description': {
              'en': 'Increases damage by 25%.',
              'ru': 'Урон увеличен на 25%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_0.webp',
          },
          {
            'name': 'Spot Weakness',
            'description': {
              'en':
                  'Increases the damage dealt to targets with the Invulnerable status by 40%.',
              'ru':
                  'Урон увеличен на 40% по врагам, неуязвимым к эффектам контроля.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_33.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Bombardment',
            'description': {
              'en':
                  'A successful counter hit grants an extra hit which deals 50% increased damage on the target.',
              'ru': 'Успешная контратака гарантирует увеличенный урон на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_40.webp',
          },
          {
            'name': 'Lightning Spear',
            'description': {
              'en':
                  'A successful counter hit grants an extra attack with the spear. The target is also inflicted with an electric shock for 4s instead of knocking down.',
              'ru':
                  'Успешная контратака гарантирует дополнительный удар копьем, добавляя эффект молнии вместо отбрасывания.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_17.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Strength of Nellasia',
    'class': {
      'en': 'Warlord',
      'ru': 'Полководец',
    },
    'description': {
      'en':
          'Reduces all damage done by you and your party members by 10% for 6 seconds in radius of 24m.',
      'ru':
          'Уменьшает получаемый урон группы в радиусе 24 метров на 10% в течение 6 секунд.'
    },
    'type': 'Normal',
    'cooldown': 40,
    'mana': 135,
    'iconUrl': 'assets/icons/warlord/c01s14.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Charge Speed',
            'description': {
              'en': 'Increases your movement speed by 15% for 6s.',
              'ru':
                  'Увеличивает скорость передвижения на 15% в течение 6 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_11.webp',
          },
          {
            'name': 'Mind Enhancement',
            'description': {
              'en': 'Decrease MP consumption by 50%.',
              'ru': 'Потребление маны снижено на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_34.webp',
          },
          {
            'name': 'Quick Preparation',
            'description': {
              'en': 'Cooldown reduced by 6s.',
              'ru': 'Время перезарядки уменьшено на 6 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Increase Effectiveness',
            'description': {
              'en': 'Damage reduction effect increased by 25%.',
              'ru': 'Эффект сокращения получаемого урона увеличен на 25%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_24.webp',
          },
          {
            'name': 'Cleanse',
            'description': {
              'en': 'Cleanses all party members, removing one harmful effect.',
              'ru': 'Снимает один негативный эффект с членов группы.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_39.webp',
          },
          {
            'name': 'Prolonged Effect',
            'description': {
              'en': 'Increases the duration of the effect by 4s.',
              'ru': 'Увеличивает продолжительность эффекта на 4 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_51.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Leadership',
            'description': {
              'en': 'You are immune to control effects while casting skills, party members attack speed is increased by 20% for 6 seconds.',
              'ru': 'Невосприимчивость к эффектам контроля во время подготовки умения. Участники группы получают скорость к атаке на 20% в течение 6 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_0.webp',
          },
          {
            'name': 'Survivability',
            'description': {
              'en':
                  'Creates a protective shield on all party members which absorbs damage equal to 30% of their maximum health. The shield lasts for 6s.',
              'ru':
                  'Создает щит, поглощающий урон по группе. Максимум 30% здоровья в течение 6 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_65.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Spear Shot',
    'class': {
      'en': 'Warlord',
      'ru': 'Полководец',
    },
    'description': {
      'en':
          'After a forward thrust, you deal 70 damage. Then pull them dealing 140 damage and knocking away with 141 damage.',
      'ru':
          'Делает рывок вперед, нанося 70 урона копьем. Далее притягивает врагов, нанося 140 урона, и 141 урона откидывая назад.'
    },
    'type': 'Normal',
    'cooldown': 12,
    'mana': 85,
    'iconUrl': 'assets/icons/warlord/c01s15.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Solid Armor',
            'description': {
              'en': 'Reduce income damage by 30% while attacking.',
              'ru':
                  'Сокращает получаемый урон на 30% во время применения умения.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_25.webp',
          },
          {
            'name': 'Swift Movement',
            'description': {
              'en': 'Increases attack speed by 15%.',
              'ru': 'Скорость атаки увличена на 15%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_6.webp',
          },
          {
            'name': 'Tenacity',
            'description': {
              'en': 'You become immune to control effects during attack.',
              'ru': 'Вы невосприимчивы к эффектам контроля во время атаки.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_23.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Strengthened Blow',
            'description': {
              'en': 'Increases damage by 25%.',
              'ru': 'Урон увеличен на 25%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_0.webp',
          },
          {
            'name': 'Detect Weakness',
            'description': {
              'en':
                  'Increases damage by 40% against enemies immune to control effects.',
              'ru':
                  'Урон увеличен на 40% по врагам, невосприимчивым к эффектам контроля.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_33.webp',
          },
          {
            'name': 'Penetration',
            'description': {
              'en': 'Increases Penetration Level by 1.',
              'ru': 'Уровнь Пробивания увеличен на 1.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_21.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Exploding Spear',
            'description': {
              'en':
                  'You charge 4 meters forward attacking with your spear, which causes an explosion that deals 40% additional damage.',
              'ru':
                  'Наносит 40% дополнительного урона копьем на 4 метра перед собой.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_40.webp',
          },
          {
            'name': 'Close-Range Explosion',
            'description': {
              'en':
                  'The skill can be loaded. At second charge, deals 25% additional damage. At third charge, deals 105% additional damage. On the other hand, the first charge deals 20% less damage.',
              'ru':
                  'Добавляет возможность заряжать умение. На первом уровне урон снижен на 25%, на втором увеличен на 25% и на третьем на 105%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_38.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Burst Cannon',
    'class': {
      'en': 'Warlord',
      'ru': 'Полководец',
    },
    'description': {
      'en':
          'Fires your cannon in front of you. When the burst is fully charged, it deals 313 damage your target and knocks them down. When not fully charged, it deals 626 damage and pushes the target back.',
      'ru':
          'Выстрел по прямой перед собой, наносящий при не полном заряде 313 урона и 626 при полном. Отбрасывает врагов.'
    },
    'type': 'Normal',
    'cooldown': 30,
    'mana': 114,
    'iconUrl': 'assets/icons/warlord/c01s16.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Penetrating Shot',
            'description': {
              'en': 'Ignore 40% of the defense of enemies.',
              'ru': 'Игнорирует 40% защиты врага.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_21.webp',
          },
          {
            'name': 'Scatter Shot',
            'description': {
              'en':
                  'You shoot cone-shaped, increasing damage by 30% against normal monsters. The area of ​​effect is increased by 20% and the enemies are no longer knocking away.',
              'ru':
                  'Добавляет 20% угол атаки, нанося на 30% больше урона по обычным монстрам. Не отбрасывает.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_61.webp',
          },
          {
            'name': 'High Explosive',
            'description': {
              'en':
                  'During your shot, you launch a bomb that moves 2 meters before exploding. The bomb has a Destruction Level 1 effect, and deals 50% additional damage to normal monsters.',
              'ru':
                  'Во время выстрела запускает бомбу, которая движется 2 метра, имеет уровень Разрушения 1 и наносит 50% дополнительного урона обычным монстрам.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_33.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Precise Shot',
            'description': {
              'en':
                  'The success bar becomes smaller, but if successful, the attack deals 40% more damage.',
              'ru':
                  'Уменьшает возможность эффективного применения умения, но увеличивает урон на 40%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_72.webp',
          },
          {
            'name': 'Fixed Attack',
            'description': {
              'en':
                  'Becomes a normal skill, which shortens the time before reaching the area of ​​success.',
              'ru': 'Уменьшает время заряда для проведения успешной атаки.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_38.webp',
          },
          {
            'name': 'Overcharge',
            'description': {
              'en':
                  'Becomes a competence with charge. The first charge guarantees the Perfect effect, and the second charge increases the damage by 60%.',
              'ru':
                  'Умение становится удерживаемым. На первом уровне добавляет Идеальный эффект, при перегрузке наносит на 60% больше урона.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_58.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Spinning Fire',
            'description': {
              'en':
                  'You make a turn on yourself and shoot 4 times. Each time you hit an enemy, the cooldown is reduced by 1 second, with a maximum of 15 seconds.',
              'ru':
                  'Вы стреляет 4 раза вокруг себя, каждое попадание сокращает время перезагрузки умения на 1 секунду, максимум на 15 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_40.webp',
          },
          {
            'name': 'Concentrated Strike',
            'description': {
              'en':
                  'Fires your cannon 4 times into the front. Each shots deals 50% increased damage.',
              'ru':
                  'Вы стреляете 4 раза перед собой, каждый выстрел наносит на 50% больше стандартного урона.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_8.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Double Slash',
    'class': {
      'en': 'Berserker',
      'ru': 'Берсерк',
    },
    'description': {
      'en': 'Swing the sword and cause 82x2 damage.',
      'ru': 'Наносит 82х2 урона.'
    },
    'type': 'Normal',
    'cooldown': 6,
    'mana': 45,
    'iconUrl': 'assets/icons/berserker/c02s00.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Enhanced Blow',
            'description': {
              'en':
                  'The time to prepare the attack increases by 0.3 seconds, but the damage to the enemy is increased by 25%.',
              'ru':
                  'Время на подготовку умения увеличено на 0.3 секунды, урон увеличен на 25%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_0.webp',
          },
          {
            'name': 'Shoulder Striking',
            'description': {
              'en': 'When casting a skill, move 2m forward and add 10% damage.',
              'ru':
                  'Совершает выпад на 2 метра веперед, нанося 10% дополнительного урона.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_39.webp',
          },
          {
            'name': 'Quick Hand',
            'description': {
              'en': 'Reduces attack preparation time by 0.3 seconds.',
              'ru': 'Время подготовки умения сокращено на 0.3 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_41.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Ranged Blow',
            'description': {
              'en': 'Attack distance increases by 40%.',
              'ru': 'Дальность умения увеличено на 40%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_7.webp',
          },
          {
            'name': 'Both Ends',
            'description': {
              'en': 'Additional attack with 50% of the damage.',
              'ru': 'Дополнительная атака 50% урона.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_40.webp',
          },
          {
            'name': 'Moving Forward',
            'description': {
              'en':
                  'Each slash attack will move forward 1 meter, allowing you to use skills immediately after the attack.',
              'ru':
                  'Добавляет перемещение на 1 метр за каждый взмах мечом, позволяет использовать умение без подготовки после атаки.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_10.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Hasher',
            'description': {
              'en':
                  'Changes to Holding skill, allow attack up to 8 times. Cooldown increases by 8 seconds.',
              'ru':
                  'Заменяется на удерживаемое умение. Позволяет атаковать до 8 раз. Увеличивает время перезагрузки на 8 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_42.webp',
          },
          {
            'name': 'Cutting Space',
            'description': {
              'en': 'Additional 60% damage.',
              'ru': 'Увеличивает урон на 60%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_88.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Assault Blade',
    'class': {
      'en': 'Berserker',
      'ru': 'Берсерк',
    },
    'description': {'en': 'Deals 148 damage with a sword.', 'ru': 'Наносит 148 урона мечом.'},
    'type': 'Normal',
    'cooldown': 5,
    'mana': 41,
    'iconUrl': 'assets/icons/berserker/c02s01.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Sleek Motion',
            'description': {
              'en': 'Attack speed increases by 10%.',
              'ru': 'Скорось атаки увеличена на 10%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_6.webp',
          },
          {
            'name': 'Piercing Strike',
            'description': {
              'en': 'Ignores 30% of the target\'s defense.',
              'ru': 'Умение игнорирует 30% защиты врага.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_2.webp',
          },
          {
            'name': 'Charmer',
            'description': {
              'en':
                  'Increases the attack range by 10% and interrupts enemies by 0.3s.',
              'ru':
                  'Увеличивает дальность атаки на 10% и прерывает врагов на 0.3 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_17.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Concentration',
            'description': {
              'en': 'Anger gain is increased by 100%.',
              'ru': 'Прирост ярости увеличена на 100%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_37.webp',
          },
          {
            'name': 'Strengthen Cutting',
            'description': {
              'en': 'Skill is given Level 1 Cut.',
              'ru': 'Уровень Разреза увеличен на 1.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_20.webp',
          },
          {
            'name': 'Internal Bleeding',
            'description': {
              'en': 'When a single target is hit, it will bleed for 5s.',
              'ru':
                  'При атаке одиночной цели накладывает эффект кровотечения на 5 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_28.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Cutting',
            'description': {
              'en':
                  'The skill deals an additional hit, for a total of 4 hits. Increases damage done to enemies by 40%.',
              'ru':
                  'Добавляет дополонительную атаку (в сумме 4 разреза). Урон увеличен на 40%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_8.webp',
          },
          {
            'name': 'Counter-Attack',
            'description': {
              'en':
                  'The first attack deals 80% more damage, the sword can be swung again causing 100% damage.',
              'ru': 'Первая атака наносит 80% урона, вторая 100%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_38.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Hazardous Crime',
    'class': {
      'en': 'Berserker',
      'ru': 'Берсерк',
    },
    'description': {
      'en':
          'Deals 71 damage with his sword and jump, inflicting additional 133 damage to enemies in the air and crushing them to the ground',
      'ru':
          'Наносит 71 урона, подбрасывая врагов, и затем 133 урона при ударе в воздухе.'
    },
    'type': 'Normal',
    'cooldown': 9,
    'mana': 57,
    'iconUrl': 'assets/icons/berserker/c02s02.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Muscle Cramps',
            'description': {
              'en': 'Increase knockdown duration by 0.5s.',
              'ru': 'Увеличивает время опрокидывания цели на 0.5 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_51.webp',
          },
          {
            'name': 'Enhanced Blowon',
            'description': {
              'en':
                  'Damage to enemies increases by 25%, but mana consumption increases by 40%.',
              'ru': 'Урон увеличен на 25%, расход маны увеличен на 40%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_0.webp',
          },
          {
            'name': 'Sharp Strike',
            'description': {
              'en': 'Increases critical hit rate by 15%.',
              'ru': 'Шанс критической атаки увеличен на 15%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_4.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Identified Weakness',
            'description': {
              'en':
                  'Increases the damage done to the control immunity enemy by 40%.',
              'ru':
                  'Урон по врагам с невосприимчивостью к эффектам контроля увеличен на 40%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_33.webp',
          },
          {
            'name': 'Concentration',
            'description': {
              'en': 'Anger gain is increased by 100%.',
              'ru': 'Прирост ярости увеличен на 100%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_37.webp',
          },
          {
            'name': 'Strike Sense',
            'description': {
              'en':
                  'Upon the first hit, critical hit rate increases by 20% for 3s.',
              'ru':
                  'После первого удара шанс критического удара увеличен на 20% в течение 3 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_5.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Flame Rush',
            'description': {
              'en':
                  'The last attack is changed to 4 times attack in a row in the air, and the damage increasing by 50% in total.',
              'ru':
                  'Последняя атака заменяется на 4 удара в воздухе, увеличивая урон на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_39.webp',
          },
          {
            'name': 'Red Lightning',
            'description': {
              'en':
                  'First attack has radius 360 degrees. Damage to enemies increases by 75%.',
              'ru':
                  'Наносит увеличенный на 75% урон первой атакой вокруг себя на 360 градусов.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_8.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Finishing Strike',
    'class': {
      'en': 'Berserker',
      'ru': 'Берсерк',
    },
    'description': {
      'en': 'Deals 418 damage with his sword.',
      'ru': 'Наносит 418 урона мечом.'
    },
    'type': 'Normal',
    'cooldown': 18,
    'mana': 85,
    'iconUrl': 'assets/icons/berserker/c02s03.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Strength',
            'description': {
              'en': 'During casting, gain immunity to control effects.',
              'ru':
                  'Во время использования умения добавляет невосприимчивость к эффектам контроля.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_23.webp',
          },
          {
            'name': 'Internal Bleeding',
            'description': {
              'en': 'Applies a 5s bleed on hit.',
              'ru': 'Добавляет эффект кровотечения на 5 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_45.webp',
          },
          {
            'name': 'Enhanced Blow',
            'description': {
              'en':
                  'Increases attack time by 0.5s and increases your damage done by 20%.',
              'ru':
                  'Увеличивает урон на 20% и увеличивает время атаки на 0.5 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_0.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Finish Him',
            'description': {
              'en':
                  'Increases damage done to enemies by 30% with health by less than 50%.',
              'ru': 'Увеличивает на 30% урон по врагам со здоровьем меньше 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_32.webp',
          },
          {
            'name': 'Muscle Cramps',
            'description': {
              'en': 'Knocks down enemies by 1s.',
              'ru': 'Сбивает с ног врагов на 1 секунду.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_51.webp',
          },
          {
            'name': 'Internal Bleeding',
            'description': {
              'en': 'Increases damage done to target by 20% for 3s.',
              'ru': 'Увеличивает урон по цели на 20% в течение 3 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_46.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Shockwave',
            'description': {
              'en':
                  'After the attack, the shock wave will rise and give an additional 20% damage. Damage caused by shock waves increases to 40% to knocked down enemies.',
              'ru':
                  'После атаки создает волну, наносящую дополнительно 20% урона. По оглушенным и сбитым с ног врагам урон увеличен на 40%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_8.webp',
          },
          {
            'name': 'Confirm Kill',
            'description': {
              'en':
                  'The second attack deals 150% damage to the enemy, but the cooldown increases by 6 seconds.',
              'ru':
                  'Позволяет нанести второй удар 150% урона, увеличивая время восстановления умения на 6 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_40.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Shoulder Charge',
    'class': {
      'en': 'Berserker',
      'ru': 'Берсерк',
    },
    'description': {
      'en': 'Charge forward, inflicting 83 damage to enemies on the way.',
      'ru': 'Совершает выпад вперед, нанося 83 урона.'
    },
    'type': 'Normal',
    'cooldown': 14,
    'mana': 74,
    'iconUrl': 'assets/icons/berserker/c02s04.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Shield effect',
            'description': {
              'en':
                  'Creates a shield that absorbs up to 15% of maximum health for 5s.',
              'ru': 'Поглощает урон равный 15% здоровья в течение 5 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_75.webp',
          },
          {
            'name': 'Burning Rage',
            'description': {
              'en':
                  'Attacking nearby enemies by fire with a 10% damage per second for 5s.',
              'ru': 'Добавляет урон огнем, нанося 10% урона в течение 5 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_13.webp',
          },
          {
            'name': 'Excellent Mobility',
            'description': {
              'en': 'Dash distance increases by 2m.',
              'ru': 'Дальность выпада увеличена на 2 метра.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_10.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Rush',
            'description': {
              'en':
                  'Changed to a chain skill that can be used continuously up to 2 times, but the cooldown time increases by 10 seconds.',
              'ru':
                  'Можно мгновенно использовать второй раз, увеличивает время восстановления на 10 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_38.webp',
          },
          {
            'name': 'Hit',
            'description': {
              'en':
                  'The final attack is added, dealing 100 % damage and knockdown.',
              'ru': 'В конце наносит 100% урона и сбивает с ног.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_8.webp',
          },
          {
            'name': 'Scraping',
            'description': {
              'en':
                  'Changes to fast attack and cuts enemies on the path without collision.',
              'ru': 'Выпад не прерывается при столкновении с врагами.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_39.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Earthquake',
            'description': {
              'en':
                  'Element changed to Earth, gives 30% damage in the radius of 5m radius, and makes the earthquake for 4s.',
              'ru':
                  'После выпада создает землетрясение в радиусе 5 метров, нанося 30% урона в течение 4 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_15.webp',
          },
          {
            'name': 'Anger Explosion',
            'description': {
              'en':
                  'Element changed to Fire, causing explosion after rushing, causing 100% damage within 5m radius and throws enemies in the air.',
              'ru':
                  'После выпада создает огненный взрыв, нанося 100% урона в радиусе 5 метров и подбрасывая врагов в воздух.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_78.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Whirlwind',
    'class': {
      'en': 'Berserker',
      'ru': 'Берсерк',
    },
    'description': {
      'en': 'Spin with your sword to deals 586 damage over 4 seconds.',
      'ru': 'Наносит 586 урона вокруг в течение 4 секунд.'
    },
    'type': 'Hold 4 sec',
    'cooldown': 24,
    'mana': 101,
    'iconUrl': 'assets/icons/berserker/c02s05.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Lightfoot',
            'description': {
              'en': 'Increases movement speed by 10% while using the skill.',
              'ru':
                  'Увеличивает скорость передвижения на 10% при использовании умения.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_11.webp',
          },
          {
            'name': 'Sustainability',
            'description': {
              'en': 'Holding duration increases to a maximum of 5s.',
              'ru': 'Время применения увеличено до 5 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_42.webp',
          },
          {
            'name': 'Quick Preparation',
            'description': {
              'en':
                  'The cooldown time is reduced by 12 seconds, but the using time is reduced by 2 seconds.',
              'ru':
                  'Время восстановления уменьшено на 12 секунд, время применения уменьшено на 2 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Forward Cut',
            'description': {
              'en': 'When casting a skill, move 4m forward and add 20% damage.',
              'ru':
                  'Перед атакой перемещается на 4 метра вперед, увеличивает урон на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_39.webp',
          },
          {
            'name': 'Chain Wheel',
            'description': {
              'en':
                  'As you continually attack an enemy, your damage will increase by 6% (per strike), up to 60% total.',
              'ru':
                  'При каждом попадании увеличивает урон на 6%, максимум до 60% в сумме.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_58.webp',
          },
          {
            'name': 'Cleft Blade',
            'description': {
              'en':
                  'An additional attack range equivalent to 40% of the attack range is created outside of Wheelwind.',
              'ru': 'Дополнительная область атаки вокруг основной, равной 40%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_0.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Vacuum Cut',
            'description': {
              'en':
                  'Attack range is increased by 20%, attack rate is doubled, but damage is reduced by 50%.',
              'ru':
                  'Дальность атаки увеличена на 20%, количество ударов увеличено вдвое, урон уменьшен на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_7.webp',
          },
          {
            'name': 'Hurricane',
            'description': {
              'en':
                  'If hold to the end the whirlwind inflicts 60% damage and throw enemy in the air.',
              'ru':
                  'При полном завершении атаки наносит дополнительно 60% урона и подбрасывает врага в воздух.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_40.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Power Break',
    'class': {
      'en': 'Berserker',
      'ru': 'Берсерк',
    },
    'description': {
      'en':
          'Concentrate energy into the sword to deal 347 damage and knockback enemies.',
      'ru': 'Концентрирует энергию и наносит 347 урона, отбрасывая врагов.'
    },
    'type': 'Normal',
    'cooldown': 18,
    'mana': 85,
    'iconUrl': 'assets/icons/berserker/c02s06.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Critical Hit',
            'description': {
              'en': 'Increases critical hit rate by 15%.',
              'ru': 'Шанс критическог удара увеличен на 15%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_4.webp',
          },
          {
            'name': 'Sleek Motion',
            'description': {
              'en': 'Attack speed increased by 10%.',
              'ru': 'Скорость атаки увеличена на 10%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_6.webp',
          },
          {
            'name': 'Mental Fortification',
            'description': {
              'en': 'Mana cost reduced by 50%.',
              'ru': 'Потребление маны уменьшено на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_34.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Ranged Blow',
            'description': {
              'en': 'Attack range increased by 20%.',
              'ru': 'Дальность атаки увеличена на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_7.webp',
          },
          {
            'name': 'Enhanced Strike',
            'description': {
              'en': 'Damage to enemies increased by 25%.',
              'ru': 'Урон увеличен на 25%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_0.webp',
          },
          {
            'name': 'Defenseless Target',
            'description': {
              'en': 'Increases damage done to knocked down targets by 40%.',
              'ru': 'Урон по опрокинутым врагам увеличен на 40%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_29.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Power Accumulation',
            'description': {
              'en':
                  'Skill Type is changed to Charge Type, 100% damage for charge and 250% for overcharge, but the cooldown time increases by 18s.',
              'ru':
                  'Умение можно заряжать, увеличивая урон на 100%. При перегрузе умения урон увеличен на 250%, увеличивая время восстановления на 18 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_42.webp',
          },
          {
            'name': 'Swirl',
            'description': {
              'en':
                  'Attacks enemies in 360 degrees. Increases damage done by 50%',
              'ru':
                  'Атакует врагов вокруг себя на 360 градусов, увеличивает урон на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_39.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Tempest Slash',
    'class': {
      'en': 'Berserker',
      'ru': 'Берсерк',
    },
    'description': {
      'en':
          'Charge forward and swing sword to deal 134 damage and throw enemies into the air, and deal additional 94-94-215 in the row.',
      'ru':
          'Делает выпад вперед, нанося 134 урона и подбрасывая врагов в воздух. Затем наносит подряд 94-94-215 урона.'
    },
    'type': 'Combo',
    'cooldown': 24,
    'mana': 101,
    'iconUrl': 'assets/icons/berserker/c02s07.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Concentration',
            'description': {
              'en': 'Anger gain is increased by 50%.',
              'ru': 'Ярость восстанавливается на 50% быстрее.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_37.webp',
          },
          {
            'name': 'Sleek Motion',
            'description': {
              'en': 'Attack speed increased by 10%.',
              'ru': 'Скорость атаки увеличена на 10%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_6.webp',
          },
          {
            'name': 'Quick Preparation',
            'description': {
              'en': 'Cooldown time decreases by 2s.',
              'ru': 'Время восстановления умения уменьшено на 2 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Quick Hit',
            'description': {
              'en': 'Increases critical hit rate by 30%.',
              'ru': 'Увеличивает шанс критического урона на 30%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_4.webp',
          },
          {
            'name': 'Enhanced Strike',
            'description': {
              'en': 'Damage to enemies is increased by 25%.',
              'ru': 'Урон увеличен на 25%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_0.webp',
          },
          {
            'name': 'Heavy Strike',
            'description': {
              'en': 'Increased damage by 40% to enemies with control immunity.',
              'ru':
                  'Урон увеличен на 40% по врагам, невосприимчивым к эффектам контроля.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_33.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Stir',
            'description': {
              'en':
                  'Removes first attack and does not move forward. Air rotation attack changed to 3 turns dealing damage increases by 60%.',
              'ru':
                  'Убирает первую атаку и не делает выпад вперед. Атака по целям в воздухе наносит на 60% больше урона.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_39.webp',
          },
          {
            'name': 'Storm Cut',
            'description': {
              'en':
                  'The attack range is increased by 20%, and the last attack is changed to slash. Damage to enemies increases by 80%.',
              'ru':
                  'Дальность атаки увеличена на 20%. Последняя атака заменяется на удар, наносящий на 80% урона больше.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_8.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Mountain Crash',
    'class': {
      'en': 'Berserker',
      'ru': 'Берсерк',
    },
    'description': {
      'en': 'Powerful stomp, dealing 143 damage and creates earthquake for 2s.',
      'ru':
          'Удар ногой по земле, наносящий 143 урона. Создает землетрясение на 2 секунды.'
    },
    'type': 'Normal',
    'cooldown': 12,
    'mana': 67,
    'iconUrl': 'assets/icons/berserker/c02s08.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Quick Preparation',
            'description': {
              'en': 'Cooldown time decreases by 2s.',
              'ru': 'Время восстановления уменьшено на 2 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.webp',
          },
          {
            'name': 'Concentrated',
            'description': {
              'en': 'Increases rage gain by 100%.',
              'ru': 'Прирост ярости увеличен на 100%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_37.webp',
          },
          {
            'name': 'Reinforce',
            'description': {
              'en': 'The duration of the earthquake increases by 1s.',
              'ru': 'Продолжительность землетрясения увеличено на 1 секунду.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_51.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Enhanced Strike',
            'description': {
              'en': 'Damage to enemies is increased by 30%.',
              'ru': 'Урон увеличен на 30%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_0.webp',
          },
          {
            'name': 'Excellent Mobility',
            'description': {
              'en': 'Attack speed increases by 25% for 3s.',
              'ru': 'Скорость атаки увеличена на 25% в течение 3 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_48.webp',
          },
          {
            'name': 'Slowdown Effect',
            'description': {
              'en':
                  'Decreases the attack speed of the target by 20% and the movement speed by 40% for 4s.',
              'ru':
                  'Сокращает скорость атаки цели на 20% и скорость перемещения на 40% в течение 4 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_47.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Seismic Wave',
            'description': {
              'en':
                  'Creates waves within 8 meters, that have 20% increased critical hit chance and deal 80% more damage.',
              'ru':
                  'Создает волны радиусом действия 8 метров, шансом критического удара 20% и уроном 80%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_8.webp',
          },
          {
            'name': 'Land Conflict',
            'description': {
              'en':
                  'Earthquake pulling the enemy, maintains the area for 6 seconds, and creates an area that deals damage every second.',
              'ru':
                  'Землетрясение притягивает врагов в центр, нанося урон, длительностью 6 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_15.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Diving Slash',
    'class': {
      'en': 'Berserker',
      'ru': 'Берсерк',
    },
    'description': {
      'en':
          'Jump and crush the enemies with his sword dealing 134 damage and knocking them down.',
      'ru': 'Подпрыгивает и наносит 134 урона мечом, сбивая с ног.'
    },
    'type': 'Point',
    'cooldown': 16,
    'mana': 80,
    'iconUrl': 'assets/icons/berserker/c02s09.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Excellent Mobility',
            'description': {
              'en': 'Jump distance increased by 2m.',
              'ru': 'Дистанция прыжка увеличена на 2 метра.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_10.webp',
          },
          {
            'name': 'Concentration',
            'description': {
              'en': 'Anger gain increased by 50%.',
              'ru': 'Прирост ярости увеличен на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_37.webp',
          },
          {
            'name': 'Quick Preparation',
            'description': {
              'en': 'Cooldown time decreases by 3s.',
              'ru': 'Время восстановления уменьшено на 3 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Fast Movement',
            'description': {
              'en': 'Increases movement speed by 30% for 3s.',
              'ru':
                  'Увеличивает скорость передвижения на 30% в течение 3 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_11.webp',
          },
          {
            'name': 'Great Sword Again',
            'description': {
              'en':
                  'No longer knocks downs enemies, but increases attack speed by 20% for 3s.',
              'ru':
                  'Не сбивает с ног, но увеличивает скорость атаки на 20% в течение 3 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_9.webp',
          },
          {
            'name': 'Muscle Training',
            'description': {
              'en': 'Increases knockdown duration by 1s.',
              'ru': 'Длительность эффекта опрокидывания увеличена на 1 секунду.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_51.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Power Slash',
            'description': {
              'en':
                  'Preparation time is added, but damage done is increased by 200%.',
              'ru':
                  'Увеличивает время подготовки умения, увеличивает урон на 200%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_0.webp',
          },
          {
            'name': 'Sword Fragment',
            'description': {
              'en':
                  'Increasing the Incapacitate to medium level and causing the enemy to have a critical bleed for 4s.',
              'ru':
                  'Увеличивает эффект Ослабления до среднего и накладывает эффект кровотечения на 4 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_45.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Hell Blade',
    'class': {
      'en': 'Berserker',
      'ru': 'Берсерк',
    },
    'description': {
      'en':
          'Stab sword into the ground deals 49 damage, enabling you to hold for up to 2s dealing 143 damage. By successfully hit perfect zone, deal additional 771 damage and throw enemies into the air.',
      'ru':
          'Вонзает меч в землю, нанося 49 урона. Продолжая удерживать в течение 2 секунд наносит 143 урона. При идеальном попадании в зону каста наносит 771 урона и подбрасывает врагов в воздух.'
    },
    'type': 'Hold 2.5 sec',
    'cooldown': 36,
    'mana': 127,
    'iconUrl': 'assets/icons/berserker/c02s10.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Training Performance',
            'description': {
              'en': 'Attack range increased by 30%.',
              'ru': 'Дальность атаки увеличена на 30%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_7.webp',
          },
          {
            'name': 'Jump',
            'description': {
              'en': 'Jump to the desired position up to 8m and attack.',
              'ru':
                  'Перед атакой прыгните в указанное место в радиусе 8 метров.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_10.webp',
          },
          {
            'name': 'Absorption',
            'description': {
              'en': 'Pulls the enemy within 5m.',
              'ru': 'Притягивает врагов в радиусе 5 метров.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_71.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Fusion',
            'description': {
              'en':
                  'When taking damage, the damage done by your Hellblade increases by 10%, up to 50%.',
              'ru':
                  'Получая урон при применении умения, урон Hellblade увеличивается на 10%, в сумме до 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_46.webp',
          },
          {
            'name': 'Lava Eruption',
            'description': {
              'en':
                  'A lava zone with a total damage of 50% is created during 6 seconds after the final attack.',
              'ru':
                  'После завершения атаки создает зону, заполненную лавой и наносящей 50% урона в течение 6 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_85.webp',
          },
          {
            'name': 'Imortal Blow',
            'description': {
              'en':
                  'If you have less than 50% of your health, your damage will increase by 80%.',
              'ru': 'Урон увеличен на 80%, если уровень здоровья ниже 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_32.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Flip the Land',
            'description': {
              'en':
                  '[Earth] Stab sword deeper and attack again with 60% of the damage.',
              'ru':
                  '[Земля] Наносит дополнительно урон элементом Земли в размере 60%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_15.webp',
          },
          {
            'name': 'Blood Ejection',
            'description': {
              'en':
                  'It is changed to [fire], and it executes the finish attack immediately.',
              'ru': 'Наносит мгновенный урон огнем при завершении атаки.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_13.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Chain Sword',
    'class': {
      'en': 'Berserker',
      'ru': 'Берсерк',
    },
    'description': {
      'en':
          'Deal a diagonal sword strike that deals 130 damage and throws enemies in the air.',
      'ru':
          'Наносит диагональный взмах мечом, нанося 130 урона и подбрасывая врагов в воздух.'
    },
    'type': 'Normal',
    'cooldown': 15,
    'mana': 77,
    'iconUrl': 'assets/icons/berserker/c02s11.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Quick Hit',
            'description': {
              'en': 'critical hit rate increased by 15% for 3s.',
              'ru':
                  'Вероятность критического удара увеличена на 15% в течение 3 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_4.webp',
          },
          {
            'name': 'Exceptional Maneuverability',
            'description': {
              'en': 'Attack with 5 meters forward.',
              'ru': 'Делает выпад на 5 метров вперед.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_10.webp',
          },
          {
            'name': 'Sleek Motion',
            'description': {
              'en': 'Preparation time is greatly reduced.',
              'ru': 'Сокращает время подготовки умения.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_6.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Annihilate',
            'description': {
              'en':
                  'After the first attack, it strikes an additional court, causing 200% of damage and then knockdown to the enemy.',
              'ru':
                  'Совершает дополнительную атаку, наносящую 200% урона и сбивая с ног.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_39.webp',
          },
          {
            'name': 'Geomorphic',
            'description': {
              'en': 'Applies a 5s bleed on hit.',
              'ru': 'Добавляет эффект кровотечения на 5 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_45.webp',
          },
          {
            'name': 'Rapid Preparation',
            'description': {
              'en': 'Attack speed increases 25% for 3 seconds when hit.',
              'ru': 'Скорость атаки увеличена на 25% в течение 3 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_48.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Quick Preparation',
            'description': {
              'en':
                  'Reduces the cooldown by 7s, but reduces damage done by 50%.',
              'ru': 'Сокращает время восстановления умения и урон на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_56.webp',
          },
          {
            'name': 'Enhanced Blow',
            'description': {
              'en':
                  'Increases attack radius by 20%. Increases damage to enemies by 50%.',
              'ru': 'Увеличивает радиус атаки на 20% и урон на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_7.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Wind Blade',
    'class': {
      'en': 'Berserker',
      'ru': 'Берсерк',
    },
    'description': {
      'en': 'Swing your sword around while moving to deal 425 damage.',
      'ru': 'Перемещается вперед, размахивая мечом и нанося 425 урона.'
    },
    'type': 'Normal',
    'cooldown': 20,
    'mana': 91,
    'iconUrl': 'assets/icons/berserker/c02s12.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Swift Movement',
            'description': {
              'en': 'Increases movement speed by 15% for 5s.',
              'ru':
                  'Увеличивает скорость перемещения на 15% в течение 5 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_11.webp',
          },
          {
            'name': 'Internal Bleeding',
            'description': {
              'en': 'Applies 5s of bleeding.',
              'ru': 'Добавляет эффект кровотечения на 5 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_45.webp',
          },
          {
            'name': 'Quick Preparation',
            'description': {
              'en': 'Cooldown time reduced by 4s.',
              'ru': 'Время восстановления умения сокращено на 4 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Enhanced Strike',
            'description': {
              'en': 'Damage done increased by 25%.',
              'ru': 'Урон увеличен на 25%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_0.webp',
          },
          {
            'name': 'Quick Hit',
            'description': {
              'en': 'critical hit rate increased by 30%.',
              'ru': 'Шанс критического удара увеличен на 30%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_4.webp',
          },
          {
            'name': 'Concentration',
            'description': {
              'en': 'Anger gain increased by 100%.',
              'ru': 'Прирост ярости увеличен на 100%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_37.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Squall',
            'description': {
              'en': 'Attack three times with total damage increases by 80%.',
              'ru': 'Атакует три раза увеличивая наносимый урон на 80%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_40.webp',
          },
          {
            'name': 'Windswift',
            'description': {
              'en': 'Total damage increases by 40%.',
              'ru': 'Скорость атаки увеличена. Урон увеличен на 40%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_39.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Maelstorm',
    'class': {
      'en': 'Berserker',
      'ru': 'Берсерк',
    },
    'description': {
      'en':
          'Strike with your sword to deal 185 damage, and pull the sword out of the ground to deal 123 damage and pull the enemy towards you.',
      'ru':
          'Наносит мечом 185 урона, далее притягивает врагов нанося 123 урона.'
    },
    'type': 'Combo',
    'cooldown': 15,
    'mana': 77,
    'iconUrl': 'assets/icons/berserker/c02s13.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Sleek Motion',
            'description': {
              'en': 'Increases attack speed by 10%.',
              'ru': 'Скорость атаки увеличена на 10%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_6.webp',
          },
          {
            'name': 'Mental Fortification',
            'description': {
              'en': 'Mana Consumption reduced by 50%.',
              'ru': 'Потребление маны уменьшено на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_34.webp',
          },
          {
            'name': 'Concentration',
            'description': {
              'en': 'Anger gain increased by 50%.',
              'ru': 'Прирост ярости увеличен на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_37.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Strength',
            'description': {
              'en': 'Become immune to cotrol effects during skill use.',
              'ru':
                  'Невосприимчивость к эффектам контроля во время использования умения.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_23.webp',
          },
          {
            'name': 'Enhanced Strike',
            'description': {
              'en': 'Damage done increased by 25%.',
              'ru': 'Урон увеличен на 25%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_0.webp',
          },
          {
            'name': 'Quick Hit',
            'description': {
              'en':
                  'Critical hit chance increases by 25% for 4 seconds when hit.',
              'ru':
                  'Шанс критического удара увеличен на 25% в течение 4 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_4.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Flame Swirl',
            'description': {
              'en':
                  'A delayed explosion occurs after the second strike, causing 40% additional damage and throw enemies in the air.',
              'ru':
                  'Наносит 40% дополнительно урона после завершения атаки и подбрасывает врагов в воздух.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_8.webp',
          },
          {
            'name': 'Depression',
            'description': {
              'en':
                  'Increases attack range by 20% and increases skill damage by 30%. Stiffen time of the second strike increased by 1s.',
              'ru':
                  'Дистанция атаки увеличена на 20%, урона на 30%. Время прерывания второй атаки увеличено на 1 секунду.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_15.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Strike Wave',
    'class': {
      'en': 'Berserker',
      'ru': 'Берсерк',
    },
    'description': {
      'en':
          'Attack can be charged on 2 levels that smash the ground with a beam, inflicting 349 damage at first level and 873 at second.',
      'ru':
          'Наносит 349 урона на дистанции при неполном заряде. При перегрузе умения наносит 873 урона.'
    },
    'type': 'Hold',
    'cooldown': 36,
    'mana': 127,
    'iconUrl': 'assets/icons/berserker/c02s14.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Wave',
            'description': {
              'en':
                  'Increases the damage done to enemies by 10% during each charge phase.',
              'ru': 'Урон увеличен на 10% за каждый уровень заряда.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_0.webp',
          },
          {
            'name': 'Rapid Accumulation',
            'description': {
              'en': 'Charge time is reduced by 20%.',
              'ru': 'Время полного заряда уменьшено на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_41.webp',
          },
          {
            'name': 'Quick Preparation',
            'description': {
              'en': 'Cooldown reduced by 4s.',
              'ru': 'Время восстановления умения уменьшено на 4 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Cerberus',
            'description': {
              'en': 'If over-charge, break into three parts and attack.',
              'ru': 'При перегрузе умения луч разделяется на 3 части.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_7.webp',
          },
          {
            'name': 'Limit breakthrough',
            'description': {
              'en':
                  'Increases the charge phase by one step, reducing the time it takes to charge by 0.1 seconds, and increasing the damage done by the overcharge to the enemy by 40%.',
              'ru':
                  'Добавляет еще одну фазу заряда, сокращая время каждой на 0.1 секунды. Урон перегруза умения увеличен на 40%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_58.webp',
          },
          {
            'name': 'Blasting',
            'description': {
              'en':
                  'If over-charge occurs, it explodes at the end of the attack, dealing an additional 50% of damage to the enemy.',
              'ru':
                  'Перегруз умения сопровождается дополнительным уроном равным 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_8.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Blaze Wave',
            'description': {
              'en':
                  '[Fire] Additional 60% of first charge stage damage due to the flame explosion from the cracks in the ground.',
              'ru': '[Огонь] Наносит 60% урона огнем от первой фазы заряда.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_13.webp',
          },
          {
            'name': 'Flip the Land',
            'description': {
              'en':
                  '[Earth] Earthquakes slowly attack up to 4 times, but damage per attack is reduced by 50%.',
              'ru':
                  '[Земля] Создает землетрясение, состоящее из 4 медленных волн, наносящее 50% урона.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_15.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Red Dust',
    'class': {
      'en': 'Berserker',
      'ru': 'Берсерк',
    },
    'description': {
      'en': 'Deals 351 damage. Increases damage by 12% for 6 seconds.',
      'ru': 'Наносит 351 урона. Увеличивает урон на 12% в течение 6 секунд.'
    },
    'type': 'Normal',
    'cooldown': 30,
    'mana': 114,
    'iconUrl': 'assets/icons/berserker/c02s15.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Quick Preparation',
            'description': {
              'en': 'Reduces cooldown time by 5s.',
              'ru': 'Время восстановления умения сокращено на 5 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.webp',
          },
          {
            'name': 'Sleek Motion',
            'description': {
              'en': 'Attack speed increased by 20%.',
              'ru': 'Скорость атаки увеличена на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_6.webp',
          },
          {
            'name': 'Mental Fortification',
            'description': {
              'en': 'Mana Consumption reduced by 50%.',
              'ru': 'Потребление маны уменьшено на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_34.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Quick Hit',
            'description': {
              'en': 'On hit, critical hit rate increased by 20% for 6s.',
              'ru':
                  'Шанс критического удара увеличен на 20% в течение 6 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_4.webp',
          },
          {
            'name': 'Cut Enhancement',
            'description': {
              'en': 'The skill is given a level 2 cut.',
              'ru': 'Уровень Разреза увеличен на 1.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_20.webp',
          },
          {
            'name': 'Blood Stasis',
            'description': {
              'en':
                  'Increases the struck time of a hit enemy by 0.5 seconds, and makes it bleed for 5 seconds.',
              'ru':
                  'Увеличивает время прерывания на 0.5 секунд и накладывает кровотечение на 5 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_45.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Red Fly',
            'description': {
              'en': 'Damage increases by 125% and attack distance by 25%.',
              'ru': 'Урон увеличен на 125% и дальность атаки на 25%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_0.webp',
          },
          {
            'name': 'Damage Boost',
            'description': {
              'en':
                  'Attack damage increases by 30% for 6 seconds for target and party members.',
              'ru': 'Урон увеличен на 30% в течение 6 секунд для группы.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_2.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Blade Storm',
    'class': {
      'en': 'Berserker',
      'ru': 'Берсерк',
    },
    'description': {
      'en':
          'Jump and create a black storm dealing 507 damage, throws the enemies in the air.',
      'ru': 'Подпрыгивает и создает шторм, наносящий 507 урона. Подкидывает врагов в воздух.'
    },
    'type': 'Normal',
    'cooldown': 30,
    'mana': 114,
    'iconUrl': 'assets/icons/berserker/c02s16.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Sleek Motion',
            'description': {
              'en': 'Attack speed increased by 10%.',
              'ru': 'Скорость атаки увеличена на 10%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_6.webp',
          },
          {
            'name': 'Quick Preparation',
            'description': {
              'en': 'Cooldown time reduces by 4s.',
              'ru': 'Время восстановления умения сокращено на 4 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.webp',
          },
          {
            'name': 'Quick Hit',
            'description': {
              'en': 'critical hit rate increased by 15%.',
              'ru': 'Шанс критического удара увеличен на 15%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_4.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Backbreak',
            'description': {
              'en':
                  'After the attack, an explosion occurs in the area causing an additional 20% damage.',
              'ru': 'Дополнительная атака 20% урона.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_8.webp',
          },
          {
            'name': 'Weak Spot Capture',
            'description': {
              'en':
                  'Increases the damage done to the enemy with control immunity by 40%.',
              'ru':
                  'Урон увеличен на 40% по врагам невосприимчивым к эффектам контроля.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_33.webp',
          },
          {
            'name': 'Strength',
            'description': {
              'en': 'Become immune to cotrol effects during skill use.',
              'ru':
                  'Невосприимчивость к эффектам контроля во время использования умения.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_23.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Fire Storm',
            'description': {
              'en':
                  '[Fire] Deals damage over 6 seconds. If your health is below 50%, your damage will increase 100%.',
              'ru':
                  '[Огонь] Наносит урон огнем в течение 6 секунд. Урон увеличен на 100%, если уровень здоровья ниже 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_13.webp',
          },
          {
            'name': 'Seismic Wave',
            'description': {
              'en':
                  'Instead of a float effect, the attack damage is increased by 30% and causes unsteady ground beneath the enemy for 4s.',
              'ru':
                  'Вместо опрокидывания создает землетрясение на 4 секунды и увеличивает урон на 40%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_15.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Aurora Blade',
    'class': {
      'en': 'Berserker',
      'ru': 'Берсерк',
    },
    'description': {
      'en':
          'Slash into the air, causing a wave of energy which does 291 ranged attack damage.',
      'ru': 'Наносит 291 урона на расстоянии.'
    },
    'type': 'Normal',
    'cooldown': 16,
    'mana': 80,
    'iconUrl': 'assets/icons/berserker/c02s17.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Sleek Motion',
            'description': {
              'en': 'Increases attack speed by 10%.',
              'ru': 'Скорость атаки увеличена на 10%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_6.webp',
          },
          {
            'name': 'Quick Preparation',
            'description': {
              'en': 'Cooldown time reduces by 2s.',
              'ru': 'Время восстановления умения сокращено на 2 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.webp',
          },
          {
            'name': 'Ranged Blow',
            'description': {
              'en': 'Skill use distance increases by 2m.',
              'ru': 'Дальность применения умения увеличено на 2 метра.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_52.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Strengthen Cutting',
            'description': {
              'en': 'Increases cut level to 2.',
              'ru': 'Уровень Разреза увеличен до 2.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_20.webp',
          },
          {
            'name': 'Cadaver',
            'description': {
              'en': 'Decreases enemy attack speed by 15% for 5s.',
              'ru': 'Скорость атаки врага уменьшена на 15% в течение 5 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_45.webp',
          },
          {
            'name': 'Destruction',
            'description': {
              'en': 'Ignores 40% of the magic armor of enemies hit.',
              'ru': 'Игнорирует 40% магической брони врага.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_2.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Space Cut',
            'description': {
              'en':
                  'Aurora blade is modified to attack 3 times at the target position, increasing damage done by 75%.',
              'ru': 'Атакует три раза, увеличивая наносимый урон до 75%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_39.webp',
          },
          {
            'name': 'Extinction',
            'description': {
              'en':
                  'Adds additional slash with the critical hit rate is increase by 30% and deals 50% of the base attack damage.',
              'ru':
                  'Дополнительный удар наносит 50% урона с шансом критического удара 30%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_38.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Heavy Crush',
    'class': {
      'en': 'Destroyer',
      'ru': 'Сокрушитель',
    },
    'description': {
      'en':
          'Infuses your hammer with gravity energy and then slams it down in front of you',
      'ru': 'Ударяет молотом нанося 165 урона.'
    },
    'type': 'Normal',
    'cooldown': 5,
    'mana': 41,
    'iconUrl': 'assets/icons/destroyer/c00s00.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Quick Hit',
            'description': {
              'en': 'Reduces the casting time by 0.3 seconds.',
              'ru': 'Уменьшает время приготовления умения на 0.3 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_40.webp',
          },
          {
            'name': 'Dark Matter',
            'description': {
              'en':
                  '[Shadow] Increases the chance to deal a critical strike by 15%.',
              'ru': '[Тьма] Шанс критического удара увеличен до 15%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_19.webp',
          },
          {
            'name': 'Force of the Earth',
            'description': {
              'en': '[Earth] Increases damage by 10%.',
              'ru': '[Земля] Увеличивает урон на 10%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_15.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Crush',
            'description': {
              'en':
                  'Reduces the movement speed of enemies by 20% for 5 seconds.',
              'ru':
                  'Уменьшает скорость перемещения врагов на 20% в течение 5 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_47.webp',
          },
          {
            'name': 'Lucky Core',
            'description': {
              'en':
                  'In case of a successful attack, you have a 30% chance of getting a kernel of gravity.',
              'ru': 'Шанс получит дополнительный заряд увеличен на 30%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_36.webp',
          },
          {
            'name': 'Defenseless Target',
            'description': {
              'en':
                  'Deals 30% additional damage to knockdown or stunned enemies.',
              'ru':
                  'Наносит 30% дополнительного урона по оглушенным или опрокинутым врагам.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_30.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Wide Hit',
            'description': {
              'en': 'Attack range increases by 30%.',
              'ru': 'Дистанция атаки увеличена на 30%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_7.webp',
          },
          {
            'name': 'Aftershock',
            'description': {
              'en':
                  'Your attack creates an earthquake that stays 5 seconds and deals 50% additional damage.',
              'ru':
                  'Создает землетрясение, наносящее 50% дополнительного урона в течение 5 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_22.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Gravity Impact',
    'class': {
      'en': 'Destroyer',
      'ru': 'Сокрушитель',
    },
    'description': {
      'en':
          'You hit down to inflict 50 damage, and you create a gravity zone. The area deals 8 times 148 total damage to the enemies and draws them to its center. Then the area explodes to inflict 50 damage again.',
      'ru':
          'Наносит 50 урона и создает область повышенной гравитации, которая пульсирует 8 раз нанося в сумме 148 урона и стягивая врагов. В конце область взрывается нанеся 50 урона.'
    },
    'type': 'Normal',
    'cooldown': 12,
    'mana': 67,
    'iconUrl': 'assets/icons/destroyer/c00s01.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Improved Recharging',
            'description': {
              'en':
                  'For each enemy hit, decreases the cooldown by 0.5 seconds, with a maximum of 4 seconds.',
              'ru':
                  'За каждый первый удар по врагам сокращает время восстановления умения на 0.5 секунд, максимум до 4 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.webp',
          },
          {
            'name': 'Gravity Enhancement',
            'description': {
              'en': 'Mana cost is reduced by 50%.',
              'ru': 'Потребление маны сокращено на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_34.webp',
          },
          {
            'name': 'Lucky Core',
            'description': {
              'en': 'Successful hits grant a 75% chance to gain an extra core.',
              'ru':
                  'Увеличивает шанс получения дополнительного заряда на 75% при успешной атаке.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_36.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Solid Soul',
            'description': {
              'en':
                  'For each enemy hit, reduces damage taken by 10% for 5 seconds, with a maximum of 60%.',
              'ru':
                  'За каждый первый удар по врагам сокращает получаемый урон на 10% в течение 5 секунд, максимум 60%,.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_25.webp',
          },
          {
            'name': 'Hearthless Vengeance',
            'description': {
              'en':
                  'Increases damage by 5% at each hit, with a maximum of 50%.',
              'ru': 'Увеличивает урон на 5% за каждый удар, максимум до 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_50.webp',
          },
          {
            'name': 'Gravity Echo',
            'description': {
              'en': 'Stun for 2 seconds at the moment of exploding gravity.',
              'ru': 'Взрыв области оглушает на 2 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_44.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Wisdom of Energy',
            'description': {
              'en': 'Area range increased by 40%.',
              'ru': 'Радиус действия области увеличен на 40%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_8.webp',
          },
          {
            'name': 'Empowered Will',
            'description': {
              'en':
                  'Instead of creating a vortex, generate a powerful gravity sphere that pulls foes toward it.',
              'ru': 'Вместо области создает сферу.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_53.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Dreadnought',
    'class': {
      'en': 'Destroyer',
      'ru': 'Сокрушитель',
    },
    'description': {
      'en':
          'Concentrates gravity energy within your hammer, then smashes it to the ground dealing 97 damage. Launches you into the air, dealing 123 damage to foes upon landing.',
      'ru':
          'Ударяет по земле нанося 97 урона, подбрасывая вас в воздух. При приземлении наносит 123 урона.'
    },
    'type': 'Normal',
    'cooldown': 10,
    'iconUrl': 'assets/icons/destroyer/c00s02.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Toughness',
            'description': {
              'en':
                  'Invulnerable to crowd control effects while performing the skill.',
              'ru':
                  'Невосприимчивость к эффектам контроля во время использования умения.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_23.webp',
          },
          {
            'name': 'Unbearable Strength',
            'description': {
              'en':
                  'Ignores 30% of physical armor on any target with the control immunity status.',
              'ru':
                  'Игнорирует 30% физической защиты врагов под эффектом невосприимчивости контролю.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_2.webp',
          },
          {
            'name': 'Superior Transition',
            'description': {
              'en': 'Increases the distance jump by 1m.',
              'ru': 'Дальность прыжка увеличена на 1 метр.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_10.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Solid Body',
            'description': {
              'en': 'Reduces damage taken by 30% during casting.',
              'ru': 'Получаемый урон снижен на 30% при использовании умения.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_25.webp',
          },
          {
            'name': 'Sharpened Hammer',
            'description': {
              'en':
                  'Successful first hit with the hammer deal 40% more damage to the target.',
              'ru': 'Успешный первый удар наносит на 40% урона больше.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_63.webp',
          },
          {
            'name': 'Hammer Rampage',
            'description': {
              'en':
                  'Landing successful hits on at least 2 foes deals 10% more damage. Landing successful hits on 8 foes deals 80% more.',
              'ru':
                  'При приземлении наносит от 10% дополнительного урона за каждого задетого врага. До 80% урона в сумме.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_58.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Shining Strike',
            'description': {
              'en':
                  'Landing throws enemies in the air and deals 30% increased damage.',
              'ru':
                  'При приземлении подбрасывает врагов и увеличивает наносимый урон на 30%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_53.webp',
          },
          {
            'name': 'Raging Hammer',
            'description': {
              'en':
                  'Smashing the hammer on the ground rebounds you into the air, dealing 60% increased damage to enemies upon landing.',
              'ru':
                  'Подбрасывает врагов при приземлении, нанося на 60% больше урона.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_39.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Power Shoulder',
    'class': {
      'en': 'Destroyer',
      'ru': 'Сокрушитель',
    },
    'description': {
      'en':
          'Charge 5m forward, dealing 63 damage to enemies. An additional combo attack deals 187 damage with an upward strike.',
      'ru':
          'Делает выпад на 5 метров вперед нанося 63 урона за 4 удара. Повторное использование наносит 187 урона.'
    },
    'type': 'Combo',
    'cooldown': 12,
    'mana': 67,
    'iconUrl': 'assets/icons/destroyer/c00s03.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Iron Skin',
            'description': {
              'en':
                  'Gain a 30% damage reduction bonus while you are performing the skill.',
              'ru':
                  'Получаемый урон снижен на 30% во время использования умения.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_25.webp',
          },
          {
            'name': 'Victorious Contract',
            'description': {
              'en': 'The second attack deals 20% additional damage.',
              'ru': 'Вторая атака наносит 20% дополнительного урона.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_0.webp',
          },
          {
            'name': 'Critical Strength',
            'description': {
              'en':
                  'Attack speed is reduced by 15%, but damage done increases by 30%.',
              'ru': 'Скорость атаки снижена на 15%, урон увеличен на 30%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_50.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Mission Completed',
            'description': {
              'en': 'Increases the skill range by 3m.',
              'ru': 'Дистанция атаки увеличена на 3 метра.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_10.webp',
          },
          {
            'name': 'Antigravity',
            'description': {
              'en':
                  'You gain a shield that absorbs 15% of your maximum life during the launch.',
              'ru': 'Поглощает урон равный 15% максимального уровня здоровья.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_75.webp',
          },
          {
            'name': 'Drillmaster',
            'description': {
              'en': 'Increases the area of effect by 25%.',
              'ru': 'Радиус действия увеличен на 25%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_7.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Heavy Hammer',
            'description': {
              'en': 'Knocks down enemies, dealing 50% increased damage.',
              'ru': 'Сбивает с ног врага, увеличивает урон на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_22.webp',
          },
          {
            'name': 'Expression of Anger',
            'description': {
              'en':
                  'The last hit becomes a 360° strike with the hammer that stuns enemies for 4 seconds.',
              'ru':
                  'Вторая атака наносит урон вокруг на 360° и оглушает врагов на 4 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_9.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Gravity Force',
    'class': {
      'en': 'Destroyer',
      'ru': 'Сокрушитель',
    },
    'description': {
      'en':
          'Swings the hammer in front of you, dealing 28 damage. The hammer creates a gravity energy beam in front you dealing 157 total damage to enemies. They are pulled towards you and take 67 damage.',
      'ru':
          'Наносит 28 урона, создает гравитационную энергию, которая наносит 157 урона по врагам. В конце наносит 67 урона.'
    },
    'type': 'Chain',
    'cooldown': 14,
    'mana': 74,
    'iconUrl': 'assets/icons/destroyer/c00s04.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Improved Recharging',
            'description': {
              'en':
                  'Each pulled enemy reduces the cooldown by 0.5 seconds up to a maximum total of 4 seconds.',
              'ru':
                  'За каждого врага время восстановления умения сокращается на 0.5 секунды, максимум на 4 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.webp',
          },
          {
            'name': 'Iron Skin',
            'description': {
              'en':
                  'Gain a 30% damage reduction bonus while you are performing the skill.',
              'ru':
                  'Получаемый урон снижен на 30% во время использования умения.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_25.webp',
          },
          {
            'name': 'Critical Strength',
            'description': {
              'en': 'Increases damage done by 15%.',
              'ru': 'Урон увеличен на 15%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_50.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Swift Movement',
            'description': {
              'en': 'Increases attack speed by 20%.',
              'ru': 'Скорость атаки увеличена на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_6.webp',
          },
          {
            'name': 'Focusing Attack',
            'description': {
              'en': 'Increases damage done by 30% on a single target.',
              'ru': 'Урон увеличен на 30% по одиночной цели.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_28.webp',
          },
          {
            'name': 'Lucky Core',
            'description': {
              'en':
                  'When you hit the first strike, you gain 1 additional core with a 30% chance.',
              'ru':
                  'Шанс получить дополнительный заряд увеличен на 30% за первый удар.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_36.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Effluence of Instinct',
            'description': {
              'en':
                  'The charging time of the skill is increased by 0.4 seconds but the damage dealt is increased by 40%.',
              'ru':
                  'Время приготовления умения увеличено на 0.4 секунды, урон увеличен на 40%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_52.webp',
          },
          {
            'name': 'Wave of Gravity',
            'description': {
              'en':
                  'Quickly releases the gravity energy but reduces the damage dealt by 50% and the area of effect by 20%. However, the skill can be used a second time within 3 seconds of the first attack.',
              'ru':
                  'Умение можно использовать повторно в течение 3 секунд. Урон будет снижен на 50%, а область действия на 20%'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_41.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Running Crash',
    'class': {
      'en': 'Destroyer',
      'ru': 'Сокрушитель',
    },
    'description': {
      'en':
          'While holding down the hotkey, you hit enemies in front of you, and damage up to 7 times for 317 total damage. Upon releasing the key an explosion that deals 104 damage.',
      'ru':
          'Удерживая умение наносится 317 урона по врагам за 7 ударов. Если вовремя закончить удерживать умение, враги получат дополнительный урон от взрыва равный 104.'
    },
    'type': 'Hold',
    'cooldown': 20,
    'mana': 91,
    'iconUrl': 'assets/icons/destroyer/c00s05.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Lucky Core',
            'description': {
              'en': 'Successful hits grant a 50% chance to gain an extra core.',
              'ru': 'Шанс получить дополнительный заряд увеличен на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_36.webp',
          },
          {
            'name': 'Improved Gravity',
            'description': {
              'en': 'Reduces mana cost by 50%.',
              'ru': 'Потребление маны снижено на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_34.webp',
          },
          {
            'name': 'Quick Response',
            'description': {
              'en': 'Decreases the skill cooldown by 3s.',
              'ru': 'Время восстановления умения уменьшено на 3 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Antigravity',
            'description': {
              'en':
                  'Creates a gravity energy shield on the caster which absorbs damage equal to 15% of the caster’s maximum health.',
              'ru': 'Поглощает урон равный 15% максимального запаса здоровья.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_25.webp',
          },
          {
            'name': 'Careful Planning',
            'description': {
              'en':
                  'The explosion no longer hits the enemies but stuns them for 3s.',
              'ru': 'Взрыв не наносит урона, оглушая врагов на 3 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_43.webp',
          },
          {
            'name': 'Focused Target',
            'description': {
              'en':
                  'Explosion damage is increased by 20% for 6 seconds when a target deals damage to you and your party members.',
              'ru':
                  'Урон от взрыва увеличен на 20% в течение 6 секунд, если участники группы получают урон.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_69.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Reckless Movement',
            'description': {
              'en':
                  'Rushes up to 8m towards the target location, knocking enemies down.',
              'ru':
                  'Совершаете рывок в указанную точку в радиусе 8 метров, сбивая с ног врагов.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_10.webp',
          },
          {
            'name': 'Improved Rush',
            'description': {
              'en':
                  'The gravity energy of your hammer charges more powerfully, increasing the attack radius by 50% and the damage by 100%.',
              'ru': 'Радиус действия увеличен на 50% и урон увеличен на 100%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_50.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Jumping Smash',
    'class': {
      'en': 'Destroyer',
      'ru': 'Сокрушитель',
    },
    'description': {
      'en':
          'Leap high in the air towards a target location up to 10m away and inflict 250 damage to nearby foes upon landing.',
      'ru':
          'Совершает прыжок на расстояние до 10 метров, наносит 250 урона при приземлении.'
    },
    'type': 'Point',
    'cooldown': 16,
    'mana': 80,
    'iconUrl': 'assets/icons/destroyer/c00s06.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Flame of Darkness',
            'description': {
              'en': '[Shadow] Increases the critical strike chance by 15%.',
              'ru': '[Тьма] Увеличивает шанс критического удара на 15%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_19.webp',
          },
          {
            'name': 'Hammer of Earth',
            'description': {
              'en': '[Earth] Increases damage by 15%.',
              'ru': '[Земля] Увеличивает урон на 15%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_15.webp',
          },
          {
            'name': 'Superior Transition',
            'description': {
              'en': 'Increases the movement distance by 2m.',
              'ru': 'Увеличивает дистанцию применения умения на 2 метра.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_10.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Time Distortion',
            'description': {
              'en': 'The attack is slower but deals 25% additional damage.',
              'ru': 'Наносит на 25% урона больше.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_8.webp',
          },
          {
            'name': 'Grotesque Hammer',
            'description': {
              'en':
                  'Increases the area of ​​effect by 20%. If Annihilation (Tier 3) is used, increase the range by 40%.',
              'ru':
                  'Увеличивает радиус атаки на 20%, при применении Annihilation (Tier 3). на 40%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_7.webp',
          },
          {
            'name': 'Quick Preparation',
            'description': {
              'en':
                  'If you hit a Hammer attack last hit, you gain a 50% chance to gain 1 additional core.',
              'ru': 'Шанс получить дополнительный заряд увеличен на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_36.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Gravity Reversal',
            'description': {
              'en':
                  'Your hammer strike deals 30% more damage and creates an inverted gravity zone 5 meters wide. It deals 30% additional damage and throws enemies into the air.',
              'ru':
                  'Наносит на 30% урона больше, создает область радиуса 5 метров, которая также наносит 30% дополнительного урона и подбрасывает врагов.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_77.webp',
          },
          {
            'name': 'Annihilation',
            'description': {
              'en':
                  'Changes to [Normal] skill, rotates in the air while jumping, attacks 100% total damage',
              'ru': '[Обычный] Наносит на 100% урона больше.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_40.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Power Strike',
    'class': {
      'en': 'Destroyer',
      'ru': 'Сокрушитель',
    },
    'description': {
      'en':
          'Raises your hammer and deal three brutal strikes 92-129-147 damage.',
      'ru': 'Наносит три удара молотом 92-129-147 урона.'
    },
    'type': 'Normal',
    'cooldown': 14,
    'mana': 74,
    'iconUrl': 'assets/icons/destroyer/c00s07.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Reckless Attack',
            'description': {
              'en':
                  'Increases damage received by 20% while performing the skill but the damage of each strike is increased by 30%.',
              'ru':
                  'Во время использования умения увеличивает каждый урон каждого удара на 30%, при это увеличивает получаемый урон на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_50.webp',
          },
          {
            'name': 'Unbearable Strength',
            'description': {
              'en':
                  'Ignores 30% of physical armor on any target with the Invulnerable status.',
              'ru':
                  'Игнорирует до 30% физической защиты врагов, невосприимчивых к эффектам контроля.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_2.webp',
          },
          {
            'name': 'Quick Response',
            'description': {
              'en': 'Decreases the skill cooldown by 2s.',
              'ru': 'Уменьшено время восстановления умения на 2 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Superhuman Strength',
            'description': {
              'en':
                  'You can use other skills or cancel the skill while performing the skill.',
              'ru':
                  'Можно использовать другие умения или отменить текущее во время использования умения.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_41.webp',
          },
          {
            'name': 'Improved Hammer',
            'description': {
              'en':
                  'Each hit increases damage dealt by 15% up to maximum total of 90%.',
              'ru': 'Каждый удар увеличивает урон на 15%, максимум до 90%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_58.webp',
          },
          {
            'name': 'Drillmaster',
            'description': {
              'en': 'Increases the area of effect by 20%.',
              'ru': 'Радиус действия увеличен на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_7.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Endless attack',
            'description': {
              'en':
                  'Unleash 5 devastating hammer strikes, which, after the first swing, deal an additional 25% damage.',
              'ru':
                  'Наносит 5 дополнительных ударов, нанося дополнительно 25% урона.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_40.webp',
          },
          {
            'name': 'Coordinated Attack',
            'description': {
              'en':
                  'The last hit damages foes for 80% increased damage, and knockdown the enemies.',
              'ru':
                  'Последний удар наносит на 80% больше урона и сбивает с ног противника.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_0.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Neutralizer',
    'class': {
      'en': 'Destroyer',
      'ru': 'Сокрушитель',
    },
    'description': {
      'en':
          'Hits with 88 damage, and creates shock wave within 8m of the target location dealing 162 damage. You can use the skill 2 more times. The second hit inflicts 132 damage, and the third hit inflicts 176 damage.',
      'ru':
          'Наносит 88 урона, образуя ударную волну длинной 8 метров, наносящую 162 урона. Можно использовать умение еще 2 раза, нанося 132 и 176 урона соответственно.'
    },
    'type': 'Combo',
    'cooldown': 36,
    'mana': 127,
    'iconUrl': 'assets/icons/destroyer/c00s08.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Dark Energy',
            'description': {
              'en':
                  '[Shadow] You ignore 30% of the physical defense of enemies.',
              'ru': '[Тьма] Игнорирует 30% физической защиты врага.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_19.webp',
          },
          {
            'name': 'Earth Energy',
            'description': {
              'en': '[Earth] Reduces enemy movement speed by 30% for 3s.',
              'ru':
                  '[Земля] Уменьшает скорость перемещения противника на 30% в течение 3 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_15.webp',
          },
          {
            'name': 'Strong Impact',
            'description': {
              'en':
                  'The enemies hit by the shock waves are thrown into the air. Enemies immune to control effects receive 20% additional damage.',
              'ru':
                  'Волна подбрасывает врагов. Противникам, невосприимчивым к эффектам контроля, наносит дополнительно 20% урона.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_9.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Wide Strike',
            'description': {
              'en': 'Increases shock wave radius by 20%.',
              'ru': 'Радиус действия волны увеличен на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_7.webp',
          },
          {
            'name': 'Unstable Earth',
            'description': {
              'en':
                  'You only hit once but the shock waves propagate three times.',
              'ru': 'Ударить можно только 1 раз, но волна создается 3 раза.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_78.webp',
          },
          {
            'name': 'Amplified Gravity',
            'description': {
              'en': 'With each hit, the shock wave damage increases by 20%.',
              'ru': 'С каждым ударом урон от волны увеличивается на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_58.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Explosive Gravity',
            'description': {
              'en': 'Creates three shockwaves per each hit.',
              'ru': 'При каждом ударе создается 3 волны.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_54.webp',
          },
          {
            'name': 'Gravity Control',
            'description': {
              'en':
                  'You create a series of 3 shockwaves around your hammer, inflicting 50% more damage.',
              'ru': 'Создает серию из 3 волн, нанося на 50% урона больше.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_53.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Endure Pain',
    'class': {
      'en': 'Destroyer',
      'ru': 'Сокрушитель',
    },
    'description': {
      'en':
          'Deals 382 damage in 2m radius, you will have 15% reduction in damage and immune to control effects for 5 seconds.',
      'ru':
          'Наносит 382 урона в радиусе 2 метров. В течение 5 секунд невосприимчив к эффектам контроля и получаемый урон сокращен на 15%.'
    },
    'type': 'Normal',
    'cooldown': 40,
    'mana': 135,
    'iconUrl': 'assets/icons/destroyer/c00s09.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Drillmaster',
            'description': {
              'en': 'Increases the area of effect by 15%.',
              'ru': 'Радиус действия увеличен на 15%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_7.webp',
          },
          {
            'name': 'Improved Gravity',
            'description': {
              'en': 'Reduces mana cost by 50%.',
              'ru': 'Потребление маны снижено на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_34.webp',
          },
          {
            'name': 'Expulsion',
            'description': {
              'en': 'Successful hits push enemies back further.',
              'ru': 'Отталкивает врагов.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_60.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Antigravity',
            'description': {
              'en':
                  'Gain a gravitational shield of 30% of your maximum health for 5s.',
              'ru':
                  'Создает щит в размере 30% от максимального уровня здоровья на 5 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_25.webp',
          },
          {
            'name': 'Terror of Battlefield',
            'description': {
              'en':
                  'Decreases the enemy attack speed by 20% and the movement speed by 40% for 6s.',
              'ru':
                  'Уменьшена скорость атаки врагов на 20% и скорость передвижения на 40% в течение 6 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_46.webp',
          },
          {
            'name': 'Trace of Pain',
            'description': {
              'en': 'Reduces the target attack power by 60% for 6s.',
              'ru':
                  'Уменьшен показатель атаки врагов на 60%. в течение 6 секунд'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_2.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Healthy Mentality',
            'description': {
              'en': 'Increases the duration of the buff from the skill by 3s.',
              'ru': 'Увеличена длительность умения на 3 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_51.webp',
          },
          {
            'name': 'Hidden Pain',
            'description': {
              'en':
                  'Reduces damage taken by enemies when casting a skill by 90%.',
              'ru':
                  'Уменьшен получаемый урон на 90% во время использования умения.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_24.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Earth Eater',
    'class': {
      'en': 'Destroyer',
      'ru': 'Сокрушитель',
    },
    'description': {
      'en':
          'Slams the ground behind you dealing 210 damage. Then swings the hammer to the front. The first swing inflicts 46 damage, the second 59, and the third 71. After the 3 swing, you strike the ground dealing 252 damage.',
      'ru':
          'Ударяет позади себя нанося 210 урона. Создает вихрь перед собой, первое вращение которого наносит 46 урона, второе 59 и третье 71. После этого ударяет по земле нанося 252 урона.'
    },
    'type': 'Normal',
    'cooldown': 1,
    'mana': 85,
    'iconUrl': 'assets/icons/destroyer/c00s10.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Intensified Blow',
            'description': {
              'en': 'Increases hammer damage by 30%.',
              'ru': 'Увеличивает урон от молота на 30%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_0.webp',
          },
          {
            'name': 'Crimson Shrapnel',
            'description': {
              'en': 'Increases damage done by stone shards by 50%.',
              'ru': 'Урон от вихря увеличен на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_50.webp',
          },
          {
            'name': 'Absolute Power',
            'description': {
              'en':
                  'Ignore 10% of the physical defense of enemies by consumed kernel of gravity.',
              'ru':
                  'Игнорирует 10% физической защиты противника за каждый заряд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_2.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Tenacity',
            'description': {
              'en': 'You are immune to control effects during the launch.',
              'ru':
                  'Невосприимчивость к эффектам контроля во время использования умения.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_23.webp',
          },
          {
            'name': 'Practiced Outcome',
            'description': {
              'en': 'Increases the area of effect by 30%.',
              'ru': 'Радиус действия увеличен на 30%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_7.webp',
          },
          {
            'name': 'Earth Shock',
            'description': {
              'en':
                  'You hit the ground with your hammer, which creates an earthquake dealing 15% more damage for 2 seconds.',
              'ru':
                  'Удар молотом создает землетрясение. Враги получают на 15% больше урона в течение 2 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_43.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Earth\'s Wrath',
            'description': {
              'en':
                  'Your hammer becomes a huge hammer increasing its damage by 200%. The damage of stone chips is also increased by 50%.',
              'ru': 'Урон от молота увеличен на 200%, от вихря на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_39.webp',
          },
          {
            'name': 'Geostorm',
            'description': {
              'en':
                  'Competence becomes a [Hold] skill. The final blow is replaced by several hammer strokes. Damage is increased by 30% but area damage is removed.',
              'ru':
                  'Становится удерживаемым умением. Позволяет перемещаться. Урон увеличен на 30%, отсутствует урон по области.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_40.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Full Swing',
    'class': {
      'en': 'Destroyer',
      'ru': 'Сокрушитель',
    },
    'description': {
      'en':
          'Swings the hammer 3 times like whirlwind. The first and second swings inflict 76-87-190 damage in the raw. Last hit can be overcharged to 380 damage.',
      'ru':
          'Наносит 3 удара вокруг себя, нанося 76-87-190 урона соответственно. Последний удар можно перегрузить до 380 урона.'
    },
    'type': 'Normal',
    'cooldown': 22,
    'mana': 96,
    'iconUrl': 'assets/icons/destroyer/c00s11.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Iron Heart',
            'description': {
              'en':
                  'Gain a 30% damage reduction bonus while you are performing the skill and a 50% damage reduction while you are charging the skill.',
              'ru':
                  'Получаемый урон снижен на 30% во время использования умения и 50% во время подготовки.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_25.webp',
          },
          {
            'name': 'Swift Movement',
            'description': {
              'en': 'Increases attack speed by 10%.',
              'ru': 'Скорость атаки увеличена на 10%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_6.webp',
          },
          {
            'name': 'Quick Response',
            'description': {
              'en': 'Decreases the skill cooldown by 3s.',
              'ru': 'Время восстановления сокращено на 3 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Toughness',
            'description': {
              'en':
                  'The caster becomes Invulnerable to crowd control effects while performing the skill.',
              'ru': 'Невосприимчивость к эффектам контроля.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_23.webp',
          },
          {
            'name': 'Absolute Power',
            'description': {
              'en': 'Each core increases damage dealt by 10%.',
              'ru': 'Каждый заряд увеличивает урон на 10%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_50.webp',
          },
          {
            'name': 'Terrifying Hammer',
            'description': {
              'en':
                  'Each successful hit increases damage dealt by 10% up to a maximum of 60%.',
              'ru': 'Каждый удар увеличивает урон на 10%, максимум до 60%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_58.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Bestial Eyes',
            'description': {
              'en':
                  'Reduces the charging time by 50%. Overcharging increases damage dealt by 125%.',
              'ru':
                  'Уменьшает время зарядки на 50% и увеличивает урон при перегрузе умения на 125%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_40.webp',
          },
          {
            'name': 'Enraged Attack',
            'description': {
              'en':
                  'Removes the ability to charge and instead performs stationary swings. The area of effect increases over the duration of the skill and damage dealt is increased by 25%.',
              'ru':
                  'Атакует вместо заряда умения, урон и радиус атаки увеличены на 25%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_7.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Earth Smasher',
    'class': {
      'en': 'Destroyer',
      'ru': 'Сокрушитель',
    },
    'description': {
      'en':
          'Deals 154 damage. It creates a rock on the landing location. You destroy the rock and particles from the rock scatter in a fan-shaped angle, dealing 417 damage. Successful hits by the particles stun enemies for 3 seconds.',
      'ru':
          'Наносит 154 урона нанося удар молотом по камню. Камень разбивается на мелкие осколки, наносящие 417 урона и оглушающие на 3 секунды врагов.'
    },
    'type': 'Normal',
    'cooldown': 24,
    'mana': 101,
    'iconUrl': 'assets/icons/destroyer/c00s12.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Critical Strength',
            'description': {
              'en':
                  'Reduces attack speed by 10% but increases damage dealt by 20%.',
              'ru': 'Уменьшена скорость атаки на 10%, увеличен урон на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_0.webp',
          },
          {
            'name': 'Iron Skin',
            'description': {
              'en':
                  'Gain a 30% damage reduction bonus while you are performing the skill.',
              'ru':
                  'Получаемый урон снижен на 30% во время использования умения.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_25.webp',
          },
          {
            'name': 'Absolute Strength',
            'description': {
              'en': 'Increases the damage done by each gravity core by 10%.',
              'ru': 'Увеличивает урон на 10% за каждый гравитационны заряд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_50.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Wide Strike',
            'description': {
              'en': 'Increases the attack radius by 15%.',
              'ru': 'Радиус атаки увеличен на 15%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_7.webp',
          },
          {
            'name': 'Superhuman Ability',
            'description': {
              'en':
                  'Using the force of gravity, you can use another skill to undo it.',
              'ru':
                  'Позволяет перемещаться и отменять умение при использовании.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_41.webp',
          },
          {
            'name': 'Basic Training',
            'description': {
              'en':
                  'Enemies hit by rock fragments are stunned for 2 more seconds.',
              'ru': 'Осколки оглушают на 2 секунды дольше.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_43.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Explosive Smash',
            'description': {
              'en':
                  'Fragments fly 360 degrees. Increases the damage dealt by the shards by 50%.',
              'ru':
                  'Осколки разлетаются во все стороны на 360 градусов, нанося на 50% урона больше.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_30.webp',
          },
          {
            'name': 'Strange Movement',
            'description': {
              'en':
                  'You can change the direction of the skill. You then lift the hammer above your head and jump up to a distance of 6 meters.',
              'ru':
                  'Позволяет изменить направление умения и прыгнуть на расстояние до 6 метров.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_27.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'One Man Army',
    'class': {
      'en': 'Destroyer',
      'ru': 'Сокрушитель',
    },
    'description': {
      'en':
          'Swing the hammer left and right. First hit inflicts 62 damage. Continual swings increase over the time and the last hit deals 114 damage.',
      'ru':
          'Размахивает молотом в стороны. Первый удар наносит 62 урона, последующие набирают силу и последний нанесет 114 урона.'
    },
    'type': 'Hold',
    'cooldown': 24,
    'mana': 101,
    'iconUrl': 'assets/icons/destroyer/c00s13.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Quick Ready',
            'description': {
              'en': 'Decreases the skill cooldown by 3s.',
              'ru': 'Время восстановления умения сокращено на 3 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.webp',
          },
          {
            'name': 'Swift Movement',
            'description': {
              'en': 'Increases attack speed by 10%.',
              'ru': 'Скорость атаки увеличена на 10%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_6.webp',
          },
          {
            'name': 'Improved Gravity',
            'description': {
              'en': 'Reduces mana cost by 50%.',
              'ru': 'Потребление маны снижено на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_34.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Well-maintained Hammer',
            'description': {
              'en':
                  'The damage of the first and second hits are increased by 100%.',
              'ru': 'Урон от первого и второго удара увеличены на 100%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_0.webp',
          },
          {
            'name': 'Spot Weakness',
            'description': {
              'en':
                  'Increases the damage dealt to targets with the Invulnerable to control effects status by 40%.',
              'ru':
                  'Урон по врагам невосприимчивым к эффектам контроля увеличен на 40%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_33.webp',
          },
          {
            'name': 'Red Hammer',
            'description': {
              'en':
                  'Each hit increases damage dealt by 10% up to a maximum total of 50%.',
              'ru': 'Каждый удар увеличивает урон на 10%, максимум до 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_58.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Critical Hammer',
            'description': {
              'en':
                  'You cannot change direction while performing the skill, but instead rapidly swing in front of you for 250% increased damage.',
              'ru':
                  'Нельзя менять направление умения, но последний удар наносит 250% урона.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_40.webp',
          },
          {
            'name': 'Superior Blow',
            'description': {
              'en':
                  'Swings the hammer in a 360 degree arc for a maximum of 4.5 seconds. The swing deals 40% increased damage.',
              'ru': 'Совершает удар в течение 4.5 секунд. Урон увеличен на 40%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_39.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Perfect Swing',
    'class': {
      'en': 'Destroyer',
      'ru': 'Сокрушитель',
    },
    'description': {
      'en':
          'Moves forward and tackles an enemy for 89 damage, then hits the hammer for 400 damage. You can charge the skill for 2 seconds. When fully charged, the skill moves 2m farther and the hammer strike deals 800 damage.',
      'ru':
          'Совершает выпад вперед нанеся врагу 89 урона при столкновении, далее ударяет молотом на 400 урона. Можно заряжать умение в течение 2 секунд. При полной загрузке дальность умения увеличена на 2 метра, а урон до 800.'
    },
    'type': 'Charge',
    'cooldown': 30,
    'mana': 114,
    'iconUrl': 'assets/icons/destroyer/c00s14.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Capture Weakness',
            'description': {
              'en':
                  'Increases the damage done to enemies with control immunity by 20%.',
              'ru':
                  'Урон по врагам с невосприимчивостью к эффектам контроля увеличен на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_33.webp',
          },
          {
            'name': 'Final Blow',
            'description': {
              'en':
                  'When you hit enemies with an HP of 50% or less, your damage increases by 20%.',
              'ru':
                  'Урон по врагам с уровнем здоровья ниже 50% увеличен на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_0.webp',
          },
          {
            'name': 'Toughness',
            'description': {
              'en':
                  'The caster becomes Invulnerable to crowd control effects while charging the skill.',
              'ru': 'Невосприимчивость к эффектам контроля при использовании.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_23.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Concussion',
            'description': {
              'en': 'Increases the incapacitate level by 1.',
              'ru': 'Увеличивает ослабляющий эффект на 1.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_69.webp',
          },
          {
            'name': 'Sharpened Hammer',
            'description': {
              'en': 'Successful hits with the hammer deal 40% more damage.',
              'ru': 'Урон от первого удара увеличен на 40%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_63.webp',
          },
          {
            'name': 'Unnecessary Waiting',
            'description': {
              'en': 'Reduces the time for charging the skill by 1s.',
              'ru': 'Время заряда умения сокращено на 1 секунду.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_41.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Massacre',
            'description': {
              'en':
                  'Immediately swings the hammer without charging it, creating a soundwave which damages the foe for 30% of the skill damage.',
              'ru': 'Мгновенно наносит удар без заряда, нанося 30% урона.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_53.webp',
          },
          {
            'name': 'Intemperate',
            'description': {
              'en':
                  'Reduces the charging time by 50%. Overcharging increases damage dealt by 100%.',
              'ru':
                  'Время заряда уменьшено на 50%. Перегруз умения наносит на 100% урона больше.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_8.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Gravity Compression',
    'class': {
      'en': 'Destroyer',
      'ru': 'Сокрушитель',
    },
    'description': {
      'en':
          'Creates a black hole that deals 22 damage. You can hold gravity energy into the black hole for 2 seconds, which then spreads in all directions, dealing 201 damage. Releasing the hotkey explodes the black hole for 113, full charged black hole deals 226 damage.',
      'ru':
          'Наносит 22 урона и создает черную дыру, удерживая которую в течение 2 секунд распределяющаяся энергия нанесет 201 урона. Отпустив заранее взорвет черную дыру с уроном 113, полностью заряженная черная дыра наносит 226 урона.'
    },
    'type': 'Hold',
    'cooldown': 24,
    'mana': 101,
    'iconUrl': 'assets/icons/destroyer/c00s15.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Hard Heart',
            'description': {
              'en':
                  'Reduces damage taken by 30% during casting and by 50% while loading the skill.',
              'ru':
                  'Получаемый урон уменьшен на 30% при подготовке умения и на 50% при заряде.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_25.webp',
          },
          {
            'name': 'Reasonable Choice',
            'description': {
              'en':
                  'Increases attack speed by 25% but increases the skill cooldown by 6s.',
              'ru':
                  'Скорость атаки увеличена на 25%, время восстановления увеличено на 6 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_6.webp',
          },
          {
            'name': 'Unbearable Strength',
            'description': {
              'en': 'Ignore 30% enemies defense with 3 gravity cores.',
              'ru':
                  'Позволяет игнорировать 30% защиты врага при наличии 3 гравитационных зарядов.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_2.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Wide Strike',
            'description': {
              'en': 'Increases the area of effect by 20%.',
              'ru': 'Радиус атаки увеличен на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_7.webp',
          },
          {
            'name': 'Strong Finish',
            'description': {
              'en':
                  'The damage of the black hole’s explosion is increased by 50%.',
              'ru': 'Урон от взрыва черной дыры увеличен на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_0.webp',
          },
          {
            'name': 'Absolute Power',
            'description': {
              'en': 'Each core increases damage dealt by 10%.',
              'ru': 'Каждый гравитационный заряд увеличивает урон на 10%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_50.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Target Location',
            'description': {
              'en':
                  'You target the location to create a magnetic field up to 10m from the current location.',
              'ru': 'Черную дыру можно создать на расстоянии до 10 метров.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_52.webp',
          },
          {
            'name': 'Improved Magnetic Field',
            'description': {
              'en': 'Increases damage of the black hole by 150%.',
              'ru': 'Урон от черной дыры увеличен на 150%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_1.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Seismic Hammer',
    'class': {
      'en': 'Destroyer',
      'ru': 'Сокрушитель',
    },
    'description': {
      'en':
          'Hold the hammer upside down, then leap in the air and smashing the ground for 77. After the impact, the skill creates a 5m cone-shaped wall which deals 687 damage.',
      'ru':
          'Наносит 77 урона молотом и создает стену, которая наносит 687 урона.'
    },
    'type': 'Normal',
    'cooldown': 30,
    'mana': 114,
    'iconUrl': 'assets/icons/destroyer/c00s16.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Quick Preparation',
            'description': {
              'en': 'Reduces the cooldown by 4s.',
              'ru': 'Время восстановления уменьшено на 4 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.webp',
          },
          {
            'name': 'Toughness',
            'description': {
              'en':
                  'The caster becomes Invulnerable to crowd control effects while performing the skill.',
              'ru':
                  'Невосприимчивость к эффектам контроля во время использования.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_23.webp',
          },
          {
            'name': 'Absolute Force',
            'description': {
              'en': 'Increases the damage done by each gravity core by 10%.',
              'ru': 'Увеличивает урон на 10% за каждый гравитационный заряд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_50.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Unbearable Strength',
            'description': {
              'en':
                  'Reduces all enemy armor by 60% for 4 seconds when attacking.',
              'ru': 'Уменьшает всю защиту врага на 60% в течение 4 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_46.webp',
          },
          {
            'name': 'Concussion',
            'description': {
              'en': 'Increases the level of the Incapacitate effect by 1.',
              'ru': 'Увеличивает ослабляющий эффект на 1.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_69.webp',
          },
          {
            'name': 'Sharp Wall',
            'description': {
              'en': 'Increases damage done to wall-targeted enemies by 60%.',
              'ru': 'Урон от стены увеличен на 60%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_50.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Power Hungry',
            'description': {
              'en':
                  'The attack distance is reduced by 30%, but a circular shock wave extends to create a round wall, which increases wall damage by 60%.',
              'ru':
                  'Дистанция атаки уменьшена на 30%, но урон от стены увеличен на 60%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_0.webp',
          },
          {
            'name': 'Improved Spot Weakness',
            'description': {
              'en':
                  'Wall extends 2m further forward, increases wall damage by 40%.',
              'ru':
                  'Стена становится на 2 метра длиннее, урон от стены увеличен на 40%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_52.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Heaven Cleaving Kick',
    'class': {
      'en': 'Battle Master',
      'ru': 'Аватар',
    },
    'description': {
      'en':
          'Strike forward dealing 57 damage. When pressed again, that deals additional 80 damage and throws enemies into the air. You can change direction for the second attack.',
      'ru':
          'Делает выпад вперед нанося 57 урона. Повторное использование наносит дополнительно 80 урона и подбрасывает врагов в воздух. Можно изменить направление повторной атаки.'
    },
    'type': 'Combo',
    'cooldown': 8,
    'iconUrl': 'assets/icons/battlemaster/c03s00.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Movement Distance',
            'description': {
              'en': 'Movement distance can increases by 1m.',
              'ru': 'Дальность умения увеличена на 1 метр.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_10.webp',
          },
          {
            'name': 'Winning Angle',
            'description': {
              'en':
                  'Increases the distance at which enemies are thrown. Need 2 enemies and more.',
              'ru':
                  'Увеличивает дальность подбрасывания врагов при 2 и более целей.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_9.webp',
          },
          {
            'name': 'Attack Speed',
            'description': {
              'en': 'Attack speed increases by 20%.',
              'ru': 'Скорость атаки увеличена на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_6.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Ice Strike',
            'description': {
              'en':
                  '[Cold] When the attack hits 2 or more enemies freeze an enemy for 2s. Cooldown increased by 6s.',
              'ru':
                  '[Холод] При нанесении урона 2 и более противникам замораживает на 2 секунды. Время восстановления увеличено на 6 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_43.webp',
          },
          {
            'name': 'Range',
            'description': {
              'en': 'Skill range increased by 20%.',
              'ru': 'Дальность атаки увеличена на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_7.webp',
          },
          {
            'name': 'Ready to Attack',
            'description': {
              'en':
                  'Increases attack power by 15% for 3 seconds if you hit 2 or more enemies.',
              'ru':
                  'Сила атаки увеличена на 15% в течение 3 секунд, если удар нанесен по 2 и более врагам.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_50.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Crushing Blade',
            'description': {
              'en': 'Damage for first hit to enemies increases by up to 150%.',
              'ru': 'Урона от первого удара увеличен на 150%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_8.webp',
          },
          {
            'name': 'Concentration',
            'description': {
              'en': 'Increases the gain of the rage by 200%.',
              'ru': 'Увеличивает прирост ярости на 200%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_36.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Thunder Kick',
    'class': {
      'en': 'Battle Master',
      'ru': 'Аватар',
    },
    'description': {
      'en':
          'Inflicts damage in two attacks on the enemy. The first attack deals 28 damage and throws enemy in the air, then the second attack hits 32 damage.',
      'ru': 'Наносит первым ударом 28 подбрасывая врагов и 32 вторым.'
    },
    'type': 'Normal',
    'cooldown': 7,
    'iconUrl': 'assets/icons/battlemaster/c03s01.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Movement Distance',
            'description': {
              'en':
                  'Using the skill, you can change direction and the movement distance is increased by 2 meters.',
              'ru':
                  'Позволяет менять направление умения и дистанция применения увеличена на 2 метра.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_10.webp',
          },
          {
            'name': 'Transcendental',
            'description': {
              'en': 'Increases the gain of the rage by 30% by attacking.',
              'ru': 'Увеличивает прирост ярости на 30%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_34.webp',
          },
          {
            'name': 'Without Mercy',
            'description': {
              'en':
                  'Increases damage by 30% against enemies that suffer from a control effect.',
              'ru':
                  'Увеличивает урон на 30% по оглушенным или опрокинутым противникам.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_69.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Lightning Strike',
            'description': {
              'en': 'critical hit rate increased by 30%.',
              'ru': 'Шанс критического урона увеличен на 30%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_0.webp',
          },
          {
            'name': 'Thunderbolt',
            'description': {
              'en':
                  'When this skill deals damage to the enemy, the enemy suffers a 30% increase in damage.',
              'ru': 'Урон увеличен на 30%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_29.webp',
          },
          {
            'name': 'Violent Flash',
            'description': {
              'en':
                  'You get a 50% chance to electrify the enemy for 4 seconds.',
              'ru':
                  'Шанс наложить эффект молнии увеличен на 50% в течение 4 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_17.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Lightning',
            'description': {
              'en':
                  'A quick-fire attack is added after first hit, increasing total damage by 60%.',
              'ru': 'Дополнительный удар увеличивает урон на 60%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_40.webp',
          },
          {
            'name': 'Thump',
            'description': {
              'en':
                  'You can move in the direction of your cursor during the attack. Increases damage by 15%.',
              'ru':
                  'Позволяет двигаться в указанном направлении и увеличивает урон на 15%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_27.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Triple Punch',
    'class': {
      'en': 'Battle Master',
      'ru': 'Аватар',
    },
    'description': {
      'en': 'Makes 3 violent strikes with 36-36-85 damage.',
      'ru': 'Наносит 3 удара уроном равным 36-36-85 соответственно.'
    },
    'type': 'Normal',
    'cooldown': 6,
    'iconUrl': 'assets/icons/battlemaster/c03s02.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Dark Attack',
            'description': {
              'en':
                  '[Shadow] increasing the critical hit rate by 15% for 3 seconds.',
              'ru':
                  '[Тьма] Увеличивает шанс критического удара на 15% в течение 3 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_19.webp',
          },
          {
            'name': 'Single Extortion',
            'description': {
              'en':
                  'Increases the gain of the rage by 100% if you only hit one enemy.',
              'ru':
                  'Увеличивает прирост ярости на 100% при атаке по одной цели.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_34.webp',
          },
          {
            'name': 'Flame Attack',
            'description': {
              'en': 'Increase the damage by 15%.',
              'ru': 'Урон увеличен на 15%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_13.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Damage Reduction',
            'description': {
              'en': 'Reduces damage to you by 40% while using the skill.',
              'ru': 'Получаемый урон уменьшен на 40% при использовании умения.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_25.webp',
          },
          {
            'name': 'Resonance',
            'description': {
              'en': 'Increases damage by 15% each time you hit.',
              'ru': 'Увеличивает урон на 15% за каждую атаку.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_58.webp',
          },
          {
            'name': 'Without Mercy',
            'description': {
              'en':
                  'Increases damage by 50% against enemies that suffer from a control effect.',
              'ru':
                  'Увеличивает урон на 50% по оглушенным или опрокинутым врагам.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_69.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Thunder',
            'description': {
              'en':
                  'Movement distance increased by 2m, attack speed increased by 20%. The damage done to the enemy by the last strike increases by 50%.',
              'ru':
                  'Дальность перемещения увеличена на 2 метра и скорость атаки на 20%. Последний удар наносит на 50% урона больше.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_6.webp',
          },
          {
            'name': 'Damage',
            'description': {
              'en':
                  'The violent fists are changed to 5 attacks. Skill damage increased by 50%.',
              'ru': 'Делает 5 ударов, нанося на 50% больше урона.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_40.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Pummel',
    'class': {
      'en': 'Battle Master',
      'ru': 'Аватар',
    },
    'description': {
      'en':
          'Attack with 9 strikes that deal 49 damage to enemies, the last move deals 129 damage.',
      'ru': 'Наносит 49 урона за 9 ударов, последний наносит 129 урона.'
    },
    'type': 'Normal',
    'cooldown': 14,
    'iconUrl': 'assets/icons/battlemaster/c03s03.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Holy Attack',
            'description': {
              'en': '[Holy] Increases attack speed by 20% for 3s.',
              'ru': '[Свет] Скорость атаки увеличена на 20% в течение 3 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_18.webp',
          },
          {
            'name': 'Dark Attack',
            'description': {
              'en': '[Shadow] increasing the critical hit rate by 15% for 3s.',
              'ru':
                  '[Тьма] Шанс критического урона увеличен на 15% в течение 3 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_19.webp',
          },
          {
            'name': 'Wide Blow',
            'description': {
              'en': 'Attack range increases by 30%.',
              'ru': 'Дистанция атаки увеличена на 30%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_7.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Master of Strike',
            'description': {
              'en':
                  'Becomes a skill that can be channeled for 2.5 to inflict a myriad of blows on enemies. The damage is increased by 80%.',
              'ru':
                  'Позволяет удерживать умение в течение 2.5 секунд. Урон увеличен на 80%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_39.webp',
          },
          {
            'name': 'Quick Blow',
            'description': {
              'en':
                  'You hit the enemies with 4 powerful shots instead of 9. Increases damage by 20%.',
              'ru': 'Наносит 4 удара вместо 9. Увеличивает урон на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_40.webp',
          },
          {
            'name': 'Weak Catch',
            'description': {
              'en':
                  'Increases the damage done to your enemies with control immunity by 60%.',
              'ru':
                  'Увеличен урон по невосприимчивым к эффектам урона врагам на 60%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_33.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Quietens',
            'description': {
              'en':
                  'The last move is transformed into uppercut, increasing the critical chance by 30% and the damage dealt to the enemy by 50%.',
              'ru':
                  'Последний удар наносит на 50% больше урона и имеет шанс критического удара на 30% больше.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_77.webp',
          },
          {
            'name': 'Unbelievable',
            'description': {
              'en':
                  'While using the skill, the character is immune to conrtol effects and ignores 40% of the enemy\'s physical defense.',
              'ru':
                  'Невосприимчивость к эффектам контроля во время использования. Игнорирует 40% физической защиты врагов.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_50.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Crescent Kick',
    'class': {
      'en': 'Battle Master',
      'ru': 'Аватар',
    },
    'description': {
      'en':
          'You dash to the enemies and kick for 39 damage. Next attacks deal 49-46-154 damage.',
      'ru':
          'Совершает выпад и наносит 39 урона. При продолжении серии наносит 49-46-154 урона.'
    },
    'type': 'Combo',
    'cooldown': 18,
    'iconUrl': 'assets/icons/battlemaster/c03s04.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Thermal Angle',
            'description': {
              'en': '[Fire] Last kick inflicts a burn for 5 seconds.',
              'ru':
                  '[Огонь] Последний удар добавляет эффект горения на 5 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_13.webp',
          },
          {
            'name': 'Violent Flash',
            'description': {
              'en':
                  '[Lightning] You can move during the chaining. In addition, the first shot repels enemies further and they suffer lightning damage for 4s.',
              'ru':
                  '[Молния] Позволяет менять направление умения и добавляет эффект молнии на 4 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_17.webp',
          },
          {
            'name': 'Incandescent Angle',
            'description': {
              'en': 'Increases the gain of the rage by 50%.',
              'ru': 'Увеличивает прирост ярости на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_34.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Movement Distance',
            'description': {
              'en':
                  'The movement distance of the first shot is increased by 3 meters. Cooldown is reduced by 3 seconds.',
              'ru':
                  'Увеличивает дальность первого удара на 3 мера. Время восстановления уменьшено на 3 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_10.webp',
          },
          {
            'name': 'Diagonal Angle',
            'description': {
              'en':
                  'Increases the range by 30% and the number of kicks in the chain by 100%.',
              'ru':
                  'Увеличивает дальность атаки на 30% и количество ударов на 100%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_7.webp',
          },
          {
            'name': 'Single Blow',
            'description': {
              'en': 'Increases damage by 50% against single targets.',
              'ru': 'Увеличивает урон на 50% по одной цели.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_28.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Colorful Footstep',
            'description': {
              'en':
                  'You can not move and you are not kicking anymore. Instead, you make a series of quick kicks for 2 seconds just after charging.',
              'ru': 'При удерживании совершает множество ударов за 2 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_39.webp',
          },
          {
            'name': 'Full Moon Angle',
            'description': {
              'en':
                  'The preparation for the final blow is getting longer. Damage to enemies increased by 250%.',
              'ru': 'Моментально наносит 250% урона.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_41.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Ground Pound',
    'class': {
      'en': 'Battle Master',
      'ru': 'Аватар',
    },
    'description': {
      'en':
          'You jump to create an earthquake that deals 82 damage to enemies every second for 5 seconds.',
      'ru':
          'Прыгает и создает землетрясение, наносящее 82 урона каждую секунду в течение 5 секунд.'
    },
    'type': 'Normal',
    'cooldown': 16,
    'iconUrl': 'assets/icons/battlemaster/c03s05.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Vibration Strengthening',
            'description': {
              'en': 'First hit knockdown the enemy.',
              'ru': 'Первый удар сбивает с ног врага.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_77.webp',
          },
          {
            'name': 'Strong Attack',
            'description': {
              'en':
                  'Damage dealt to enemies who are knockdown is increased by 25%.',
              'ru': 'Урон по сбитым с ног противникам увеличен на 25%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_29.webp',
          },
          {
            'name': 'Echo of the Earth',
            'description': {
              'en': 'Earthquake duration increased by 1s.',
              'ru': 'Продолжительность землетрясения увеличена на 1 секунду.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_51.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Heavy Steel',
            'description': {
              'en': 'Increases damage by 40% against normal enemies.',
              'ru': 'Увеличивает урон на 40% против обычных врагов.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_61.webp',
          },
          {
            'name': 'Identified Weakness',
            'description': {
              'en':
                  'Increases damage by 40% against enemies immune to control effects.',
              'ru':
                  'Увеличивает урон на 40% против противников невосприимчивым к эффектам контроля.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_33.webp',
          },
          {
            'name': 'Firmness',
            'description': {
              'en':
                  'The jump animation is removed, now the earth is punched by the character, which reduces the cast time.',
              'ru': 'Создает землетрясения без анимации прыжка.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_40.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Crustal Change',
            'description': {
              'en':
                  'Creates 3 earthquakes. Last earthquake causes a larger explosion, knockdown. Damage increased by 300%.',
              'ru':
                  'Создает 3 землетрясения, последнее сбивает с ног и наносит на 300% больше урона.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_22.webp',
          },
          {
            'name': 'Great Earthquake',
            'description': {
              'en':
                  'The attack range of the earthquake is increased by 30%. The time between earthquakes is reduced and the number of earthquakes is doubled.',
              'ru':
                  'Радиус землетрясений увеличен на 30%. Время между землетрясениями сокращено вдвое.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_8.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Dragon Spiral Kick',
    'class': {
      'en': 'Battle Master',
      'ru': 'Аватар',
    },
    'description': {
      'en':
          'Charge to an enemy and attack dealing 22 damage 5 times. Each hit throws enemies into the air and you can change direction between each. If the enemy is hit in the air 167 damage is applied.',
      'ru':
          'Делает выпад и наносит 22 урона 5 раз. Каждый удар подбрасывает противника в воздух. В конце наносит 167 урона.'
    },
    'type': 'Combo',
    'cooldown': 16,
    'iconUrl': 'assets/icons/battlemaster/c03s06.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Attack Speed',
            'description': {
              'en': 'Increases attack speed and attack range by 10%.',
              'ru': 'Скорость атаки и дальность атаки увеличена на 10%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_6.webp',
          },
          {
            'name': 'Wide Blow',
            'description': {
              'en': 'Attack range increased by 20%.',
              'ru': 'Дистанция атаки увеличена на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_7.webp',
          },
          {
            'name': 'Critical Hit',
            'description': {
              'en': 'Increases critical hit rate by 15%.',
              'ru': 'Шанс критического удара увеличен на 15%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_4.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Quick Preparation',
            'description': {
              'en': 'Cooldown reduced by 4s.',
              'ru': 'Время восстановления умения сокращено на 4 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_56.webp',
          },
          {
            'name': 'Damage Increased',
            'description': {
              'en': 'Damage increased by 100%.',
              'ru': 'Урон увеличен на 100%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_0.webp',
          },
          {
            'name': 'AP buff',
            'description': {
              'en': 'Increases attack power by 25% for 3 seconds when hit.',
              'ru': 'Показатель атаки увеличен на 25% в течение 3 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_50.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Fallen Leaves',
            'description': {
              'en':
                  'Slide forward and allow you to knockdown enemies by pressing the skill key again.',
              'ru': 'При перемещении сбивает врагов с ног.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_77.webp',
          },
          {
            'name': 'Order Ascension Angle',
            'description': {
              'en':
                  '[Water] Increases damage by 50% and casts enemies into the air.',
              'ru':
                  '[Вода] Увеличивает урон на 50% и подбрасывает врагов в воздух.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_9.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Whisper of the Wind',
    'class': {
      'en': 'Battle Master',
      'ru': 'Аватар',
    },
    'description': {
      'en':
          'Within the range of 24m, the party’s powers increase the movement speed by 11% and attack speed by 5.5% for 6 sec.',
      'ru':
          'В радиусе 24 метров увеличивает скорость передвижения участников группы на 11% и скорость атаки на 5.5%. Длительность 6 секунд.'
    },
    'type': 'Normal',
    'cooldown': 30,
    'iconUrl': 'assets/icons/battlemaster/c03s07.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Blessing of the Wind',
            'description': {
              'en':
                  'Your attack speed increases by 8% for 6 seconds when casting a skill.',
              'ru': 'Ваша скорость атаки увеличена на 8% в течение 6 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_6.webp',
          },
          {
            'name': 'Breeze',
            'description': {
              'en':
                  'Your skill damage will be reduced by 25% for 6 seconds. The effect is lost when hit once.',
              'ru':
                  'Получаемый урон уменьшен на 25% в течение 6 секунд. Эффект пропадает при получении урона.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_25.webp',
          },
          {
            'name': 'Oath of Wind',
            'description': {
              'en':
                  'Your critical strike rate increased by 10% for 6 seconds when casting a skill.',
              'ru':
                  'Шанс критического удара увеличена на 10% в течении 6 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_49.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Reduction Damage',
            'description': {
              'en': '20% reduction in damage to party members within 24m for 6s.',
              'ru': 'Получаемый урон группы в радиусе 24 метров уменьшен на 20% в течение 6 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_25.webp',
          },
          {
            'name': 'Quicker',
            'description': {
              'en': 'Cooldown reduced by 6s.',
              'ru': 'Время восстановления уменьшено на 6 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_56.webp',
          },
          {
            'name': 'Whisper of the Wind',
            'description': {
              'en': 'Effect increased by 100%.',
              'ru': 'Бонус от эффекта увеличен на 100%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_51.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Ready to Attack',
            'description': {
              'en': 'Your attack power increases by 40% for 6s.',
              'ru': 'Показатель атаки увеличен на 40% в течение 6 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_50.webp',
          },
          {
            'name': 'Super-strong',
            'description': {
              'en':
                  'Causes powerful damage, also pushes away enemies and gains rage.',
              'ru':
                  'Наносит дополнительный урон, отталкивает врагов и увеличивает ярость.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_16.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Electric Wind Kick',
    'class': {
      'en': 'Battle Master',
      'ru': 'Аватар',
    },
    'description': {
      'en':
          'You jump on 16 meters to give an aerial kick. Enemies are struck up to 11 times by 43 damage. The movement of the skill is directed by the player\'s cursor.',
      'ru':
          'Совершает прыжок на расстояние до 16 метров, нанося 11 ударов по 43 урона. Можно менять направление.'
    },
    'type': 'Normal',
    'cooldown': 20,
    'iconUrl': 'assets/icons/battlemaster/c03s08.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Critical Hit',
            'description': {
              'en': '[Lightning] Increases critical hit rate by 15%.',
              'ru': '[Молния] Шанс критического удара увеличен на 15%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_17.webp',
          },
          {
            'name': 'Hydropower',
            'description': {
              'en':
                  'Reduces enemy attack speed by 20% and movement speed by 40% for 4 seconds when attacking.',
              'ru':
                  'Скорость атаки врага уменьшена на 20% и скорость перемещения на 40% в течение 4 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_14.webp',
          },
          {
            'name': 'Burns',
            'description': {
              'en':
                  '[Fire] The enemy burns for 5 seconds when hit by the attack.',
              'ru': '[Огонь] Накладывает эффект горения на 5 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_13.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Wide Blow',
            'description': {
              'en': 'Increases attack range by 20%.',
              'ru': 'Дальность атаки увеличена на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_7.webp',
          },
          {
            'name': 'Quick Preparation',
            'description': {
              'en': 'Cooldown time decreases by 5s.',
              'ru': 'Время восстановления умения сокращено на 5 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_56.webp',
          },
          {
            'name': 'Agile Judgment',
            'description': {
              'en': 'Attack speed increased by 20%.',
              'ru': 'Скорость атаки увеличена на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_6.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Wrath of Ange',
            'description': {
              'en':
                  'Changes the skill in a rotating kick of 4 turns diagonally, with a final hit on the ground dealing 30% more damage to enemies.',
              'ru': 'Наносит 4 удара, последний наносит на 30% больше урона.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_8.webp',
          },
          {
            'name': 'Extreme Water Lily',
            'description': {
              'en':
                  'Increases the spinning kick time by 1 second, and increases the total damage done by enemies by 100%.',
              'ru':
                  'Длительность умения увеличена на 1 секунду, урон увеличен на 100%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_58.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Phoenix Dive',
    'class': {
      'en': 'Battle Master',
      'ru': 'Аватар',
    },
    'description': {
      'en':
          'You jump very high in the air and land at maximum distance of 5 meters. You deal 17 damage as you approach the ground and then 256 damage at the end of your fall.',
      'ru':
          'Высоко подпрыгивает и приземляется на расстоянии 5 метров. При соприкосновении с землей наносит 17 и 16 урона, при полном приземлении наносит 256 урона.'
    },
    'type': 'Point',
    'cooldown': 18,
    'iconUrl': 'assets/icons/battlemaster/c03s09.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Wide Blow',
            'description': {
              'en': 'Attack Range increases by 20%.',
              'ru': 'Дистанция атаки увеличена на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_7.webp',
          },
          {
            'name': 'Light Target',
            'description': {
              'en': 'Targets that are stunned take 20% more damage.',
              'ru': 'Урон по оглушенным врагам увеличен на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_29.webp',
          },
          {
            'name': 'Burns',
            'description': {
              'en': 'The enemy burns for 5 seconds when hit by the attack',
              'ru': 'Накладывает эффект горения на 5 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_13.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Fierce Attack',
            'description': {
              'en':
                  'When you fall back and hit the ground, an explosion occurs, causing 25% more damage to enemies and throw them in the air.',
              'ru': 'Урон увеличен на 25%, подбрасывает врагов в воздух.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_0.webp',
          },
          {
            'name': 'Weak Point',
            'description': {
              'en':
                  'Increases damage dealt to enemies immune to controls by 40%.',
              'ru':
                  'Урон увеличен по целям, невосприимчивым к эффектам контроля.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_33.webp',
          },
          {
            'name': 'Frozen',
            'description': {
              'en': 'When attacking, the enemy is frozen for 2s.',
              'ru': 'Накладывает эффект обездвиживания на 2 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_43.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Unstoppable Surprise',
            'description': {
              'en':
                  'You can start the skill a second time by pressing the skill key again. Cooldown increased by 6s.',
              'ru':
                  'Можно использовать повторно, время восстановления увеличено на 6 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_38.webp',
          },
          {
            'name': 'Attack Speed',
            'description': {
              'en':
                  'Attack speed increased by 20%. Movement distance increased by 5m.',
              'ru':
                  'Скорость атаки увеличена на 20%. Дальность перемещения при приземлении увеличена на 5 метров.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_6.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Roar of Valor',
    'class': {
      'en': 'Battle Master',
      'ru': 'Аватар',
    },
    'description': {
      'en':
          'Shoots a momentary spell to inflict 209 damage and expels nearby enemies. Reduces critical strike resistance by 5% for 6s.',
      'ru':
          'Наносит 209 урона окружающим врагам, снижает сопротивление критическим ударам на 5% в течение 6 секунд.'
    },
    'type': 'Normal',
    'cooldown': 25,
    'iconUrl': 'assets/icons/battlemaster/c03s10.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Mind Enhancement',
            'description': {
              'en': 'Decrease MP consumption by 50%.',
              'ru': 'Потребление маны уменьшено на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_34.webp',
          },
          {
            'name': 'Wide Blow',
            'description': {
              'en': 'Attack Range increases by 20%.',
              'ru': 'Дистанция атаки увеличена на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_7.webp',
          },
          {
            'name': 'Concentration',
            'description': {
              'en': 'Increases the gain of the rage by 25% by attacking.',
              'ru': 'Увеличивает прирост ярости на 25%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_34.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Rapid Preparation',
            'description': {
              'en': 'Cooldown reduced by 5s.',
              'ru': 'Время восстановления уменьшено на 5 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_56.webp',
          },
          {
            'name': 'Mobility Weakness',
            'description': {
              'en':
                  'Reduces enemy movement speed by 60% for 4 seconds when attacking.',
              'ru':
                  'Скорость передвижения врагов уменьшена на 60% в течение 4 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_47.webp',
          },
          {
            'name': 'Afterimage of the King',
            'description': {
              'en': 'Increases the duration of the Roar of Valor effect by 2s.',
              'ru': 'Время действия умения увеличено на 2 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_46.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Deadly Wave',
            'description': {
              'en':
                  'When attacking, the enemy’s critical resistance decreases by 20%.',
              'ru': 'Сопротивление критическим атакам снижено на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_45.webp',
          },
          {
            'name': 'Impact Enhanced',
            'description': {
              'en':
                  'The skill casting method is changed to charge, and the damage done to the enemy by charge is increased by 250%.',
              'ru':
                  'Позволяет заряжать умение, при полном заряде наносит 250% урона.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_39.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Room Fire',
    'class': {
      'en': 'Battle Master',
      'ru': 'Аватар',
    },
    'description': {
      'en':
          'You kick that deals 50 damage and sends enemies in the air. The player jumps quickly and then hitting twice more, inflicting additional 66 and 165 damage. The direction can be changed between strikes.',
      'ru':
          'Наносит 50 урона, подбрасывая врагов. Далее наносит два дополнительных удара по 66 и 165 урона. Можно менять направление ударов.'
    },
    'type': 'Combo',
    'cooldown': 25,
    'iconUrl': 'assets/icons/battlemaster/c03s11.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Concentration',
            'description': {
              'en': 'Increases the gain of rage by 25% by attacking.',
              'ru': 'Увеличивает прирост ярости на 25%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_37.webp',
          },
          {
            'name': 'Weak Point',
            'description': {
              'en':
                  'Increases the damage dealt to enemies immune to controls by 30%.',
              'ru':
                  'Урон увеличен на 30% по целям, невосприимчивым у эффектам контроля.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_33.webp',
          },
          {
            'name': 'Sharp Footwork',
            'description': {
              'en': 'Hit the enemy without throw in the air, but knocks down.',
              'ru': 'Не подбрасывает, а сбивает с ног.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_60.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Attack Range',
            'description': {
              'en': 'Increases attack range and attack speed by 20%.',
              'ru': 'Скорость атаки и дальность атаки увеличены на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_7.webp',
          },
          {
            'name': 'Shadows of Darkness',
            'description': {
              'en':
                  '[Shadow] increases the critical hit rate by 30%. The target hit in the last kick attack will be blind for 5s.',
              'ru':
                  '[Тьма] Увеличивает шанс критического удара на 30%, ослепляет врагов на 5 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_19.webp',
          },
          {
            'name': 'Intense Lightning',
            'description': {
              'en':
                  '[Lightning] Enemies hit by the last attack have a 50% chance of being electrified for 4s.',
              'ru':
                  '[Молния] Шанс наложить эффект молнии равен 50% в течение 4 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_17.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Exception',
            'description': {
              'en':
                  'Jumps forward and hit giving 150% more damage to enemies and knocking them around. Total damage done by your attack increases by 30%.',
              'ru':
                  'При прыжке наносит на 150% урона больше. Общий урон увеличен на 30%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_39.webp',
          },
          {
            'name': 'Exaggerated Ability',
            'description': {
              'en': 'Damage given to the attacking enemy increases by 80%.',
              'ru': 'Урон увеличен на 80%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_40.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Internal Combustion',
    'class': {
      'en': 'Battle Master',
      'ru': 'Аватар',
    },
    'description': {
      'en':
          'The wind is around the player instantly deals 43 damage. The wind holds for 20 seconds and deals 35 damage to nearby enemies every 0.5 seconds.',
      'ru':
          'Создает порыв ветра, наносящий моментально 43 урона. Эффект длиться 20 секунд, нанося 35 урона каждые 0.5 секунд.'
    },
    'type': 'Normal',
    'cooldown': 36,
    'iconUrl': 'assets/icons/battlemaster/c03s12.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Burning Armor',
            'description': {
              'en':
                  'The damage received at the launch of the skill is reduced by 10%.',
              'ru': 'Получаемый урон уменьшен на 10%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_25.webp',
          },
          {
            'name': 'Lightfoot',
            'description': {
              'en': 'Increases movement speed by 30% for 3s.',
              'ru': 'Скорость передвижения увеличена на 30% в течение 3 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_11.webp',
          },
          {
            'name': 'Deadly Acting',
            'description': {
              'en': 'Increases the gain of the rage by 50% by attacking.',
              'ru': 'Прирост ярости увеличен на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_34.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Road of Commitment',
            'description': {
              'en': 'The duration increases by 8s.',
              'ru': 'Время действия увеличено на 8 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_51.webp',
          },
          {
            'name': 'Technology Loss',
            'description': {
              'en':
                  'Reduces the cooldown by 15s, but also decreases the duration by 4s.',
              'ru':
                  'Время восстановления уменьшено на 15 секунд, время действия эффекта уменьшено на 4 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_56.webp',
          },
          {
            'name': 'Fierce Battle',
            'description': {
              'en': 'Increases damage by 5% for 2s, cumulative up to 10 times.',
              'ru':
                  'Увеличивает урон на 5% в течение 2 секунд. Может складываться до 10 раз.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_0.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Attack Range',
            'description': {
              'en':
                  'Increases attack range by 20%. Increases critical damage by 50%.',
              'ru':
                  'Радиус действия увеличен на 20%. Критический урон увеличен на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_7.webp',
          },
          {
            'name': 'Explosion in the Air',
            'description': {
              'en':
                  'Causes an explosion, inflicting 50% of basic skill damage and pushes the enemy.',
              'ru': 'Создает взрыв, наносящий 50% урона и отталкивающий врагов.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_53.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Art: Spiral Blast',
    'class': {
      'en': 'Battle Master',
      'ru': 'Аватар',
    },
    'description': {
      'en':
          'Performs a powerful, smashing attack that deals 312 damage to enemies.',
      'ru': 'Наносит 312 урона врагам.'
    },
    'type': 'Normal',
    'cooldown': 16,
    'iconUrl': 'assets/icons/battlemaster/c03s13.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Weak Point',
            'description': {
              'en':
                  'Increases the damage dealt to enemies immune to controls by 30%.',
              'ru':
                  'Урон увеличен на 30% по целям, невосприимчивым к эффектам контроля.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_33.webp',
          },
          {
            'name': 'Attack Range',
            'description': {
              'en': 'Attack range increased by 20%.',
              'ru': 'Дальность атаки увеличена на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_7.webp',
          },
          {
            'name': 'Absorption Blow',
            'description': {
              'en':
                  'During the preparation of this attack, the player is immune to control while pulls enemies.',
              'ru':
                  'Во время подготовки умения дает невосприимчивость к эффектам контроля и притягивает врагов.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_71.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Attack Speed',
            'description': {
              'en': 'Attack speed increased by 20%.',
              'ru': 'Скорость атаки увеличена на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_6.webp',
          },
          {
            'name': 'Сollection',
            'description': {
              'en': '30% chance of acquire 1 globe.',
              'ru': '30% шанс получить заряд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_36.webp',
          },
          {
            'name': 'Dead Set',
            'description': {
              'en':
                  'Increases attack power by 30% for 4 seconds when attacking.',
              'ru': 'Показатель атаки увеличен на 30% в течение 4 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_50.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Bastion of Destruction',
            'description': {
              'en': 'Increases damage by 80%.',
              'ru': 'Увеличивает урон на 80%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_0.webp',
          },
          {
            'name': 'Meditation Strike',
            'description': {
              'en':
                  'The skill no longer pushes the enemy but stuns them for 5s.',
              'ru': 'Не притягивает врагов, а оглушает на 5 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_44.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Art: Dragon Ascend',
    'class': {
      'en': 'Battle Master',
      'ru': 'Аватар',
    },
    'description': {
      'en':
          'Deals 22 damage by gathering enemies, then jumps and releases spiraling Dragon\'s energy upwards to hit enemies 5 times for 55-39-67-94-277 damage.',
      'ru':
          'Наносит 22 урона, далее подпрыгивает и наносит дополнительно 5 ударов по 55-39-67-94-277 урона соответственно.'
    },
    'type': 'Normal',
    'cooldown': 24,
    'iconUrl': 'assets/icons/battlemaster/c03s14.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Attack Range',
            'description': {
              'en': 'Attack Range increases by 20%.',
              'ru': 'Дистанция атаки увеличена на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_71.webp',
          },
          {
            'name': 'Сollection',
            'description': {
              'en': '40% chance of acquire 1 globe.',
              'ru': '40% шанс получить заряд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_36.webp',
          },
          {
            'name': 'Strength',
            'description': {
              'en':
                  'After your jump, you are becomes immune to control effects.',
              'ru':
                  'После прыжка до завершения атаки дает невосприимчивость к эффектам контроля.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_23.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Concentrated Hit',
            'description': {
              'en': 'Increases damage by 30%.',
              'ru': 'Увеличивает урон на 30%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_0.webp',
          },
          {
            'name': 'Ascension of the Black Dragon',
            'description': {
              'en': 'Increases critical damage by 100%.',
              'ru': 'Увеличивает критический урон на 100%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_19.webp',
          },
          {
            'name': 'Finishing Attack',
            'description': {
              'en': 'Deals 80% more damage to enemies with <30% health.',
              'ru': 'Наносит на 80% больше по целям со здоровьем ниже 30%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_32.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Eye of the Storm',
            'description': {
              'en':
                  'Now, the skill allows enemies to pulled up to 2.5 seconds. Increased damage by 50%.',
              'ru':
                  'Позволяет удерживать умение в течение 2.5 секунд, притягивая врагов. Урон увеличен на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_33.webp',
          },
          {
            'name': 'Finishing Blow',
            'description': {
              'en':
                  'The last attack will have a 100% chance of being a critical hit.',
              'ru': 'Последний удар имеет 100% шанс критического удара.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_5.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Art: Launching Punch',
    'class': {
      'en': 'Battle Master',
      'ru': 'Аватар',
    },
    'description': {
      'en':
          'Unleashes an aura of electricity that deals 278 damage to enemies with 3 hits. Enemies become stunned for 2s, and receive 20% more damage while stunning.',
      'ru':
          'Создает волну энергии, наносящую 278 урона за 3 удара. Оглушает врагов на 2 секунды, увеличивая получаемый урон на 20%.'
    },
    'type': 'Normal',
    'cooldown': 16,
    'iconUrl': 'assets/icons/battlemaster/c03s15.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Critical Hit',
            'description': {
              'en': 'Increase critical hit rate by 15%.',
              'ru': 'Шанс критического удара увеличен на 15%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_4.webp',
          },
          {
            'name': 'Сollection',
            'description': {
              'en': 'The attack hits 4 times.',
              'ru': 'Волна ударяет 4 раза.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_17.webp',
          },
          {
            'name': 'Wide Attack',
            'description': {
              'en': 'Increases attack range by 30%.',
              'ru': 'Дальность атаки увеличена на 30%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_7.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Lightning',
            'description': {
              'en': 'The electric wave goes in line and extends over 9 meters.',
              'ru': 'Волна удлиняется на 9 метров.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_87.webp',
          },
          {
            'name': 'Firm Will',
            'description': {
              'en': 'Increases wave damage by 80%.',
              'ru': 'Увеличивает урон волны на 80%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_0.webp',
          },
          {
            'name': 'Bend',
            'description': {
              'en': 'You charge 4 meters during the attack.',
              'ru': 'Вы делаете выпад на 4 метра.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_40.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Electric Shock',
            'description': {
              'en':
                  'After the attack, a cloud of electric current remains for 5 seconds.',
              'ru': 'Длительность эффекта увеличена на 5 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_53.webp',
          },
          {
            'name': 'Dangerous Deal',
            'description': {
              'en':
                  'You consume 1 additional elemental bubble and the stunning effect is removed. However, the skill becomes a combo and its damage increases by 100%.',
              'ru':
                  'Требует один заряд. Враги не оглушаются, но урон увеличен на 100%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_38.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Art: Tornado',
    'class': {
      'en': 'Battle Master',
      'ru': 'Аватар',
    },
    'description': {
      'en':
          'The player rises in the air and turns quickly to create a tornado suffers 47 damage with each hit. The skill can be held for 4 seconds while pulling enemies. The movement of the skill is directed by the player\'s cursor.',
      'ru':
          'Подпрыгивает в воздух и создает вихрь длительностью 4 секунды, наносящий 47 урона за каждый удар и притягивая врагов. Позволяет управлять вихрем.'
    },
    'type': 'Hold 4 sec',
    'cooldown': 24,
    'iconUrl': 'assets/icons/battlemaster/c03s16.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Earth Storm',
            'description': {
              'en':
                  '[Earth] Enemies are no longer pull up, but the damage increases by 30%.',
              'ru': '[Земля] Не притягивает, но урон увеличен на 30%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_15.webp',
          },
          {
            'name': 'Cold Storm',
            'description': {
              'en': '[Cold] Enemies hit 5 times are frozen for 2 seconds.',
              'ru':
                  '[Холод] Наносит дополнительно 5 ударов, замораживая врагов.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_14.webp',
          },
          {
            'name': 'Lightning Storm',
            'description': {
              'en':
                  '[Lighting] Each hit in the tornado has a 30% chance to increase critical hit rate.',
              'ru':
                  '[Молния] Каждый удар вихря имеет 30% шанс нанести критический удар.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_17.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Growing Attack',
            'description': {
              'en':
                  'On each turn, the damage of the tornado increases by 5%, with a maximum of 60%.',
              'ru':
                  'Каждый удар вихря наносит на 5% урона больше, максимум 60%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_58.webp',
          },
          {
            'name': 'Wide Attack',
            'description': {
              'en': 'Increases the range by 30%.',
              'ru': 'Дальность атаки увеличена на 30%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_7.webp',
          },
          {
            'name': 'Add Rotation',
            'description': {
              'en':
                  'Increases movement speed by 13% while casting and increases its duration by 1s.',
              'ru':
                  'Скорость передвижения увеличена на 13% и длительность вихря на 1 секунду.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_11.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Summon Storm',
            'description': {
              'en':
                  'Instead of turning you into a tornado, you summon one that pulls enemies. It remains 4s.',
              'ru':
                  'Вместо вихря создает притягивающий поток воздуха длительностью 4 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_85.webp',
          },
          {
            'name': 'Raging Storm',
            'description': {
              'en':
                  'When the tornado ends, it deals 60% of the basic skill damage to the enemy.',
              'ru': 'Вихрь наносит 60% дополнительного урона при завершении.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_78.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Art: Exploding Quake',
    'class': {
      'en': 'Battle Master',
      'ru': 'Аватар',
    },
    'description': {
      'en':
          'Make a powerful punch that causes 3 ground explosions. Explosions advance forward and deals 149-223-372 damage to enemies on their way,',
      'ru':
          'Создает 3 последовательных направленных взрыва, наносящие 149-223-372 урона.'
    },
    'type': 'Normal',
    'cooldown': 30,
    'iconUrl': 'assets/icons/battlemaster/c03s17.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Weak Point',
            'description': {
              'en':
                  'Increases damage dealt to enemies immune to controls by 30%.',
              'ru':
                  'Урон увеличена на 30% по целям, невосприимчивым к эффектам контроля.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_33.webp',
          },
          {
            'name': 'The Last Blast',
            'description': {
              'en':
                  'The damage caused by the third explosion is increased by 25%.',
              'ru': 'Урон от 3 взрыва увеличен на 25%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_0.webp',
          },
          {
            'name': 'Rough Explosion',
            'description': {
              'en':
                  'Increases the attack power by 3% for 5 seconds for the number of hits. It can be stacked up to 10 times.',
              'ru':
                  'Показатель атаки увеличен на 3% в течение 5 секунд за каждый удар. Суммарно до 10 раз.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_50.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Сollection',
            'description': {
              'en': '75% chance of acquire 1 bubble.',
              'ru': '75% шанс получить заряд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_36.webp',
          },
          {
            'name': 'Frost Explosion',
            'description': {
              'en': 'Enemies are frozen for 4s.',
              'ru': 'Замораживает врагов на 4 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_14.webp',
          },
          {
            'name': 'Flame Explosion',
            'description': {
              'en':
                  '[Fire] Inflicts a burn for 5 seconds, which can accumulate up to 6 times.',
              'ru':
                  '[Огонь] Накладывает эффект горения на 5 секунд, суммируется до 6 раз.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_13.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Endless Destruction',
            'description': {
              'en':
                  'The blast spreads in three directions. Damage increased by 30%.',
              'ru': 'Взрыв распространяется в стороны, урон увеличен на 30%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_54.webp',
          },
          {
            'name': 'Big Explosion',
            'description': {
              'en':
                  'After the third explosion, the player jumps once more, causing a massive explosion. Damage increased by 60%.',
              'ru': 'После 3 взрыва наносит дополнительный урон на 60%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_53.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Advancing Strike',
    'class': {
      'en': 'Infighter',
      'ru': 'Дуалист',
    },
    'description': {
      'en':
          'Charge forward, deal 31 damage (max 3 times) on contact while charging, then land a ground slam for 40 damage.',
      'ru':
          'Делает выпад нанося 31 урона 3 раза. В конце дополнительно наносит 40 урона.'
    },
    'type': 'Normal',
    'cooldown': 5,
    'iconUrl': 'assets/icons/infighter/c04s00.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Focus',
            'description': {
              'en': 'Shock gain increased by 10.',
              'ru': 'Прирост шока увеличен на 10.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_36.webp',
          },
          {
            'name': 'Excellent Mobility',
            'description': {
              'en': 'The charge distance increased by 3 meters.',
              'ru': 'Дальность выпада увеличена на 3 метра.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_10.webp',
          },
          {
            'name': 'Ready to Attack',
            'description': {
              'en': 'Attack power increases by 10% for 3 seconds when hit.',
              'ru': 'Показатель атаки увеличен на 10% в течение 3 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_50.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Ruthless Advance',
            'description': {
              'en': 'Increase total damage by 30%.',
              'ru': 'Урон увеличен на 30%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_39.webp',
          },
          {
            'name': 'Strong Fist',
            'description': {
              'en':
                  'The range of slam attack increases by 70% and pulls enemies to the slam location.',
              'ru': 'Дальность атаки увеличена на 70%, притягивает врагов.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_71.webp',
          },
          {
            'name': 'Destroyer',
            'description': {
              'en':
                  'Increase damage by 15% and knock up enemies with the slam attack.',
              'ru': 'Урон увеличен на 15%, сбивает врагов с ног.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_0.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Ruthless Advance',
            'description': {
              'en': 'Damage increases by 50%.',
              'ru': 'Урон увеличен на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_5.webp',
          },
          {
            'name': 'Shock Wave',
            'description': {
              'en':
                  'Attack speed is increased by 20% and damage increases by 40% against enemies that are immune to control effects.',
              'ru':
                  'Скорость атаки увеличена на 20% и урон на 40% против целей, невосприимчивых к эффектам контроля.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_33.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Sundering Strike',
    'class': {
      'en': 'Infighter',
      'ru': 'Дуалист',
    },
    'description': {
      'en': 'Punch 3 times, each dealing 52-52-70 damage.',
      'ru': 'Ударяет 3 раза по 52-52-70 урона соответственно.'
    },
    'type': 'Combo',
    'cooldown': 8,
    'iconUrl': 'assets/icons/infighter/c04s01.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Internal Bleeding',
            'description': {
              'en': '50% chance to inflict Bleed for 3s.',
              'ru':
                  'Вероятность наложить кровотечение равен 50% в течение 3 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_45.webp',
          },
          {
            'name': 'Wide Blow',
            'description': {
              'en': 'Increases attack range by 20%.',
              'ru': 'Дальность атаки увеличена на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_7.webp',
          },
          {
            'name': 'Monster Shock',
            'description': {
              'en':
                  'Damage to target and party members increases by 10% for 8s.',
              'ru':
                  'Урон получаемый целью от группы увеличен на 10% в течение 8 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_61.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Trifoliate',
            'description': {
              'en':
                  'Damage of the first hit increases by 5% and every hit after that increases by 10%.',
              'ru': 'Урон первого удара увеличен на 5%, последующих на 10%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_58.webp',
          },
          {
            'name': 'Identified Weakness',
            'description': {
              'en':
                  'Increases damage done enemies immune to control effects by 50%.',
              'ru': 'Увеличивает урон по целям с иммунитетом к контролю на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_33.webp',
          },
          {
            'name': 'Focus',
            'description': {
              'en': 'Shock gain increased by 15.',
              'ru': 'Прирост шока увеличен на 15.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_36.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'One Punch Blow',
            'description': {
              'en':
                  'After the third hit adds one more attack, the total damage increases by 50%.',
              'ru':
                  'После последнего удара добавляет еще одну атаку, что наносящую 50% дополнительного урона.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_38.webp',
          },
          {
            'name': 'Transcendent',
            'description': {
              'en': 'The last hit has it’s critical chance raised by 100%.',
              'ru':
                  'Увеличивает шанс критического урона последнего удара до 100%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_5.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Wild Tiger Strike',
    'class': {
      'en': 'Infighter',
      'ru': 'Дуалист',
    },
    'description': {
      'en':
          'Attack two times rapidly dealing 34, 68 damage and knock up on the last hit.',
      'ru': 'Проводит 2 удара, наносит 34 и 68 урона, вторая атака подкидывает.'
    },
    'type': 'Normal',
    'cooldown': 8,
    'iconUrl': 'assets/icons/infighter/c04s02.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Wide Blow',
            'description': {
              'en': 'Attack Range increases by 20%.',
              'ru': 'Дистанция атаки увеличена на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_7.webp',
          },
          {
            'name': 'Amplification',
            'description': {
              'en':
                  'Damage to target and party members increases by 10% for 8s.',
              'ru': 'Урон по цели группы увеличен на 10% в течение 8 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_2.webp',
          },
          {
            'name': 'Abdominal Respiration',
            'description': {
              'en': 'Energy consumption reduced by 5.',
              'ru': 'Уменьшает затрату энергии на 5.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_35.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Dig',
            'description': {
              'en': 'Moving forward while attack.',
              'ru': 'Перемещает вперед во время удара.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_10.webp',
          },
          {
            'name': 'Identified Weakness',
            'description': {
              'en':
                  'Increases damage done to enemies immune to control effects by 50%.',
              'ru': 'Увеличивает урон по целям с иммунитетом к контролю на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_33.webp',
          },
          {
            'name': 'Concentration',
            'description': {
              'en': 'Shock gain increased by 15.',
              'ru': 'Прирост шока увеличен на 15.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_36.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Coarse Division',
            'description': {
              'en':
                  'On successful hit the attack strength increases by 10% for each enemy hit up to 50%, buff lasts 3 seconds.',
              'ru':
                  'При попадании увеличивает силу атаки на 10% за каждую задетую цель, максимум до 50%, действует 3 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_50.webp',
          },
          {
            'name': 'Frantic Bombing',
            'description': {
              'en':
                  'Add an additional attack after the second hit, and if hit on a single target, deal 40% extra damage.',
              'ru':
                  'Добавляет дополнительную атаку после второго удара, увеличивает урон по одиночной цели на 40%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_38.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Dragon\'s Descent',
    'class': {
      'en': 'Infighter',
      'ru': 'Дуалист',
    },
    'description': {
      'en':
          'Jump to mouse location, dealing 300 damage and knock enemies over.',
      'ru':
          'Проводит прыжок в местоположение курсора и наносит 300 урона, опрокидывает при попадании.'
    },
    'type': 'Point',
    'cooldown': 16,
    'iconUrl': 'assets/icons/infighter/c04s03.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Excellent Mobility',
            'description': {
              'en': 'Travel distance increased by 2 meters.',
              'ru': 'Увеличивает расстояние перемещения на 2 метра.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_10.webp',
          },
          {
            'name': 'Abdominal Respiration',
            'description': {
              'en': 'Energy consumption reduced by 5.',
              'ru': 'Уменьшает затрату энергии на 5.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_35.webp',
          },
          {
            'name': 'Momentary Burst',
            'description': {
              'en':
                  'Increases energy consumption by 10 but increases damage by 30%.',
              'ru':
                  'Увеличивает стоимость энергии на 10, но увеличивает наносимый урон на 30%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_2.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Wide Blow',
            'description': {
              'en': 'Increases AoE by 30%.',
              'ru': 'Увеличивает радиус атаки на 30%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_7.webp',
          },
          {
            'name': 'Incarnation',
            'description': {
              'en':
                  'After landing, you cover yourself in a fire aura for 6s, dealing continuous damage to nearby enemies.',
              'ru':
                  'При приземлении создает ауру огня вокруг персонажа на 6 секунд, наносящую периодический урон вокруг.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_13.webp',
          },
          {
            'name': 'Strength',
            'description': {
              'en': 'Immune to one attack while cast.',
              'ru': 'Невосприимчивость к одной атаке во время удара.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_23.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Destruction',
            'description': {
              'en': 'Increases damage to single targets by 60%.',
              'ru': 'Урон по одиночной цели увеличен на 60%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_28.webp',
          },
          {
            'name': 'Black Dragon\'s Fall',
            'description': {
              'en': 'Increases damage by 40%.',
              'ru': 'Увеличивает урон на 40%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_19.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Instant Strike',
    'class': {
      'en': 'Infighter',
      'ru': 'Дуалист',
    },
    'description': {
      'en': 'Instantly strike for 137 damage and stun target for 3 sec.',
      'ru': 'Мгновенно наносит 137 урона и оглушает на 3 секунды.'
    },
    'type': 'Normal',
    'cooldown': 20,
    'iconUrl': 'assets/icons/infighter/c04s04.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Wide Blow',
            'description': {
              'en': 'Attack Range increases by 20%.',
              'ru': 'Дистанция атаки увеличена на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_7.webp',
          },
          {
            'name': 'Abdominal Respiration',
            'description': {
              'en': 'Energy consumption reduced by 5.',
              'ru': 'Уменьшает затрату энергии на 5.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_35.webp',
          },
          {
            'name': 'Concentration',
            'description': {
              'en': 'Shock gain increased by 10.',
              'ru': 'Прирост шока увеличен на 10.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_36.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Dangerous Contract',
            'description': {
              'en': 'Decreases cooldown by 6s but reduces Stun duration by 1s.',
              'ru':
                  'Уменьшает время восстановления на 6 секунд, уменьшает длительность оглушения на 1 секунду.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_56.webp',
          },
          {
            'name': 'Accuracy',
            'description': {
              'en': 'Increases the Stun duration by 2s.',
              'ru': 'Увеличивает длительность оглушения на 2 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_44.webp',
          },
          {
            'name': 'Adverse Effect',
            'description': {
              'en':
                  'The stun effect disappears and the damage done to the enemy is 300% increased.',
              'ru':
                  'Эффект стана пропадает и урон по врагам увеличивается на 300%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_33.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Tracking Instinct',
            'description': {
              'en': 'Move and attack to the mouse position in 4m.',
              'ru': 'Перемещает на 4 метра в указанном направлении.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_10.webp',
          },
          {
            'name': 'Last Stand',
            'description': {
              'en': 'Increase attack AoE by 350 degrees.',
              'ru': 'Увеличивает область атаки на 350 градусов.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_40.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Earth Tremor',
    'class': {
      'en': 'Infighter',
      'ru': 'Дуалист',
    },
    'description': {
      'en':
          'Shake the ground with your feet, dealing 256 damage to the nearby enemies and knock over.',
      'ru': 'Наносит 256 урона и опрокидывает при попадании.'
    },
    'type': 'Normal',
    'cooldown': 16,
    'iconUrl': 'assets/icons/infighter/c04s05.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Force of the Earth',
            'description': {
              'en':
                  '[Earth] Earthquake reducing the enemy\'s move speed by 30% for 4s.',
              'ru':
                  '[Земля] Умение накладывает замедление на 30% на 4 секунды при попадании.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_15.webp',
          },
          {
            'name': 'Indomitable Strength',
            'description': {
              'en': '[Fire] Applies Burn effect for 3s.',
              'ru': '[Огонь] Накладывает эффект горения в течение 3 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_13.webp',
          },
          {
            'name': 'Shock Release',
            'description': {
              'en': 'Increase the duration of the knock up in 2s.',
              'ru': 'Увеличивает длительность опрокидывания на 2 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_9.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Breakthrough',
            'description': {
              'en': 'Creates a wave for 7m in the direction of cursor.',
              'ru': 'Создает волну перед персонажем дальностью 7 метров.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_39.webp',
          },
          {
            'name': 'Surprise Attack',
            'description': {
              'en': 'Damage to enemy is increased by 50%.',
              'ru': 'Увеличивает урон на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_40.webp',
          },
          {
            'name': 'Strong Case',
            'description': {
              'en':
                  'Damage increases by 60% by pressing on the left foot 2 times fast and then strong on the right foot.',
              'ru':
                  'Добавляет 2 удара по земле левой ногой, увеличивая общий урон на 60%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_38.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Empowered Earthquake',
            'description': {
              'en':
                  'After a short delay another hit occurs at the the same place, the total damage increases by 60%.',
              'ru':
                  'Происходит взрыв после небольшой задержки, что наносит 60% от общего урона умения.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_78.webp',
          },
          {
            'name': 'Giant’s Advance',
            'description': {
              'en': 'Attack range increased by 30%.',
              'ru': 'Увеличивает радиус атаки на 30%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_7.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Fury Strike',
    'class': {
      'en': 'Infighter',
      'ru': 'Дуалист',
    },
    'description': {
      'en':
          'Deals 40 and 27 damage with a hit and then move forward for 2m with a kick to deal 159 damage.',
      'ru':
          'Наносит 40 урона, затем проводит хук, что наносит 27 урона, персонажа делает выпад на 2 метра и производит финальный удар 159 урона.'
    },
    'type': 'Hold 1 sec',
    'cooldown': 16,
    'iconUrl': 'assets/icons/infighter/c04s06.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Crackshot',
            'description': {
              'en': 'Increases damage of the last attack by 50%.',
              'ru': 'Увеличивает урон последнего удара на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_18.webp',
          },
          {
            'name': 'Righteous Plunder',
            'description': {
              'en':
                  'As you hit, there’s a 50% chance to apply Bleed for 5s, this can stack up to 3 times.',
              'ru':
                  'Каждая атака имеет 50% шанс наложить кровотечение на 5 секунд, накладывается до 3 раз.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_45.webp',
          },
          {
            'name': 'Excellent Mobility',
            'description': {
              'en': 'Travel distance increased by 2m.',
              'ru': 'Увеличивает расстояние перемещения на 2 метра.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_10.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Formidable Will',
            'description': {
              'en': 'The duration of a quick punch increases by up to 0.3s.',
              'ru': 'Увеличивает продолжительность быстрых атак на 0.3 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_42.webp',
          },
          {
            'name': 'Red Explosion',
            'description': {
              'en':
                  'Increases damage by 100% against enemies immune to control effects.',
              'ru':
                  'Увеличивает урон серии быстрых ударов на 100% против врагов с иммунитетом к контролю.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_33.webp',
          },
          {
            'name': 'Single Blow',
            'description': {
              'en': 'Increases fast hits damage to single targets by 60%.',
              'ru':
                  'Увеличивает урон от серии быстрых ударов на 60% против одиночных целей.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_28.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Widespread',
            'description': {
              'en': 'The fast hits damage increases by 100%.',
              'ru': 'Увеличивает урон от серии быстрых ударов на 100%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_50.webp',
          },
          {
            'name': 'Reverse Rotation Blow',
            'description': {
              'en': 'After the final hit, adds one more attack in front.',
              'ru': 'Добавляет еще один финальный удар.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_77.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Push Through',
    'class': {
      'en': 'Infighter',
      'ru': 'Дуалист',
    },
    'description': {
      'en':
          'Makes hits in a cursor direction, each hit do 71 damage. Applies buff with each successful hit on 1s which decreases incoming damage for 5%, stacks up to 10 stacks.',
      'ru':
          'Наносит 65 урона каждый ударом, успешный удар накладывает эффект, уменьшающий получаемый урон на 5% максимум на 1 секунду. Суммируется до 10 раз.'
    },
    'type': 'Hold 1 sec',
    'cooldown': 24,
    'iconUrl': 'assets/icons/infighter/c04s07.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Critical Hit',
            'description': {
              'en': 'Increases critical hit rate by 15%.',
              'ru': 'Шанс критического удара увеличен на 15%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_4.webp',
          },
          {
            'name': 'Solid Armor',
            'description': {
              'en': 'Incoming damage received reduced by 20% during cast.',
              'ru':
                  'Получаемый урон уменьшается на 20% во время использования умения.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_25.webp',
          },
          {
            'name': 'Quick Charge',
            'description': {
              'en':
                  'Every time this attack successfully lands, generates 1 additional Shock.',
              'ru': 'Каждый успешный удар генерирует 1 единицу шока.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_36.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Anger',
            'description': {
              'en':
                  'If your health falls under 50%, increases damage dealt by 50%.',
              'ru':
                  'Увеличивает наносимый урон умением на 50%, если уровень здоровья персонажа ниже 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_32.webp',
          },
          {
            'name': 'Momentary Burst',
            'description': {
              'en':
                  'Increases energy consumption by 5 but increases damage by 30%.',
              'ru':
                  'Увеличивает стоимость энергии на 5, но увеличивает наносимый урон на 30%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_0.webp',
          },
          {
            'name': 'Piercing Strike',
            'description': {
              'en': 'Attack ignores 40% of enemy’s physical defense.',
              'ru': 'Атака игнорирует 40% физической защиты цели.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_2.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Threshold of Death',
            'description': {
              'en':
                  'Adds the perfect zone, when the perfect zone is successful strike with additional hit to do 6 times more damage than ordinary punches and knocks down.',
              'ru':
                  'Добавляет идеальную зону, при успехе проводит прыжок и наносит урон равный 6 ударам. Сбивает с ног.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_72.webp',
          },
          {
            'name': 'Forward Advance',
            'description': {
              'en':
                  'Increases attack speed by 20% and decrease total charge time by 50%.',
              'ru':
                  'Скорость атаки увеличена на 20%. Время удержания уменьшено на 50%. '
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_6.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Triplex Punch',
    'class': {
      'en': 'Infighter',
      'ru': 'Дуалист',
    },
    'description': {
      'en':
          'Perform 3 attacks dealing 73, 88, 132 damage and character is moved forward before the last hit.',
      'ru':
          'Наносит 2 удара 73 и 88 урона, далее делает выпад и наносит последний удар 132 урона.'
    },
    'type': 'Combo',
    'cooldown': 16,
    'iconUrl': 'assets/icons/infighter/c04s08.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Enhanced Blow',
            'description': {
              'en':
                  'Transforms the last attack into a strong smash which knocks down enemies.',
              'ru': 'Последняя атака опрокидывает.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_39.webp',
          },
          {
            'name': 'Wave',
            'description': {
              'en':
                  'The final strike fires a burst of energy 7 meter outwards.',
              'ru': 'Последняя атака наносит урон до 7 метров перед персонажем.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_87.webp',
          },
          {
            'name': 'Full Power',
            'description': {
              'en':
                  'The last blow releases energy from the swinging arm and Increases damage by 30%.',
              'ru': 'Увеличивает урон последней атаки на 30%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_0.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Concentration',
            'description': {
              'en': 'Shock gain increased by 10.',
              'ru': 'Прирост шока увеличен на 10.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_37.webp',
          },
          {
            'name': 'Wide Blow',
            'description': {
              'en': 'Increases attack range by 20%.',
              'ru': 'Увеличивает радиус атаки на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_7.webp',
          },
          {
            'name': 'Quick Preparation',
            'description': {
              'en': 'Reduces the cooldown time by 4s.',
              'ru': 'Время восстановления умения сокращено на 4 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_56.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Reinforcement',
            'description': {
              'en':
                  'Increases movement distance by 1 meter, attack speed by 20%, and damage by 150% when attacking enemy immune to control effects.',
              'ru':
                  'Увеличивает дальность перемещения на 1 метр, скорость атаки на 20% и урон последнего удара на 150% против целей с иммунитетом к контролю.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_10.webp',
          },
          {
            'name': 'Enhanced Fist',
            'description': {
              'en':
                  'Grants immunity to control effects while casting and increases the damage by 40%.',
              'ru':
                  'Увеличивает урон на 40% и дает иммунитет к контролю во время последней атаки.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_23.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Chains Of Resonance',
    'class': {
      'en': 'Infighter',
      'ru': 'Дуалист',
    },
    'description': {
      'en':
          'Fire a shock wave to the front causing 94 damage and pull enemies dealing 120 damage.',
      'ru':
          'Выпускает цепь с крюком, нанося 94 при попадании. Притягивает врагов, нанося 120 урона.'
    },
    'type': 'Normal',
    'cooldown': 15,
    'iconUrl': 'assets/icons/infighter/c04s09.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Quick Preparation',
            'description': {
              'en': 'Cooldown reduced by 2s.',
              'ru': 'Уменьшает время восстановления на 2 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.webp',
          },
          {
            'name': 'Concentration',
            'description': {
              'en': 'Increases Shock gain by 5s.',
              'ru': 'Прирост шока увелиен на 5 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_36.webp',
          },
          {
            'name': 'Quick Hand',
            'description': {
              'en': 'Attack speed increases by 10%.',
              'ru': 'Увеличивает скорость атаки на 10%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_41.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Enhanced Blow',
            'description': {
              'en': 'Decreases Shock gain by 10 but increases damage by 40%.',
              'ru': 'Уменьшает прирост шока на 10, но увеличивает урон на 40%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_0.webp',
          },
          {
            'name': 'Vigilance',
            'description': {
              'en':
                  'Increases attack power by 5% for 3s. Can be stacked up to 10 times.',
              'ru':
                  'Увеличивает силу атаки на 5% в течение 3 секунда. Суммируется до 10 раз за каждого врага.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_50.webp',
          },
          {
            'name': 'Piercing Strike',
            'description': {
              'en': 'Attack ignores 40% of enemy’s physical defense.',
              'ru': 'Атака игнорирует 40% физической защиты цели.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_2.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Oscillating Resonance',
            'description': {
              'en':
                  'Chains project into a circular shape and pulls enemies towards the center.',
              'ru': 'Создает область, притягивающую цели к ее центру.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_52.webp',
          },
          {
            'name': 'Empowered Resonance',
            'description': {
              'en': 'Launches three chains that pull the enemy to you.',
              'ru': 'Выбрасывает сразу 3 цепи.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_71.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Judgement',
    'class': {
      'en': 'Infighter',
      'ru': 'Дуалист',
    },
    'description': {
      'en':
          'Jump into the air and hit down, causing 148 damage and 29 more damage to knocked down enemies.',
      'ru':
          'Подпрыгивает и бьет по земле нанося 148 урона, наносит 29 дополнительного урона сбитым с ног целям.'
    },
    'type': 'Combo',
    'cooldown': 6,
    'iconUrl': 'assets/icons/infighter/c04s10.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Abdominal Respiration',
            'description': {
              'en': 'Increases critical hit rate by 15%.',
              'ru': 'Шанс критического удара увеличен на 15%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_4.webp',
          },
          {
            'name': 'Quick Preparation',
            'description': {
              'en': 'Increases energy gain by 10.',
              'ru': 'Увеличивает прирост энергии на 10.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_36.webp',
          },
          {
            'name': 'Sleek Motion',
            'description': {
              'en':
                  'Damage to target and party members increases by 10% for 8s.',
              'ru': 'Урон по цели группы увеличен на 10% на 8 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_41.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Strength',
            'description': {
              'en': 'Damage to knockdown enemies increases by 50%.',
              'ru': 'Урон по сбитым с ног целям увеличен на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_29.webp',
          },
          {
            'name': 'Ignorant Blow',
            'description': {
              'en':
                  'Can be cast a second time dealing 100% additional damage however increases cooldown by 8s.',
              'ru':
                  'Возможность использовать умение еще раз, увеличивая урон на 100%. Увеличивает время восстановление на 8 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_40.webp',
          },
          {
            'name': 'Neurology',
            'description': {
              'en':
                  'Increase the total damage by 20% but the additional damage to fallen enemies can\'t be applied.',
              'ru':
                  'Увеличивает урон на 20%, но больше не наносит дополнительного урона сбитым с ног врагам.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_77.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'True Judgment',
            'description': {
              'en':
                  'Changes the attack into two smaller attacks and increases total damage by 80%.',
              'ru':
                  'Атакует дважды вместо одной атаки, что увеличивает общий урон на 80%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_39.webp',
          },
          {
            'name': 'Talon of the Falcon',
            'description': {
              'en':
                  'Increases damage by 40% and shock consumption decreases by 10%.',
              'ru':
                  'Увеличивает наносимый урон на 40% и уменьшает затраты шока на 10%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_0.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Swallow',
    'class': {
      'en': 'Infighter',
      'ru': 'Дуалист',
    },
    'description': {
      'en':
          'Release the shock wave in the cursor direction to cause 225 damage.',
      'ru':
          'Выпускает волну энергии в указанном направлении, наносит 225 урона.'
    },
    'type': 'Normal',
    'cooldown': 8,
    'iconUrl': 'assets/icons/infighter/c04s11.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Quick Preparation',
            'description': {
              'en': 'On a critical hit, 50% chance to reset the cooldown.',
              'ru':
                  'Критические удары получают 50% шанс завершить время восстановление мгновенно.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.webp',
          },
          {
            'name': 'Single Blow',
            'description': {
              'en': 'Increases damage to single targets by 25%.',
              'ru': 'Увеличивает урон по одиночным целям на 25%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_28.webp',
          },
          {
            'name': 'Concentration',
            'description': {
              'en': '50% chance to cause the enemy to bleed for 3 seconds.',
              'ru': '50% шанс наложить кровотечение на 3 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_45.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Identified Weakness',
            'description': {
              'en':
                  'Increases attack radius by 30% and increases the damage to the enemy by 30%.',
              'ru': 'Увеличивает радиус и урон на 30%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_88.webp',
          },
          {
            'name': 'Lucky Blow',
            'description': {
              'en':
                  'Immediately move 3 m forward rapidly in a forward direction, increasing the damage done to the enemy by 15%.',
              'ru':
                  'Делает выпад на 3 метра в указанном направлении, наносимый урон увеличивается на 15%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_10.webp',
          },
          {
            'name': 'Finishing Strike',
            'description': {
              'en': 'You can have 2 stacks of a skill.',
              'ru': 'Умение имеет 2 заряда.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_83.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Reinforced Blow',
            'description': {
              'en':
                  'Huge fist appear attacking the enemy with a thrust increasing skill damage by 30%.',
              'ru':
                  'Умения изменяется на гигантскую руку, увеличивает дальность, радиус и наносит на 30% больше урона.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_39.webp',
          },
          {
            'name': 'Heavy Swing',
            'description': {
              'en':
                  'Increases the attack wind-up for a heavier hit, increases total damage by 60%.',
              'ru':
                  'Добавляет замах перед атакой и увеличивает наносимый урон на 60%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_0.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Death Sentence',
    'class': {
      'en': 'Infighter',
      'ru': 'Дуалист',
    },
    'description': {
      'en':
          'Release all Shock energy dealing 490 damages. Damage depends on the reduction of Shock energy, at 0-25% damage increases by 15%, at 26-50% damage increases by 30%, at 51-75% damage increases by 45% and at 76-100% damage increases by 60%.',
      'ru':
          'Наносит 490 урона, тратит всю накопленную энергию шока. Урон увеличивается в зависимости от потраченной энергии шока, при 0-25% энергии урон увеличивается на 15%, при 26-50% на 30%, при 51-75% на 45%, при 76-100% на 60%.'
    },
    'type': 'Normal',
    'cooldown': 24,
    'iconUrl': 'assets/icons/infighter/c04s12.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Quick Preparation',
            'description': {
              'en': 'Cooldown reduced by 4s.',
              'ru': 'Уменьшает время восстановления на 4 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.webp',
          },
          {
            'name': 'Wide Blow',
            'description': {
              'en': 'Attack Range increases by 15%.',
              'ru': 'Дистанция атаки увеличена на 15%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_7.webp',
          },
          {
            'name': 'Eye of the Heart',
            'description': {
              'en':
                  'Increases attack speed by 15% but also increases cooldown by 2s.',
              'ru':
                  'Увеличивает скорость атаки на 15% и увеличивает время восстановление на 2 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_6.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Strength',
            'description': {
              'en': 'Become immune to control effects during skill casting.',
              'ru':
                  'Невосприимчивость к эффектам контроля во время использования умения.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_23.webp',
          },
          {
            'name': 'Single Blow',
            'description': {
              'en': 'Increases damage to single targets by 40%.',
              'ru': 'Увеличивает урон по одиночным целям на 40%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_28.webp',
          },
          {
            'name': 'Finishing Strike',
            'description': {
              'en': 'Increases damage by 50% to enemies below 50% of max HP.',
              'ru':
                  'Увеличивает наносимый урон на 50% по целям с уровнем здоровья ниже 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_32.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Shock',
            'description': {
              'en':
                  'Increases damage by 20%, 40%, 60%, and 120% depending on the amount of energy you have.',
              'ru':
                  'Увеличивает урон на 20%, 40%, 60% и 120% в зависимости от количества энергии.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_50.webp',
          },
          {
            'name': 'Mind Relaxation',
            'description': {
              'en': 'Consumes 50% of Shock instead of all.',
              'ru': 'Тратит 50% энергии.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_37.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Decisive Attack',
    'class': {
      'en': 'Infighter',
      'ru': 'Дуалист',
    },
    'description': {
      'en':
          'Deals 113 damage by a powerful energy strike. Can be charged up to 168 damages and 393 damages if it overcharged.',
      'ru':
          'Заряжает сильный удар, что наносит 113 урона. Далее может быть заряжено до 168 урона, или на 393 урона при перегрузе умения.'
    },
    'type': 'Charge',
    'cooldown': 20,
    'iconUrl': 'assets/icons/infighter/c04s13.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Quick Preparation',
            'description': {
              'en': 'Cooldown reduced by 4s.',
              'ru': 'Время восстановление уменьшено на 4 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.webp',
          },
          {
            'name': 'Suddenly Strike',
            'description': {
              'en': 'Сritical hit rate increases by 15%.',
              'ru': 'Шанс критического удара увеличен на 15%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_4.webp',
          },
          {
            'name': 'Concentration',
            'description': {
              'en': 'Shock consumption reduced by 10.',
              'ru': 'Потребление шока уменьшено на 10 .'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_35.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Muscle Burst',
            'description': {
              'en': 'Second wave hit knocks enemy down.',
              'ru': 'Взрывная волна опрокидывает.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_77.webp',
          },
          {
            'name': 'Ligament Burst',
            'description': {
              'en': 'Second wave hit damage is increased by 50%.',
              'ru': 'Урон взрывной волны увеличен на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_0.webp',
          },
          {
            'name': 'Focus Target',
            'description': {
              'en':
                  'When a fist or a second wave attack is hit, the target will lose 20% of damage to the party members for 6s.',
              'ru':
                  'Когда кулак или вторая волна атакует цель, цель наносит на 20% меньше урона по группе в течение 6 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_69.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Mastery',
            'description': {
              'en':
                  'Increases Shock consumption by 10 but no longer needs to be charged.',
              'ru':
                  'Увеличивает затраты энергии на 10, но делает навык мгновенным.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_39.webp',
          },
          {
            'name': 'Supersonic Shockwave',
            'description': {
              'en':
                  'Increases energy generation by 15 and increases damage by 80% against enemies whose HP is below 40%.',
              'ru':
                  'Увеличивает прирост энергии на 15 и наносит на 80% больше урон по целям с уровнем здоровья ниже 40%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_50.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Reincarnation',
    'class': {
      'en': 'Infighter',
      'ru': 'Дуалист',
    },
    'description': {
      'en':
          'Hits the ground strongly, causing earthquakes to inflict damage on enemies for a total of four times, 108-146-182-290.',
      'ru':
          'Бьет по земле 4 раза, что создает вокруг сейсмические волны и наносит 108-146-182-290 урона.'
    },
    'type': 'Normal',
    'cooldown': 30,
    'iconUrl': 'assets/icons/infighter/c04s14.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Old Hand',
            'description': {
              'en':
                  'The damage done while using the skill is reduced by 20%, the number of strikes hit on the ground increases, and the damage done to the enemy is increased by 25%.',
              'ru':
                  'Уменьшает входящий урон на 20% во время использования навыка и добавляет еще один удар, что увеличивает общий урон на 25%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_39.webp',
          },
          {
            'name': 'Arousal',
            'description': {
              'en': 'Strike fast 2 times and make final attack.',
              'ru': 'Проводит первые 2 атаки и затем последний удар.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_41.webp',
          },
          {
            'name': 'Wide Blow',
            'description': {
              'en':
                  'The damage increased by 20% by rapidly charging the ground 8 times. Restores 2 energy for each attack hit.',
              'ru':
                  'Бьет по земле 8 раз вместо 4, что увеличивает общий урон на 20%, каждый удар восстанавливает 2 энергии за удар.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_40.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Armor Destruction',
            'description': {
              'en':
                  'Every time you hit the ground except for the last blow, pulling the enemies.',
              'ru': 'Каждый удар притягивает врагов кроме последнего.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_71.webp',
          },
          {
            'name': 'Strength',
            'description': {
              'en': 'Become immune to control effects during skill casting.',
              'ru': 'Дает иммунитет к контролю во время использования умения.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_23.webp',
          },
          {
            'name': 'Unbalanced',
            'description': {
              'en':
                  '[Fire] If an attack is hit, it is damaged by burn. It can be supersioned up to 5 times.',
              'ru': '[Огонь] Накладывает эффект горения каждым ударом до 5 раз.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_13.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Mega Explosion',
            'description': {
              'en':
                  'The last attack changed to jump and the damage of it is increased by 150%.',
              'ru':
                  'Меняет последнюю атаку на прыжок, увеличивает ее урон на 150%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_50.webp',
          },
          {
            'name': 'Vital Impact',
            'description': {
              'en':
                  'Each time you hit, the damage to the enemy increases by 10%.',
              'ru': 'Увеличивают урон каждого последующего удара на 10%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_85.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'True Art: Rising Dragon',
    'class': {
      'en': 'Infighter',
      'ru': 'Дуалист',
    },
    'description': {
      'en':
          'Jumo causing 53 and 210 damage, proceed with downward strike in the cursor position dealing 263 damage on landing, first hit also launches enemies in the air causing 50% more damage.',
      'ru':
          'Взмывает ввысь нанося 53 и 210 урона. С приземлением в указанном направлении наносит 263 урона, враги подброшенные первым ударом получат на 50% больше урона.'
    },
    'type': 'Combo',
    'cooldown': 24,
    'iconUrl': 'assets/icons/infighter/c04s15.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Technical Finesse',
            'description': {
              'en':
                  'Adds an uppercut in the beginning of the attack, increasing total damage by 10%.',
              'ru':
                  'Добавляет еще один апперкот перед взлетом, что увеличивает урон на 10%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_40.webp',
          },
          {
            'name': 'Lightning Fist',
            'description': {
              'en':
                  'The first attack has a 50% chance to inflict shock on the enemy for 5s.',
              'ru':
                  'Первый удар имеет 50% шанс наложить эффект электрошока на 5 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_17.webp',
          },
          {
            'name': 'Fist of Destruction',
            'description': {
              'en':
                  'First hit gathers enemies up before floating them into the air.',
              'ru': 'Добавляет эффект стягивания перед взлетом.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_71.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Identified Weakness',
            'description': {
              'en':
                  'Increases damage done to enemies immune to control effects by 80%.',
              'ru': 'Увеличивает урон по целям с иммунитетом к контролю на 80%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_33.webp',
          },
          {
            'name': 'Angry Strike',
            'description': {
              'en':
                  'While your HP is 50% or lower, the critical damage of this skill increases by 150%.',
              'ru':
                  'Увеличивает силу критического удара умения на 150%, если уровень здоровья персонажа ниже 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_4.webp',
          },
          {
            'name': 'Midair Bombing',
            'description': {
              'en': 'The upper cut pierces 60% of enemy’s physical defense.',
              'ru': 'Апперкот игнорирует 60% физической защиты врагов.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_21.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Dragon\'s Rage',
            'description': {
              'en':
                  'Increases attack radius by 30% and decreases incoming damage by 80%.',
              'ru':
                  'Увеличивает радиус атаки на 30% и уменьшает входящий урон на 80% во время применения умения.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_7.webp',
          },
          {
            'name': 'Explosive Strike',
            'description': {
              'en':
                  'The downward strike will always be a critical hit and the critical damage is increased by 30%.',
              'ru':
                  'Последняя атака всегда имеет 100% шанс критического удара и критический урон увеличен на 30%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_49.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Crush',
    'class': {
      'en': 'Infighter',
      'ru': 'Дуалист',
    },
    'description': {
      'en':
          'Moves forward 3 meters, deals 150 and 350 damage. Damage depends on amount of energy, increases by 15% if 0-25% energy, by 30% if 26%-50%, by 45% if 51%-75%, and increases by 60% if 76%-100%.',
      'ru':
          'Делает выпад на 3 метра вперед нанося 150 и 350 урона. Урон увеличивается в зависимости от потраченной энергии, при 0-25% на 15%, при 26-50% на 30%, при 51-75% на 45%, при 76-100% на 60%.'
    },
    'type': 'Normal',
    'cooldown': 24,
    'iconUrl': 'assets/icons/infighter/c04s16.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Violent Fist',
            'description': {
              'en':
                  '[Fire] The attack becomes an explosion and inflicts burning damage.',
              'ru':
                  '[Огонь] Финальный удар вызывает небольшой взрыв, наносит дополнительный урон.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_13.webp',
          },
          {
            'name': 'Rational Move',
            'description': {
              'en':
                  'Movement distance is reduced by 3 meters but damage is increased by 30%.',
              'ru':
                  'Больше не перемещает вперед, увеличивает дальность атаки на 30 %.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_7.webp',
          },
          {
            'name': 'Unexpected Move',
            'description': {
              'en':
                  'It will become possible to take over and take up to 2 stages. Depending on the level of charge, the distance to hit increases by 1 meter.',
              'ru':
                  'Дает возможность заряжать умение до 2 уровней, каждый уровень заряда увеличивает дальность рывка на 1 метр.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_39.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Overflowing Force',
            'description': {
              'en': 'Increases damage from Shock consumption by 20-40-60-80%.',
              'ru':
                  'Увеличивает дополнительный урон от затраченной энергии на 20-40-60-80%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_0.webp',
          },
          {
            'name': 'Shock Control',
            'description': {
              'en': 'Damage increased by 30%.',
              'ru': 'Увеличивает урон на 30%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_50.webp',
          },
          {
            'name': 'Patience',
            'description': {
              'en': 'Reduces incoming damage by 50% while using skill.',
              'ru':
                  'Уменьшает получаемый урон во время использования навыка на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_25.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Surprise Attack',
            'description': {
              'en': 'Increases attack speed by 30% and energy generated by 30.',
              'ru': 'Увеличивает скорость атаки на 30% и набор энергии на 30.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_37.webp',
          },
          {
            'name': 'Strength',
            'description': {
              'en': 'Become immune to control effects during skill casting.',
              'ru': 'Иммунитет к контролю во время использования навыка.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_23.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Supernova Explosion',
    'class': {
      'en': 'Infighter',
      'ru': 'Дуалист',
    },
    'description': {
      'en':
          'Create a ball of energy dealing 66 damage, pull enemies to the ball dealing 33 damage and blow it up with 556 damage.',
      'ru':
          'Собирает энергию шока в сферу, нанося 66 урона. Затем притягивает врагов к сферы, нанося 33 урона, и проводит взрыв сферы, нанося 556 урона.'
    },
    'type': 'Normal',
    'cooldown': 30,
    'iconUrl': 'assets/icons/infighter/c04s17.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Sleek Motion',
            'description': {
              'en': 'Attack speed increases by 10%.',
              'ru': 'Увеличивает скорость атаки на 10%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_41.webp',
          },
          {
            'name': 'Justice Plunder',
            'description': {
              'en':
                  'Reduces Shock consumption by 30 but increases cooldown by 12s.',
              'ru':
                  'Уменьшает затраты энергии шока на 30, но увеличивает время восстановления на 12 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_35.webp',
          },
          {
            'name': 'Quick Preparation',
            'description': {
              'en': 'Cooldown reduced by 5s.',
              'ru': 'Уменьшает время восстановления на 5 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Piercing Strike',
            'description': {
              'en': 'Attack ignores 40% of enemy’s defense.',
              'ru': 'Умение игнорирует 40% защиты врагов.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_2.webp',
          },
          {
            'name': 'Angry Explosion',
            'description': {
              'en':
                  'The attack that pulls enemies is removed and the explosion happens instantly instead.',
              'ru':
                  'Больше не стягивает врагов, но последний взрыв происходит моментально.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_41.webp',
          },
          {
            'name': 'Wide Blow',
            'description': {
              'en': 'Attack Range increases by 20%.',
              'ru': 'Дистанция атаки увеличена на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_7.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Pride of Fighters',
            'description': {
              'en':
                  'Make 4 additional spheres to increase damage by 40% and scope of explosion by 20%.',
              'ru':
                  'Добавляет 4 меньших сферы в начальную сферу, что увеличивает радиус на 20% и урон от взрыва на 40%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_8.webp',
          },
          {
            'name': 'Unyielding Blow',
            'description': {
              'en': 'Increases damage by 70%.',
              'ru': 'Увеличивает урон на 70%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_50.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Force Bullet',
    'class': {
      'en': 'Soul Master',
      'ru': 'Ки-мастер',
    },
    'description': {
      'en': 'Fires 3 condensed energy blasts, each deals 54 damage.',
      'ru': 'Вы выпускаете 3 снаряда. Каждый наносит 54 урона.'
    },
    'type': 'Normal',
    'cooldown': 8,
    'iconUrl': 'assets/icons/soulmaster/c05s00.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Penetrative Force',
            'description': {
              'en':
                  'Increases energy consumption by 20% and attack rate by 20%.',
              'ru': 'Увеличивает стоимость способности и скорость атаки на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_11.webp',
          },
          {
            'name': 'Ranged Attack',
            'description': {
              'en': 'Increases the skill range by 4 meters.',
              'ru': 'Увеличивает дальность способности на 4 метра.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_52.webp',
          },
          {
            'name': 'Mobility Weakness',
            'description': {
              'en':
                  'Skill decreases the enemy\'s movement speed by 5% for 5 seconds and up to 6 stacks.',
              'ru':
                  'Способность уменьшает скорость передвижения противника на 5% в течение 5 секунд. Суммируется до 6 раз.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_47.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Penetrating Pain',
            'description': {
              'en':
                  'Gives 20% additional damage in the form of a 4-meter fan-shaped area.',
              'ru':
                  'Способность наносит 20% дополнительного урона на расстоянии 4 метра от цели, в которую попал снаряд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_53.webp',
          },
          {
            'name': 'Over Supply',
            'description': {
              'en':
                  'As the number of shots fired increases, the damage done to one enemy per shot increases by 15%.',
              'ru': 'Каждый снаряд увеличивает урон способности на 15%..'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_58.webp',
          },
          {
            'name': 'Shaft',
            'description': {
              'en':
                  'The longer the distance of the shot, the greater the damage done to the enemy by up to 80%.',
              'ru':
                  'Чем дальше цель атаки, тем выше урон снаряда. Максимальный бонус к урону 80%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_82.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Trance',
            'description': {
              'en':
                  'Allows to fire 6 energy blasts by holding the skill. Increases damage done by enemies by 100%.',
              'ru':
                  'Позволяет сделать 6 выстрелов, удерживая умение, и увеличивает урон наносимый врагам на 100%..'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_42.webp',
          },
          {
            'name': 'Precision Strike',
            'description': {
              'en':
                  'Increases the skill range by 30% and reduces cooldown by 5s.',
              'ru':
                  'Увеличивает дальность способности на 30% и уменьшает восстановление способности на 5 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_62.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Destruction Force',
    'class': {
      'en': 'Soul Master',
      'ru': 'Ки-мастер',
    },
    'description': {
      'en':
          'Rushes 4m in front you and damages for 54. Dealing 27 damage to the enemy twice. Performs a final blow which deals 71 damage. The final blow deals 100% increased damage to the enemies in the air.',
      'ru':
          'Делает выпад на 4 метра, нанося 54 урона. Далее дважды наносит 27 урона. Выполняет последний удар, наносящий 71 урон, а если цель в воздухе урон увеличивается на 100%.'
    },
    'type': 'Normal',
    'cooldown': 9,
    'iconUrl': 'assets/icons/soulmaster/c05s01.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Improved Endurance',
            'description': {
              'en': 'Reduces energy consumption by 20%.',
              'ru': 'Уменьшает стоимость на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_35.webp',
          },
          {
            'name': 'Superior Mobility',
            'description': {
              'en': 'Increases the movement distance by 2 meters.',
              'ru': 'Увеличивает дистанцию 2 метра.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_10.webp',
          },
          {
            'name': 'Dexterous',
            'description': {
              'en': 'Increases attack speed by 10%.',
              'ru': 'Скорость атаки увеличена на 10%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_6.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Strengthens',
            'description': {
              'en':
                  'Party members within a 24m radius increase attack strength by 15% for 8s.',
              'ru':
                  'Участники группы в радиусе 24 метров получают увеличение силы атаки на 15% на 8 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_65.webp',
          },
          {
            'name': 'Ready to Attack',
            'description': {
              'en':
                  'If an attack is successful, the attack power increases by 25% for 4s.',
              'ru':
                  'При успешной атаке, сила атаки увеличится на 25% на 4 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_50.webp',
          },
          {
            'name': 'Drillmaster',
            'description': {
              'en': 'Increases the area of effect by 30%.',
              'ru': 'Увеличивает область действия на 30%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_7.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Force Master',
            'description': {
              'en': 'The force energy deals 40% increased damage.',
              'ru': 'Урон увеличивается на 40%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_38.webp',
          },
          {
            'name': 'Unavoidable Strike',
            'description': {
              'en': 'The force energy pulls the enemies.',
              'ru': 'Притягивает врага.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_71.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Poison Strike',
    'class': {
      'en': 'Soul Master',
      'ru': 'Ки-мастер',
    },
    'description': {
      'en':
          'Hit the enemy 3 times by 15 damage each. Pulls the enemy toward you, deals 90 damage. 30% chance to poison enemies for 3 seconds.',
      'ru':
          'Совершает выпад, нанося 15 урона 3 раза. После этого притягивает врага и наносит 90 урона. 30% вероястность отравить противника на 3 секунды.'
    },
    'type': 'Normal',
    'cooldown': 8,
    'iconUrl': 'assets/icons/soulmaster/c05s02.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Improved Recharging',
            'description': {
              'en':
                  'For each enemy stuck by the last hit, the skill cooldown is reduced by 0.5 seconds, up to maximum total of 4 seconds.',
              'ru':
                  'Уменьшает время перезарядки умения за каждого врага на 0.5 секунды, но не более 4 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.webp',
          },
          {
            'name': 'Improved Strike',
            'description': {
              'en':
                  'Increases damage dealt by 30%, but increases force cost by 20%.',
              'ru':
                  'Увеличивает стоимость способности на 20% и наносимый урон на 30%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_80.webp',
          },
          {
            'name': 'Improved Endurance',
            'description': {
              'en': 'Reduces energy consumption by 20%.',
              'ru': 'Уменьшает стоимость способности на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_35.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Successful Transition',
            'description': {
              'en':
                  'Increases the area of effect by 30%. Deals 30% more damage to any target.',
              'ru':
                  'Увеличивает дальность атаки на 30% и увеличивает урон на 30%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_7.webp',
          },
          {
            'name': 'Penetrating Strike',
            'description': {
              'en': 'The skill ignores 40% of the enemies all defense.',
              'ru': 'Игнорирует 40% всей брони противника при атаке.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_2.webp',
          },
          {
            'name': 'Skilled Movement',
            'description': {
              'en': 'After the last hit, the caster performs a 4m backstep.',
              'ru': 'После последней атаки вы перемещается на 4 метра назад.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_39.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Trusted Strike',
            'description': {
              'en': 'The skill knocks the enemy down instead of pulling them.',
              'ru': 'Умение сбивает противника с ног, а не притягивает его.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_77.webp',
          },
          {
            'name': 'Channeled Strike',
            'description': {
              'en':
                  'The damage dealt is increased by 40% and the inflicted enemy is exposed to a stronger poison.',
              'ru':
                  'Увеличивает урон, наносимый противнику на 40% и увеличивает силу яда.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_40.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Spin Kick',
    'class': {
      'en': 'Soul Master',
      'ru': 'Ки-мастер',
    },
    'description': {
      'en':
          'Step forward then performs a low kick that knocks the target down and deals 82 damage. Then knocking them backwards inflict 124 damage.',
      'ru':
          'Совершает выпад, нанося удар ногой, который сбивает противника и наносит 82 урона. Далее отбрасывает его, нанося 124 урона.'
    },
    'type': 'Normal',
    'cooldown': 12,
    'iconUrl': 'assets/icons/soulmaster/c05s03.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Push',
            'description': {
              'en': 'The enemy\'s distance is increased when the enemy hits.',
              'ru': 'Увеличивает дистанцию, на которую отбрасывает противника.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_60.webp',
          },
          {
            'name': 'Improved Speed',
            'description': {
              'en':
                  'Increases attack speed by 15% but the mana cost is increased by 20%.',
              'ru':
                  'Увеличивает скорость атаки на 15%, повышает стоимость способности на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_80.webp',
          },
          {
            'name': 'Improved Mobility',
            'description': {
              'en': 'Increases the movement distance by 1m.',
              'ru': 'Дальность выпада увеличивается на 1 метр.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_10.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Strengthens',
            'description': {
              'en':
                  'During your last hit, you and your party members within a 24m radius increase attack strength by 15% for 10s.',
              'ru':
                  'При последнем ударе участники группы в радиусе 24 метров получают увеличение силы атаки на 15% в течение 10 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_65.webp',
          },
          {
            'name': 'Vulnerable Target',
            'description': {
              'en': 'Deals 30% more damage.',
              'ru': 'Увеличивает урон, наносимый врагам на 30%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_29.webp',
          },
          {
            'name': 'Changed Circumstance',
            'description': {
              'en':
                  'Deals 50% more damage on any target with the incapacitate status.',
              'ru':
                  'Урон оглушенным или сбитым с ног врагам увеличивается на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_69.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Strong Shoulder',
            'description': {
              'en': 'Instead of kicking, rush 2m forward and tackle the enemy.',
              'ru':
                  'Вместо удара ногой вы делаете рывок вперед на 2 метра, отталкивая врагов.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_77.webp',
          },
          {
            'name': 'Aggressive Attack',
            'description': {
              'en':
                  'After 2 hit, hit the opposite side of the body more strongly, striking an enemy for 3 seconds when attacking, increases the damage done to enemies by 80%.',
              'ru':
                  'Вы наносите дополнительную атаку оглушая противника на 3 секунды и нанося ему 80% дополнительного урона.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_40.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Implosion',
    'class': {
      'en': 'Soul Master',
      'ru': 'Ки-мастер',
    },
    'description': {
      'en':
          'Jump 3m forward and strike the enemy 4 times pulling the target. Afterwards, launch the enemy into the air and deal 141 damage.',
      'ru':
          'Вы прыгаете на 3m вперед, нанося 24 урона 4 раза и притягивая противника. После бьете ладонью по земле, подбрасывая противников с дополнительным уроном в 141.'
    },
    'type': 'Hold',
    'cooldown': 14,
    'iconUrl': 'assets/icons/soulmaster/c05s04.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Defensive Preparation',
            'description': {
              'en': 'Takes 20% less damage while performing the skill.',
              'ru':
                  'Вы получаете на 20% меньше урона при применении способности.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_25.webp',
          },
          {
            'name': 'Improved Recharging',
            'description': {
              'en':
                  'For each enemy inflicted by the last hit, reduces the skill cooldown by 0.5 seconds up to a maximum total of 4 seconds.',
              'ru':
                  'Уменьшает время перезарядки способности за каждого пораженного последним ударом противника на 0.5 секунды, но не более 4 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.webp',
          },
          {
            'name': 'Superior Control',
            'description': {
              'en':
                  'For each enemy inflicted by the last hit, recharges the force by 30 up to a maximum total of 150.',
              'ru':
                  'Восстанавливает энергию за каждого пораженного последним ударом противника в размере 30 единиц, но не более 150.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_36.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Strength',
            'description': {
              'en':
                  'Becomes Invulnerable to control effects while performing the skill.',
              'ru':
                  'Становится неуязвимым для эффектов контроля во время выполнения навыка.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_23.webp',
          },
          {
            'name': 'Dexterous',
            'description': {
              'en': 'The infusion increases attack speed by 30%.',
              'ru': 'Увеличивает скорость атаки на 30% при выполнении навыка.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_41.webp',
          },
          {
            'name': 'Changed Circumstance',
            'description': {
              'en':
                  'Deals 50% more damage to any target with the incapacitate status.',
              'ru':
                  'Урон по оглушенным или сбитым с ног врагам увеличивается на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_69.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Brave Ember',
            'description': {
              'en':
                  '[Fire] Burn the enemy when pulling them toward you. If the enemy has 3 stacks of the burning debuff, they suffer serious burn damage. Take 50% increased damage.',
              'ru':
                  '[Огонь] Поджигает противника при притягивании. При накоплении 3 дебафов цель получает серьезный ожог, получая на 50% больше урона.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_13.webp',
          },
          {
            'name': 'Unforgiven Chill',
            'description': {
              'en': '[Ice] The pulling freezes the enemy for 2s.',
              'ru': '[Холод] Замораживает противника на 2 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_14.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Energy Strike',
    'class': {
      'en': 'Soul Master',
      'ru': 'Ки-мастер',
    },
    'description': {
      'en':
          'Fires 6 energy attacks dealing 54 damage from while backstepping 2m. The skill deals 30% more to enemies in the air.',
      'ru':
          'Вы отпрыгиваете на 2 метра назад и производите 6 атак по 54 урона. Противник в воздухе получает на 30% больше урона.'
    },
    'type': 'Normal',
    'cooldown': 16,
    'iconUrl': 'assets/icons/soulmaster/c05s05.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Quick Response',
            'description': {
              'en': 'Decreases the skill cooldown by 2s.',
              'ru': 'Уменьшает время восстановления умения на 2 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.webp',
          },
          {
            'name': 'Drillmaster',
            'description': {
              'en': 'Increases the area of effect by 20%.',
              'ru': 'Дальность атаки увеличивается на 20%..'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_7.webp',
          },
          {
            'name': 'Quick Response',
            'description': {
              'en': 'Increases attack speed by 15%.',
              'ru': 'Скорость атаки увеличена на 15%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_6.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Reduced Mobility',
            'description': {
              'en':
                  'Successful hits reduce the enemy’s movement speed by 30% for 8s.',
              'ru':
                  'Уменьшает скорость передвижения противника на 30% в течение 8 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_47.webp',
          },
          {
            'name': 'Heat',
            'description': {
              'en': '[Fire] Successful hits burn the enemy for 7s.',
              'ru': '[Огонь] Поджигает цель на 7 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_13.webp',
          },
          {
            'name': 'Vulnerable Strike',
            'description': {
              'en': 'Deals 50% more damage to any target in the air.',
              'ru': 'Увеличивает урон врагам в воздухе на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_29.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Strong Will',
            'description': {
              'en': 'Fire a single attack instead of eight.',
              'ru': 'Меняет атаку на 1 мощный удар.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_87.webp',
          },
          {
            'name': 'Rapid Strike',
            'description': {
              'en': 'Rapidly fire your attacks, dealing 50% increased damage.',
              'ru': 'Быстрые атаки наносят на 50% больше урона.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_54.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Thunderbolt Strike',
    'class': {
      'en': 'Soul Master',
      'ru': 'Ки-мастер',
    },
    'description': {
      'en':
          'Stretches forth both hands and unleashes a blast of energy, dealing 229 damage. The skill knocks enemies in the air.',
      'ru':
          'Ударяет двумя ладонями, нанося 229 урона и сбивая противника, если тот в воздухе.'
    },
    'type': 'Normal',
    'cooldown': 16,
    'iconUrl': 'assets/icons/soulmaster/c05s06.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Justice Strike',
            'description': {
              'en':
                  'Increases the attack strength by 4% for 3 sec. It can be stacked up to 5 times.',
              'ru': 'Увеличена сила атаки на 4% на 3 сек. Суммируется до 5 раз.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_50.webp',
          },
          {
            'name': 'Improved Endurance',
            'description': {
              'en': 'Reduces force consumption by 20%.',
              'ru': 'Уменьшает стоимость способности на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_35.webp',
          },
          {
            'name': 'Improved Penetration',
            'description': {
              'en': 'Adds penetration level by 1.',
              'ru': 'Увеличивает Пробивание на 1.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_21.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Drillmaster',
            'description': {
              'en': 'Increases the area of effect by 30%.',
              'ru': 'Увеличивает область действия на 30%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_7.webp',
          },
          {
            'name': 'Icy Fist',
            'description': {
              'en':
                  '[Ice] Increases the skill cooldown by 6 seconds. The last hit freezes the enemy for 2 seconds.',
              'ru':
                  '[Холод] Последний удар замораживает противника на 2 секунды. Восстановление способности увеличивается на 6 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_14.webp',
          },
          {
            'name': 'Heat',
            'description': {
              'en':
                  '[Fire] The last hit knocks the enemy down and burns them for 5s.',
              'ru':
                  '[Огонь] Последний удар сбивает противника и поджигает его на 5 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_13.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Raging Wave',
            'description': {
              'en':
                  'Changes the skill into a multi-strike attack, dealing 20% increased damage.',
              'ru':
                  'Меняет способность на несколько быстрых атак с увеличенным на 20% уроном.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_41.webp',
          },
          {
            'name': 'Cruel Grip',
            'description': {
              'en':
                  'Increases the damage dealt by 150% to enemies in melee range.',
              'ru':
                  'Увеличивает урон, наносимый ближайшим противникам, на 150%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_0.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Palm of Ru Lai',
    'class': {
      'en': 'Soul Master',
      'ru': 'Ки-мастер',
    },
    'description': {
      'en':
          'Summons the Palm of Ru Lai to the target location dealing 339 damage. Knockdowned enemies and airborne enemies take 30% increased damage.',
      'ru':
          'Вы призываете огромную ладонь и наносите 339 урона по области. Противник в воздухе/нокауте получают на 30% больше урона.'
    },
    'type': 'Point',
    'cooldown': 20,
    'iconUrl': 'assets/icons/soulmaster/c05s07.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Improved Strike',
            'description': {
              'en':
                  'Increases damage dealt by 30%, but increases force cost by 20%',
              'ru':
                  'Увеличивает стоимость способности на 20% и наносимый урон на 30%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_80.webp',
          },
          {
            'name': 'Quick Response',
            'description': {
              'en': 'Decreases the skill cooldown by 3s.',
              'ru': 'Уменьшает время перезарядки способности на 3 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.webp',
          },
          {
            'name': 'Insight',
            'description': {
              'en': 'Increases the skill range by 3m.',
              'ru': 'Увеличивает дальность способности на 3 метра.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_52.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Cold Attack',
            'description': {
              'en': '[Ice] Freeze the enemy for 2s.',
              'ru': '[Холод] Замораживает противника на 2 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_14.webp',
          },
          {
            'name': 'Tough Training',
            'description': {
              'en':
                  'Faster attack, stiffen enemies without knocking them down.',
              'ru': 'Применяется мгновенно.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_40.webp',
          },
          {
            'name': 'Heat',
            'description': {
              'en': '[Fire] Successful hits burn the enemy for 7s.',
              'ru': '[Огонь] При попадании поджигает противника на 7 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_13.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Greatest Revenge',
            'description': {
              'en':
                  'Summons 4 small palms, dealing 120% increased total skill damage.',
              'ru':
                  'Меняет способность на призыв 4 маленьких ладоней, наносящих на 120% больше урона.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_54.webp',
          },
          {
            'name': 'Ignorant Palm',
            'description': {
              'en':
                  'When using the skill, the palm moves forward 9m and affects the enemy. Ignores 50% of all enemy armor when attacking.',
              'ru':
                  'Меняет способность на призыв ладони, что движется от вас вперед на расстояние в 9 метров. Игнорирует 50% всей защиты противника.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_81.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Dashing Strike',
    'class': {
      'en': 'Soul Master',
      'ru': 'Ки-мастер',
    },
    'description': {
      'en':
          'Dashes to the target location and deals 53. Airborne enemies are knocked airborne again. The skill can be used two additional times. Each time the caster uses the skill, the skill cooldown increases by 4 seconds, and force cost increases double.',
      'ru':
          'Вы немедленно перемещаетесь вперед и наносите 53 урона противнику. Если противник в воздухе, то он опять подлетает. Умение можно использовать 2 раза подряд, но повторное использование увеличит время восстановления на 4 секунды, а стоимость в два раза.'
    },
    'type': 'Chain',
    'cooldown': 8,
    'iconUrl': 'assets/icons/soulmaster/c05s08.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Unstoppable Passion',
            'description': {
              'en': 'The next turn available time increases by 4s.',
              'ru':
                  'На 4 секунды увеличено время, через которое можно использовать снова.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_51.webp',
          },
          {
            'name': 'Ready-to-Ready',
            'description': {
              'en':
                  'The cooldown time is reduced by the number of turnovers. Reduces the cooldown time by 1 second when used. Reduces cooldown time by 2 seconds when using twice in a row. Reduces cooldown time by 4 seconds when using 3 consecutive times.',
              'ru':
                  'Перезарядка уменьшается в зависимости от числа оборотов. При использовании уменьшается на 1 секунду. Уменьшается на 2 секунды при использовании 2 раза подряд. Уменьшается на 4 секунды при использовании 3 раза подряд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.webp',
          },
          {
            'name': 'Superior Mobility',
            'description': {
              'en': 'Increases the movement distance by 2m.',
              'ru': 'Увеличивает дистанцию на 2 метра.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_10.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Swift Step',
            'description': {
              'en':
                  'Successful hits grant a 10% movement speed bonus for 3 seconds. The bonus can be stacked up to 3 times.',
              'ru':
                  'Успешные удары повышают скорость передвижения на 10% в течение 3 секунд. Бонус складывается до 3 раз.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_48.webp',
          },
          {
            'name': 'Prompt Defense',
            'description': {
              'en':
                  'When using a skill, the damage you receive for 3 seconds is reduced by 30%.',
              'ru': 'Уменьшает получаемый урон на 30% в течение 3 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_25.webp',
          },
          {
            'name': 'Cheers of Victory',
            'description': {
              'en':
                  'Increases attack power by 10%. The effect can be stacked 3 times.',
              'ru':
                  'Увеличивает силу атаки на 10%. Такой эффект может быть суммирован до 3 раз.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_50.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Unstable Space-time',
            'description': {
              'en':
                  'Increases the damage dealt by 50%. Each additional use of the skill deals double damage.',
              'ru':
                  'Урон увеличивается на 50%, а продолжение способности наносит в 2 раза больше урона.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_0.webp',
          },
          {
            'name': 'Fierce Movement',
            'description': {
              'en':
                  'Reduces the force cost by 50% and each additional use of the skill reduces the force cost by 10%.',
              'ru':
                  'Понижает стоимость способности на 50%, а каждое последующее использование еще на 10%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_35.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Force Strike',
    'class': {
      'en': 'Soul Master',
      'ru': 'Ки-мастер',
    },
    'description': {
      'en': 'Moves forward dealing 283 damage. Then moves 3m backwards.',
      'ru':
          'Вы прорываетесь вперед, нанося 283 урона. После вы отстраняетесь на 3 метра назад.'
    },
    'type': 'Normal',
    'cooldown': 18,
    'iconUrl': 'assets/icons/soulmaster/c05s09.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Quick Response',
            'description': {
              'en': 'Decreases the skill cooldown by 2s.',
              'ru': 'Уменьшает время перезарядки способности на 2 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.webp',
          },
          {
            'name': 'Improved Endurance',
            'description': {
              'en': 'Reduces force consumption by 20%.',
              'ru': 'Уменьшает стоимость на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_35.webp',
          },
          {
            'name': 'Dramatic Blow',
            'description': {
              'en': 'Increases the incapacitate level by 1.',
              'ru': 'Увеличивает ослабляющий эффект на 1'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_69.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Heat',
            'description': {
              'en':
                  '[Fire] The last hit knocks the enemy down, and burns them for 7s.',
              'ru': '[Огонь] Поджигает противника на 7 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_13.webp',
          },
          {
            'name': 'Instant Evasion',
            'description': {
              'en': 'The caster recoils 3m backwards farther.',
              'ru':
                  'Расстояние, на которое вы отстраняетесь, увеличивается на 3 метра.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_40.webp',
          },
          {
            'name': 'Aggressive Attack',
            'description': {
              'en':
                  'Take 20% more damage while performing the skill but deal 50% additional damage.',
              'ru':
                  'Увеличивает получаемый урон на 20%, но при этом вы наносите на 50% больше урона.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_33.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Exceptional Movement',
            'description': {
              'en':
                  'After the backstep, fire an energy burst forward and evade when the skill is used again.',
              'ru': 'Позволяет прыгнуть вперед после отбрасывания назад.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_87.webp',
          },
          {
            'name': 'Space Adsorption',
            'description': {
              'en':
                  'After collecting the energy, the energy sphere is blown forward by about 9m and destroyed. Summons a black hole that attracts nearby enemies, increasing damage by 40%.',
              'ru':
                  'Вы пускаете сферу вперед на 9m, после чего она уничтожается, призывая черную дыру, которая притягивает ближайших врагов, увеличивая урон на 40%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_71.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Tempest Ray',
    'class': {
      'en': 'Soul Master',
      'ru': 'Ки-мастер',
    },
    'description': {
      'en': 'Release powerful weapon dealing 340 damage.',
      'ru':
          'Вы выпускаете из пальцев луч света, а после по нему пускаете поток энергии нанося 340 урона.'
    },
    'type': 'Normal',
    'cooldown': 20,
    'iconUrl': 'assets/icons/soulmaster/c05s10.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Recharge',
            'description': {
              'en':
                  'Reduces the cooldown per hit by 0.5 seconds for a maximum of 5 seconds.',
              'ru':
                  'Уменьшает время перезарядки способности за каждого пораженного противника на 0.5 секунды, но не более 5 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.webp',
          },
          {
            'name': 'Instinctive Movement',
            'description': {
              'en':
                  'Enemies killed by skill restore you 10% energy up to 50% max.',
              'ru':
                  'Умершие от способности противники восстанавливают энергию в размере 10%, но не более 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_35.webp',
          },
          {
            'name': 'Song of Time',
            'description': {
              'en': 'Launches flashing light energy. Which stuns for 3s.',
              'ru':
                  'Запускает волну света, которая оглушает противника на 3 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_44.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Harsh Training',
            'description': {
              'en':
                  'Preparatory time is accelerated and released more quickly.',
              'ru':
                  'Уменьшает время для подготовки умения и время применения основного удар.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_41.webp',
          },
          {
            'name': 'Delete target',
            'description': {
              'en':
                  'Attack width is reduced by 50%. The damage done to the enemy by charge is increased by 50%.',
              'ru':
                  'Ширина потока энергии становиться на 50% меньше, но урон от нее возрастает на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_39.webp',
          },
          {
            'name': 'Energy Explosion',
            'description': {
              'en':
                  'Emits enormous energy with a 30% increase in attack width.',
              'ru': 'Ширина потока энергии увеличивается на 30%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_62.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Exit Status',
            'description': {
              'en':
                  'An additional explosion occurs immediately after the attack, and the damage it inflicts on the enemy increases by 50%.',
              'ru':
                  'Сразу после атаки происходит дополнительный взрыв, а наносимый урон возрастает на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_78.webp',
          },
          {
            'name': 'Explosive Attack',
            'description': {
              'en':
                  'Increases the attack range by 4m and increases the damage done by the attacker by 100%.',
              'ru':
                  'Увеличивает дальность атаки на 4 метра и увеличивает урон на 100%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_52.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Lighting Force',
    'class': {
      'en': 'Soul Master',
      'ru': 'Ки-мастер',
    },
    'description': {
      'en':
          'Slams the ground twice, then slams the ground again. Airborne enemies immediately fall when struck by the first and second hits, dealing 50% increased damage.',
      'ru':
          'Вы наносите 2 быстрых удара каждый на 79 урона и завершающий на 158 урона. При атаке по врагам в воздухе урон возрастает на 50%.'
    },
    'type': 'Normal',
    'cooldown': 16,
    'iconUrl': 'assets/icons/soulmaster/c05s11.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Improved Endurance',
            'description': {
              'en': 'Reduces force consumption by 20%.',
              'ru': 'Уменьшает стоимость на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_35.webp',
          },
          {
            'name': 'Secret Attack',
            'description': {
              'en':
                  'Increases damage by 20% when attacking an enemy with health below 50%.',
              'ru':
                  'Увеличивает урон на 20%, когда атакуете цель, у которой здоровье ниже 50%'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_32.webp',
          },
          {
            'name': 'Fine Hitting',
            'description': {
              'en':
                  'A successful last hit on a knockdowned enemy lifts them into the air.',
              'ru':
                  'Последний удар по сбитому с ног противнику подкидывает его в воздух.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_77.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Defenseless Target',
            'description': {
              'en': '100% additional damage to airborne enemies.',
              'ru': '100% дополнительного урона противнику в воздухе.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_29.webp',
          },
          {
            'name': 'Spot Weakness',
            'description': {
              'en':
                  'Increases the damage dealt to targets with the Invulnerable status by 30%.',
              'ru':
                  'Урон по врагам с иммунитетом к эффектам контроля увеличен на 40%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_33.webp',
          },
          {
            'name': 'Concussion',
            'description': {
              'en': 'The Incapacitate stage 1 increases.',
              'ru': 'Ослабляющий эффект увеличивается на 1.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_69.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Six Sense',
            'description': {
              'en':
                  'Increases attack speed by 20% and pulls the enemy toward the caster and Last Hit Damage increased by 100%.',
              'ru':
                  'Увеличивает скорость атаки на 20%, а также стягивает противников перед последним ударом, урон которого увеличивается на 100%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_71.webp',
          },
          {
            'name': 'Slowed Movement',
            'description': {
              'en':
                  'Attack range is increased by 20% and for 5 seconds decrease enemy movement speed by 60%.',
              'ru':
                  'Дальность атаки увеличивается на 20%, а заключительная атака уменьшает скорость передвижения на 80% в течение 5 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_7.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Force Wave',
    'class': {
      'en': 'Soul Master',
      'ru': 'Ки-мастер',
    },
    'description': {
      'en':
          'The shot spreads at a slow pace and stuns the enemy with 250 damage.',
      'ru':
          'Вы запускаете медленную волну, опрокидывающую противников и наносящий 250 урона.'
    },
    'type': 'Normal',
    'cooldown': 15,
    'iconUrl': 'assets/icons/soulmaster/c05s12.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Quick Response',
            'description': {
              'en': 'Decreases the skill cooldown by 2s.',
              'ru': 'Уменьшает время восстановления умения на 2 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.webp',
          },
          {
            'name': 'Improved Endurance',
            'description': {
              'en': 'Reduces force consumption by 20%.',
              'ru': 'Уменьшает стоимость на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_35.webp',
          },
          {
            'name': 'Improved Speed',
            'description': {
              'en':
                  'Increases attack speed by 20% but the mana cost is increased by 20%.',
              'ru': 'Увеличивает стоимость способности и скорость атаки на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_11.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Growing Wave',
            'description': {
              'en':
                  'Damage increases up to 60% when the force wave travels farther.',
              'ru':
                  'Урон увеличивается в зависимости от пройденного расстояния умения. Максимальный бонус к урону 60%'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_53.webp',
          },
          {
            'name': 'Reduced Mobility',
            'description': {
              'en':
                  'Successful hits reduce the enemy’s movement speed by 30% for 8s.',
              'ru':
                  'Успешная атака замедляет противника на 30% в течение 8 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_47.webp',
          },
          {
            'name': 'Raging Wave',
            'description': {
              'en': 'Increases damage dealt by 30%.',
              'ru': 'Урон увеличивается на 30%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_0.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Space Expansion',
            'description': {
              'en': 'Releases the force wave 3 times but deals 110% damage.',
              'ru': 'Наносит урон умения равный 110%, создавая 3 волны.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_54.webp',
          },
          {
            'name': 'Space Contraction',
            'description': {
              'en':
                  'The speed of the wave is increased by 50% and enemies are stiffened instead of knocked back. Additional skill use creates a strong wind that deals 100% increased damage.',
              'ru':
                  'Скорость волны увеличивается на 50%, а враги застывают, а не опрокидываются. Дополнительное использование навыка создает луч, который наносит 100% дополнительного урона.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_87.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Force Barrier',
    'class': {
      'en': 'Soul Master',
      'ru': 'Ки-мастер',
    },
    'description': {
      'en':
          'The force barrier deals 50 damage and reduces enemies’ attack and movement speed by 10% for 0.5 seconds. The debuff can be stack up to 4 times. The caster can maintain the barrier for 3 seconds by holding the skill.',
      'ru':
          'Вы создаете чары вокруг себя, замедляя противников и нанося 50 урона. У противников на 10% снижается скорость передвижения и атаки на 0.5 секунд. Суммируется до 4 раз. Способность можно удерживать 3 секунды.'
    },
    'type': 'Hold',
    'cooldown': 24,
    'iconUrl': 'assets/icons/soulmaster/c05s13.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Defensive Preparation',
            'description': {
              'en': 'Takes 30% less damage while performing the skill.',
              'ru':
                  'Вы получаете на 30% меньше урона при применении способности.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_25.webp',
          },
          {
            'name': 'Quick Response',
            'description': {
              'en': 'Decreases the skill cooldown by 3s.',
              'ru': 'Время восстановления уменьшено на 3 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.webp',
          },
          {
            'name': 'Improved Endurance',
            'description': {
              'en': 'Reduces force consumption by 20%.',
              'ru': 'Уменьшает стоимость на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_35.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Toughness',
            'description': {
              'en':
                  'The caster becomes Invulnerable to crowd control effects while performing the skill.',
              'ru':
                  'Во время применения способности вы получаете иммунитет к эффектам контроля.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_23.webp',
          },
          {
            'name': 'Spot Weakness',
            'description': {
              'en':
                  'Increases the damage dealt to targets with the Invulnerable status by 50%.',
              'ru':
                  'Урон по врагам с иммунитетом к эффектам контроля увеличен на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_33.webp',
          },
          {
            'name': 'Overheated Force',
            'description': {
              'en':
                  'Increase the force cost by 20% but deals 10% more damage per hit.',
              'ru':
                  'Увеличивает стоимость способности на 20%, увеличивает урон на 10% за каждый удар.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_80.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Desperate Attack',
            'description': {
              'en':
                  'Holding the barrier for the full duration knocks enemies back and deals 40% more damage.',
              'ru':
                  'В конце умение наносит дополнительно 40% урона и отбрасывает противников.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_77.webp',
          },
          {
            'name': 'Incisive Decision',
            'description': {
              'en':
                  'Holding the barrier for the full duration pulls enemies towards the caster, and deals 40% more damage.',
              'ru':
                  'В конце умение наносит дополнительно 40% урона и стягивает всех противников.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_71.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Spiral Strikes',
    'class': {
      'en': 'Soul Master',
      'ru': 'Ки-мастер',
    },
    'description': {
      'en':
          'Moves forward dealing 92-110-165 damage. Direction can be changed.',
      'ru':
          'Наносит 92-110-165 урона за 3 удара соответственно. Можно менять направление атаки.'
    },
    'type': 'Normal',
    'cooldown': 20,
    'iconUrl': 'assets/icons/soulmaster/c05s14.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Attack Enhance',
            'description': {
              'en':
                  'Increases your armor consumption by 20% and increases your damage by 20%.',
              'ru':
                  'Увеличивает стоимость способности на 20% и наносимый урон на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_80.webp',
          },
          {
            'name': 'Stealing',
            'description': {
              'en':
                  'When attacking, the target\'s movement speed is reduced by 5% for 5 seconds. Your movement speed is increased by 5%, and can be stacked up to 5 times.',
              'ru':
                  'При атаке противник теряет 5% скорости передвижения на 5 секунд. Каждая атака дает вам 5% дополнительной скорости передвижения. Эффект складывается до 5 раз.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_47.webp',
          },
          {
            'name': 'Wide Blow',
            'description': {
              'en': 'Increases attack range by 30%.',
              'ru': 'Дальность атаки увеличивается на 30%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_7.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Sure Strike',
            'description': {
              'en': 'Throw a roundhouse kick that lifts enemies into the air.',
              'ru':
                  'Теперь вы совершаете подкат, который подбрасывает противника в воздух.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_39.webp',
          },
          {
            'name': 'No Regrets Attack',
            'description': {
              'en':
                  'Move forward 5 meters and deal 3 hits for 20% increased damage.',
              'ru':
                  'Теперь вы двигаетесь вперед на 5 метров и совершаете 3 атаки, урон увеличен на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_40.webp',
          },
          {
            'name': 'Sober Movement',
            'description': {
              'en':
                  'The last hit after 2 more times, and the enemies give a total damage increase of 50%.',
              'ru':
                  'Добавляет 2 дополнительные атаки. Вы наносите 50% дополнительного урона.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_8.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Transitional Burn',
            'description': {
              'en':
                  '[Fire] Target will burn for 7 seconds then spread it to nearby enemies. Target then will burn for additional 10 seconds.',
              'ru':
                  '[Огонь] Поджигает противника на 7 секунд. После этого поджигаются ближайшие враги и все цели горят еще 10 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_13.webp',
          },
          {
            'name': 'Afterimage Attack',
            'description': {
              'en':
                  'A shadow of yourself will deal additional hits increasing damage by 100%. Increase cooldown by 5s.',
              'ru':
                  'Все ваши атаки дублируются, и вы наносите на 100% больше урона. Время восстановления способности увеличивается на 5 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_88.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Inferno Beam',
    'class': {
      'en': 'Soul Master',
      'ru': 'Ки-мастер',
    },
    'description': {
      'en':
          'Strike with a combination of 11 kicks and punches in 3 seconds for 62 damage each. Can change direction during skill animation.',
      'ru':
          'Наносит 11 ударов в течение 3 секунд. Каждый наносит 62 урона. Вы можете менять направление атаки.'
    },
    'type': 'Hold',
    'cooldown': 30,
    'iconUrl': 'assets/icons/soulmaster/c05s15.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Improved Endurance',
            'description': {
              'en': 'Reduces force consumption by 20%.',
              'ru': 'Уменьшает стоимость на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_35.webp',
          },
          {
            'name': 'Concussion',
            'description': {
              'en': 'Disabling effect increases by 1.',
              'ru': 'Ослабляющий эффект увеличен на 1.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_69.webp',
          },
          {
            'name': 'Spot Weakness',
            'description': {
              'en':
                  'Increases the damage dealt to targets with the Invulnerable to crowd control effects status by 25%.',
              'ru':
                  'Урон по врагам с иммунитетом к эффектам контроля увеличен на 25%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_33.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Ranged Target',
            'description': {
              'en': 'Increases the skill range by 5m.',
              'ru': 'Увеличивает дальность способности на 5 метров.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_52.webp',
          },
          {
            'name': 'Changed Circumstance',
            'description': {
              'en':
                  'Deals 50% more damage to any target with the Incapacitate status.',
              'ru':
                  'Урон по оглушенным или сбитым с ног врагам увеличивается на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_69.webp',
          },
          {
            'name': 'Toughness',
            'description': {
              'en':
                  'The caster becomes Invulnerable to crowd control effects while performing the skill.',
              'ru':
                  'Во время применения способности вы получаете иммунитет к эффектам контроля.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_23.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Bold Movement',
            'description': {
              'en':
                  'Skips the skill preparation animation but prevents the caster from changing the attack direction. Increases attack speed by 30% and ignores 50% of the enemies armor.',
              'ru':
                  'Уменьшается время подготовки умения. При этом вы не можете менять направление атаки, но скорость атаки возрастает на 30% и вы игнорируете 50% брони противника.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_41.webp',
          },
          {
            'name': 'Rapid Fire',
            'description': {
              'en':
                  'Increases the damage dealt by 80% during the last second of the cast.',
              'ru':
                  'Увеличивает наносимый урон на 80% на последней секунде способности.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_53.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Force Unleashed',
    'class': {
      'en': 'Soul Master',
      'ru': 'Ки-мастер',
    },
    'description': {
      'en': 'You and your party within 24m will lose 12% damage for 6 seconds.',
      'ru':
          'Группа в радиусе 24 метров получает 12% меньше урона в течение 6 секунд.'
    },
    'type': 'Normal',
    'cooldown': 24,
    'iconUrl': 'assets/icons/soulmaster/c05s16.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Dexterous',
            'description': {
              'en': 'Increases attack speed by 20%.',
              'ru': 'Скорость атаки увеличена на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_6.webp',
          },
          {
            'name': 'Quick Response',
            'description': {
              'en': 'Decreases the skill cooldown by 5s.',
              'ru': 'Уменьшает время восстановления умения на 5 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.webp',
          },
          {
            'name': 'Fortified Strong',
            'description': {
              'en':
                  'You and your party members within a 24m radius increase attack strength by 15% for 16s.',
              'ru':
                  'Группа в радиусе 24 метров получает увеличение силы атаки на 15% в течение 16 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_65.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Tripod of Cleansing',
            'description': {
              'en':
                  'Remove 1 of the harmful effects of yourself and party members within the 24m range.',
              'ru':
                  'Снимает один негативный эффект с участников группы в радиусе 24 метров.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_39.webp',
          },
          {
            'name': 'Enhanced Wave',
            'description': {
              'en': 'All party members take 50% less damage for 6s.',
              'ru':
                  'Вы и члены вашей группы получают на 50% меньше урона в течение 6 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_24.webp',
          },
          {
            'name': 'Toughness',
            'description': {
              'en':
                  'The caster becomes Invulnerable to crowd control effects while performing the skill.',
              'ru':
                  'Вы становитесь неуязвимы для контроля во время применения умения.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_23.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Ready to Attack',
            'description': {
              'en': 'Your attack power increases by 40% for 6s.',
              'ru': 'Ваша сила атаки возрастает на 40% на 6 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_50.webp',
          },
          {
            'name': 'Shout',
            'description': {
              'en': 'Performs a strong attack to the enemies within 4m.',
              'ru':
                  'Сильный урон врагам в пределах 4 метров от окружающей области.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_0.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Spiral Tracker',
    'class': {
      'en': 'Devil Hunter',
      'ru': 'Охотник на демонов',
    },
    'description': {
      'en':
          'Launch a gun at the targeted location. It whirls and deals 210 damage to all enemies in the area.',
      'ru':
          'Бросает пистолет в указанное место, который наносит 210 урона по области.'
    },
    'type': 'Point',
    'cooldown': 8,
    'iconUrl': 'assets/icons/devilhunter/c06s00.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Range',
            'description': {
              'en': 'Increase the skill range by 2 meters.',
              'ru': 'Увеличивает дальность применения умения на 2 метра.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_52.webp',
          },
          {
            'name': 'Quick Release',
            'description': {
              'en':
                  'When a target is attacked, the critical hit rate of the target and the party member increases by 15% for 6s.',
              'ru':
                  'Когда цель атакована, шанс нанести критический урон по цели для членов группы увеличен на 15% в течение 6 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_49.webp',
          },
          {
            'name': 'Quick Hand',
            'description': {
              'en': 'Attack speed increases by 20%.',
              'ru': 'Скорость атаки увеличена на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_41.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Swift Movement',
            'description': {
              'en': 'Increases movement speed by 20% for 3s.',
              'ru':
                  'Скорость передвижения увеличивается на 20% в течение 3 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_48.webp',
          },
          {
            'name': 'Growing Bullet',
            'description': {
              'en':
                  'Each time your attack hits 3 times damage is increased by 10%.',
              'ru':
                  'Когда умение попадает по противнику 3 раза, урон увеличивается на 10%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_58.webp',
          },
          {
            'name': 'Concentrated Shot',
            'description': {
              'en':
                  'Damage done to enemies in the center of the area is increased by 30%.',
              'ru':
                  'Урон по противникам, находящимся в центре области увеличивается на 30%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_0.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Swirl',
            'description': {
              'en':
                  'Creates a magnetic field and the attack range increases by 15%. Slowly draw the enemies into the center of the circle.',
              'ru':
                  'Медленно притягивает противников в центр области. Увеличивает область применения умения на 15%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_71.webp',
          },
          {
            'name': 'Continuous Use',
            'description': {
              'en': 'Can stack up to 2 times.',
              'ru': 'Позволяет использовать умение 2 раза.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_83.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Execution',
    'class': {
      'en': 'Devil Hunter',
      'ru': 'Охотник на демонов',
    },
    'description': {
      'en':
          'Charge the enemy and launch into the air dealing 40 damage, and then you retreat to shoot him for 160 damage.',
      'ru':
          'Сокращает дистанцию до противника, подбрасывает ударом ногой, нанося 40 урона, отпрыгивает и расстреливает врага в воздухе, нанося 160 урона.'
    },
    'type': 'Combo',
    'cooldown': 12,
    'iconUrl': 'assets/icons/devilhunter/c06s01.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Movement Distance',
            'description': {
              'en': 'Movement distance can increases by 1m.',
              'ru': 'Увеличивает дальность применения умения на 1 метр.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_10.webp',
          },
          {
            'name': 'Big Foot',
            'description': {
              'en':
                  'Attack range is increased by 30%. Increase the height of the enemy in the air.',
              'ru':
                  'Область атаки удара ногой увеличивается на 30%. Противники подбрасываются выше.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_7.webp',
          },
          {
            'name': 'Sudden Strike',
            'description': {
              'en': 'Increases critical hit rate of Upper Kick by 100%.',
              'ru': 'Шанс критического удара ногой увеличен на 100%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_4.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Range',
            'description': {
              'en': 'Increases the attack range by 30% when using a handgun.',
              'ru': 'Увеличивает область стрельбы пистолетами на 30%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_7.webp',
          },
          {
            'name': 'Strength',
            'description': {
              'en': 'Become immune to control effects during the cast a skill.',
              'ru':
                  'Невосприимчивость эффектам контроля во время использования.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_23.webp',
          },
          {
            'name': 'Fire',
            'description': {
              'en':
                  'Deals 40% more damage with guns to enemies with >50% health.',
              'ru':
                  'Урон оружием увеличен на 40% по врагам с уровнем здоровья выше 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_32.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Air Strike',
            'description': {
              'en':
                  'Increases the critical hit rate of enemies in the air by 50%.',
              'ru':
                  'Увеличивает шанс критического удара на 50% по целям в воздухе.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_29.webp',
          },
          {
            'name': 'Strafing indiscriminately',
            'description': {
              'en':
                  'Increases the number of shots by 4. Damage increased by 15%.',
              'ru':
                  'Количество выстрелов увеличивается на 4. Урон увеличивается на 15%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_8.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Plasma Bullet',
    'class': {
      'en': 'Devil Hunter',
      'ru': 'Охотник на демонов',
    },
    'description': {
      'en':
          'Shoot a slow plasma ball that periodically deals 18 damage to enemies in its path.',
      'ru':
          'Запускает медленно летящий шар плазмы, который периодически наносит 18 урона противникам на своем пути.'
    },
    'type': 'Normal',
    'cooldown': 8,
    'iconUrl': 'assets/icons/devilhunter/c06s02.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Range',
            'description': {
              'en': 'Increase the skill range by 3m.',
              'ru': 'Увеличивает дальность умения на 3 метра.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_52.webp',
          },
          {
            'name': 'Attack Speed',
            'description': {
              'en': 'Increases attack speed by 20%.',
              'ru': 'Скорость атаки увеличена на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_6.webp',
          },
          {
            'name': 'Retreat',
            'description': {
              'en': 'You retreat 1.5m after the shot.',
              'ru': 'Вы отпрыгиваете на 1.5 метра после выстрела.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_40.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Continuous Use',
            'description': {
              'en': 'Changes to stack skill, stack up to 2 times.',
              'ru': 'Умение имеет 2 заряда.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_83.webp',
          },
          {
            'name': 'Icing Effect',
            'description': {
              'en': 'Reduces enemy movement speed by 40% for 2s.',
              'ru':
                  'Сникает скорость передвижения противников на 40% в течение 2 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_47.webp',
          },
          {
            'name': 'Shoot-out',
            'description': {
              'en': 'Critical hit rate increases by 30%.',
              'ru': 'Шанс критического удара увеличен на 30%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_4.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Supercharge Zone',
            'description': {
              'en':
                  'Generates an overloaded area at the targeted location. In this area, damage is inflicted periodically.',
              'ru':
                  'Шар плазмы запускается в указанную область, оставляя после себя электрическое поле с переодическим уроном.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_53.webp',
          },
          {
            'name': 'Plasma Fragmentation',
            'description': {
              'en':
                  'Launch 3 plasma bullets at once. The two bullets added have a 50% reduction in attack range. Reduced damage to enemies by 70%.',
              'ru':
                  'Запускает 3 снаряда одновременно. 2 дополнительных снаряда уменьшают дальность атаки противника на 50%, а урон, наносимый противником, уменьшается на 70%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_54.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Meteor Stream',
    'class': {
      'en': 'Devil Hunter',
      'ru': 'Охотник на демонов',
    },
    'description': {
      'en':
          'Shoot a volley of bullets into the air, which falls back to the targeted location, causing 405 damage. Launches enemies into the air.',
      'ru':
          'Делает залп снарядов в воздух, после чего пули летят в указанную область, нанося 405 урона. Подбрасывает противников в воздух.'
    },
    'type': 'Point',
    'cooldown': 9,
    'iconUrl': 'assets/icons/devilhunter/c06s07.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Mental Fortification',
            'description': {
              'en': 'Mana cost reduced by 50%.',
              'ru': 'Потребление маны сокращено на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_34.webp',
          },
          {
            'name': 'Cramp',
            'description': {
              'en': 'Increases fall down condition by 1s.',
              'ru': 'Продлевает длительность сбития с ног на 1 секунду.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_45.webp',
          },
          {
            'name': 'Damage Increased',
            'description': {
              'en': 'Damage increased by 20%.',
              'ru': 'Увеличение урона на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_12.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Attack Range',
            'description': {
              'en': 'Attack Range increased by 30%',
              'ru': 'Дальность атаки увеличивается на 30%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_41.webp',
          },
          {
            'name': 'Critical Hit',
            'description': {
              'en': 'Increases Critical Hit Rate by 60%',
              'ru': 'Увеличивает шанс нанесения критического удара на 60%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_4.webp',
          },
          {
            'name': 'Piercing Explosion',
            'description': {
              'en': 'Attack ignores 40% of enemy’s physical defense.',
              'ru': 'Умение игнорирует 40% физической защиты противника.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_26.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Bombing',
            'description': {
              'en': 'Shoots 3 times in a row. Damage increased by 60%.',
              'ru': 'Стреляет 3 раза подряд. Урон увеличен на 60%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_8.webp',
          },
          {
            'name': 'Comet',
            'description': {
              'en':
                  'A single bullet is shot in the air and quickly hits the target area.',
              'ru': 'Стреляет одной пулей.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_23.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Summer Salt Shot',
    'class': {
      'en': 'Devil Hunter',
      'ru': 'Охотник на демонов',
    },
    'description': {
      'en': 'Take a leap forward and fires a handgun dealing 126 damage.',
      'ru': 'Совершает прыжок вперед, нанося 126 урона выстрелом.'
    },
    'type': 'Normal',
    'cooldown': 9,
    'iconUrl': 'assets/icons/devilhunter/c06s03.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Mental Fortification',
            'description': {
              'en': 'Mana cost reduced by 50%.',
              'ru': 'Потребление маны сокращено на 15%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_34.webp',
          },
          {
            'name': 'Burn',
            'description': {
              'en':
                  'Normal and weak monsters have a 50% chance of getting the Burn effect.',
              'ru':
                  'Обычные монстры имеют 50% вероятность получить эффект горения.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_45.webp',
          },
          {
            'name': 'Ignored Collision',
            'description': {
              'en': 'You can cross normal bosses without collision.',
              'ru': 'Позволяет проходить сквозь обычных боссов.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_12.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Attack Speed',
            'description': {
              'en': 'Increases attack speed by 20%.',
              'ru': 'Скорость атаки увеличена на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_41.webp',
          },
          {
            'name': 'Quick Shoot',
            'description': {
              'en': 'Critical hit rate increases by 50%.',
              'ru': 'Шанс критического удара увеличен на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_4.webp',
          },
          {
            'name': 'Evasion Master',
            'description': {
              'en': 'Increases evasion rate by 30% during cast.',
              'ru': 'Уклонение увеличено на 30% во время использования.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_26.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Double Jump',
            'description': {
              'en':
                  'Movement distance increased by 2m. The number of attacks is increased to 2.',
              'ru':
                  'Дистанция перемещения увеличена на 2 метра. Количество атак увеличено до 2.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_8.webp',
          },
          {
            'name': 'Super Armor',
            'description': {
              'en':
                  'You become immune to control effects. Cooldown decreases by 3s.',
              'ru':
                  'Невосприимчивость эффектам контроля. Время восстановления уменьшено на 3 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_23.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Equilibrium',
    'class': {
      'en': 'Devil Hunter',
      'ru': 'Охотник на демонов',
    },
    'description': {
      'en': 'Shoot all around you, inflicting 405 damage to nearby enemies.',
      'ru': 'Стреляет вокруг себя, нанося 405 урона.'
    },
    'type': 'Normal',
    'cooldown': 16,
    'iconUrl': 'assets/icons/devilhunter/c06s04.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Fast Fire',
            'description': {
              'en': 'Attack speed increases by 15%.',
              'ru': 'Скорость атаки увеличена на 15%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_41.webp',
          },
          {
            'name': 'Under-exposed',
            'description': {
              'en':
                  'A critical hit rate on target for party members increases by 15% for 12s.',
              'ru':
                  'Шанс критического удара по цели увеличен для группы на 15% в течение 12 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_49.webp',
          },
          {
            'name': 'Master of evasion',
            'description': {
              'en': 'Increases evasion rate by 20% while using skill.',
              'ru': 'Уклонение увеличено на 20% во время использования.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_26.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Picture Effect',
            'description': {
              'en':
                  'Burns enemy for 5 seconds. Up to 3 times can be superimposed.',
              'ru': 'Поджигает цель на 5 секунд. Суммируется до 3 раз.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_45.webp',
          },
          {
            'name': 'Critical Hit',
            'description': {
              'en': 'Increases critical hit rate by 30%.',
              'ru': 'Шанс критического удара увеличен на 30%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_4.webp',
          },
          {
            'name': 'Range',
            'description': {
              'en': 'Skill range increased by 20%.',
              'ru': 'Дальность умения увеличена на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_7.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Thinning Fire',
            'description': {
              'en':
                  'Reduces the area of effect to a cone in front of you and increases the duration of the attack. Damage inflicted increases by 100%.',
              'ru':
                  'Сужает угол атаки и увеличивает продолжительность. Увеличивает урон на 100%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_42.webp',
          },
          {
            'name': 'Sweep',
            'description': {
              'en':
                  'Attack 360 degrees range. Critical damage increases by 100%.',
              'ru': 'Урон на 360 градусов. Критический урон увеличен на 100%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_40.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Agile Shooting',
    'class': {
      'en': 'Devil Hunter',
      'ru': 'Охотник на демонов',
    },
    'description': {
      'en':
          'Move while inflicting 73 damage to nearby enemies. Can be used 2 times.',
      'ru': 'При движении наносит 73 урона ближайшим врагам. Может быть использовано 2 раза.'
    },
    'type': 'Combo',
    'cooldown': 1,
    'iconUrl': 'assets/icons/devilhunter/c06s05.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Mana Control',
            'description': {
              'en': '50% chance to not consume MP.',
              'ru': '50% вероястность не потратить ману.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_34.webp',
          },
          {
            'name': 'Attack Speed',
            'description': {
              'en': 'Increases attack speed by 10%.',
              'ru': 'Скорость атаки увеличена на 10%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_41.webp',
          },
          {
            'name': 'Critical Hit',
            'description': {
              'en': 'Increases critical hit rate by 15%.',
              'ru': 'Шанс критического удара увеличен на 15%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_4.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Close Shot',
            'description': {
              'en': 'Decrease attack range by 20%. Damage increased by 40%.',
              'ru': 'Дальность атаки увеличена на 20%. Урон увеличен на 40%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_0.webp',
          },
          {
            'name': 'Master of Evasion',
            'description': {
              'en': 'Increases evasion rate by 35% while using skill.',
              'ru': 'Уклонение увеличено на 35% при использовании.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_26.webp',
          },
          {
            'name': 'Movement Distance',
            'description': {
              'en': 'Movement distance increases by 1m.',
              'ru': 'Дальность перемещения увеличена на 1 метр.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_10.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Number of Attacks',
            'description': {
              'en': 'The number of attacks increased by 3.',
              'ru': 'Количество использований увеличено до 3 раз.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_38.webp',
          },
          {
            'name': 'Number of Attacks',
            'description': {
              'en': 'The number of hits increased by 2.',
              'ru': 'Количество выстрелов увеличено вдвое.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_8.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Despair',
    'class': {
      'en': 'Devil Hunter',
      'ru': 'Охотник на демонов',
    },
    'description': {
      'en':
          'Attack all around you with 387 damage, then leap into the air leaving behind multiple grenades dealing 216 damage.',
      'ru':
          'Наносит урон вокруг равный 387. Затем отпрыгивает, оставляя бомбу, которая наносит 216 урона.'
    },
    'type': 'Hold 2.5 sec',
    'cooldown': 24,
    'iconUrl': 'assets/icons/devilhunter/c06s06.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Quick Hand',
            'description': {
              'en': 'Increases attack speed by 20%.',
              'ru': 'Скорость атаки увеличена на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_41.webp',
          },
          {
            'name': 'Strength',
            'description': {
              'en': 'You are immune to control effects during the attack.',
              'ru':
                  'Невосприимчивость эффектам контроля во время использования.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_23.webp',
          },
          {
            'name': 'Critical Damage',
            'description': {
              'en': 'Critical damage increases by 40%.',
              'ru': 'Критический урон увеличен на 40%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_4.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Flame Bomb',
            'description': {
              'en':
                  '[Fire] Damage given to the enemy by the bomb is increased by 30%, and it is burned for 5s.',
              'ru':
                  '[Огонь] Урон от бомбы увеличен на 30%. Оставляет ожог на 5 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_13.webp',
          },
          {
            'name': 'Ice Bomb',
            'description': {
              'en':
                  '[Ice] Enemy is no longer down by the bomb, but is frozen for 3s.',
              'ru': '[Холод] Цель заморожена на 3 секунды вместо подбрасывания.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_14.webp',
          },
          {
            'name': 'Continuous Launch',
            'description': {
              'en': 'Launch bombs 2 times in a row.',
              'ru': 'Бросает 2 бомбы.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_14.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Destructive Penetration',
            'description': {
              'en':
                  'Move quickly to 6m distance instantly cast the skill, then move back 8m.',
              'ru':
                  'Совершает прыжок на 6 метров перед использованием умения. Затем отпрыгивает на 8 метров.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_10.webp',
          },
          {
            'name': 'Infinite annihilation',
            'description': {
              'en':
                  'The number of shots is increased by 3. Increases critical hit rate by 50%.',
              'ru':
                  'Число выстрелов увеличено на 3. Шанс критического урона увеличен на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_42.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Quickshot',
    'class': {
      'en': 'Devil Hunter',
      'ru': 'Охотник на демонов',
    },
    'description': {
      'en':
          'Shoot 2 bullets in the desired direction inflicting 67 damage. You can use this skill 2 times in a row.',
      'ru':
          'Совершает 2 выстрела, нанося 67 урона. Может быть использовано 2 раза подряд.'
    },
    'type': 'Combo',
    'cooldown': 8,
    'iconUrl': 'assets/icons/devilhunter/c06s19.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Attack Speed',
            'description': {
              'en': 'Attack speed increases by 20%.',
              'ru': 'Скорость атаки увеличена на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_41.webp',
          },
          {
            'name': 'Push',
            'description': {
              'en': 'Add pushing effect.',
              'ru': 'Отталкивает врагов.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_60.webp',
          },
          {
            'name': 'Infinite Passion',
            'description': {
              'en':
                  'The next time you use the skill, the duration of the animation increases by 1s.',
              'ru':
                  'Время между повторным использованием увеличено на 1 секунду.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_55.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Lightfoot',
            'description': {
              'en': 'Increases your movement speed by 40% for 1s.',
              'ru':
                  'Скорость передвижения увеличена на 40% в течение 1 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_48.webp',
          },
          {
            'name': 'Starting Shot',
            'description': {
              'en':
                  'The damage done to the enemy by the first chain attack hits 50%.',
              'ru': 'Урон от первого выстрела увеличен на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_0.webp',
          },
          {
            'name': 'Damage Increased',
            'description': {
              'en': 'Damage increases by 40% every hit.',
              'ru': 'Урон каждого выстрела увеличен на 40%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_58.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Shotgun',
            'description': {
              'en': 'Critical hit rate increases by 80%.',
              'ru': 'Шанс критического удара увеличен на 80%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_4.webp',
          },
          {
            'name': 'Triple Shot',
            'description': {
              'en': 'The number of attacks increases by 3.',
              'ru': 'Может использоваться до 3 раз.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_38.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'AT02 Ruthenium',
    'class': {
      'en': 'Devil Hunter',
      'ru': 'Охотник на демонов',
    },
    'description': {
      'en':
          'Launch a grenade at the targeted location that deals 124 damage in a small area.',
      'ru': 'Бросает гранату в указанное место, нанося 124 урона.'
    },
    'type': 'Point',
    'cooldown': 6,
    'iconUrl': 'assets/icons/devilhunter/c06s08.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Range',
            'description': {
              'en': 'Increase the skill range by 2m.',
              'ru': 'Дальность умения увеличена на 2 метра.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_52.webp',
          },
          {
            'name': 'Explosion Range',
            'description': {
              'en': 'Explosion range increases by 20%.',
              'ru': 'Область взрыва увеличена на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_7.webp',
          },
          {
            'name': 'Sudden Exposure',
            'description': {
              'en':
                  'When a target is attacked, the critical hit rate of party members increases by 15% for 8s.',
              'ru':
                  'Шанс критического удара по цели увеличен на 15% в течение 8 секунд для всей группы.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_49.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Damage Increased',
            'description': {
              'en': 'Damage increased by 50%.',
              'ru': 'Урон увеличен на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_0.webp',
          },
          {
            'name': 'Stolen Grenade',
            'description': {
              'en':
                  'Damage to enemies is reduced by 50%. Cooldown increased by 6s. Launch enemy into the air.',
              'ru':
                  'Урон уменьшен на 50%, время восстановления увеличено на 6 секунд. Подбрасывает врагов в воздух.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_9.webp',
          },
          {
            'name': 'Freezing Grenade',
            'description': {
              'en':
                  'Damage to enemies is reduced by 75%. Cooldown increased by 12s. Freeze the enemy for 2s.',
              'ru':
                  'Урон уменьшен на 75%, время восстановления увеличено на 12 секунд. Замораживает врагов на 2 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_43.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Fireworks',
            'description': {
              'en': 'Throw 3 grenades at a time. Damage increased by 20%.',
              'ru': 'Бросает 3 гранаты. Урон увеличен на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_54.webp',
          },
          {
            'name': 'Internal Ignition',
            'description': {
              'en': 'The attack deals Burn to the enemy for 3s.',
              'ru': 'Поджигает на 3 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_78.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Cruel Tracker',
    'class': {
      'en': 'Devil Hunter',
      'ru': 'Охотник на демонов',
    },
    'description': {
      'en':
          'Shoot a burst of cone-shaped bullets dealing 175 damage, then a powerful shot in front of you for 174 damage.',
      'ru': 'Стреляет нанося 175 урона веером, затем 174 урона одним выстрелом.'
    },
    'type': 'Normal',
    'cooldown': 18,
    'iconUrl': 'assets/icons/devilhunter/c06s09.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Quick Preparation',
            'description': {
              'en': 'Cooldown reduced by 3s.',
              'ru': 'Время восстановления уменьшено на 3 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.webp',
          },
          {
            'name': 'Mental Fortification',
            'description': {
              'en': 'Mana cost reduced by 50%.',
              'ru': 'Потребление маны уменьшено на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_34.webp',
          },
          {
            'name': 'Push',
            'description': {
              'en': 'The last shot pushes enemies.',
              'ru': 'Последний выстрел отталкивает.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_60.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Critical Hit',
            'description': {
              'en': 'Increases critical hit rate by 60%.',
              'ru': 'Шанс критического удара увеличен на 60%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_4.webp',
          },
          {
            'name': 'Improved Shot',
            'description': {
              'en': 'Attack count increases by 3 times.',
              'ru': 'Количество выстрелов увеличивается на 3.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_51.webp',
          },
          {
            'name': 'Wide Shot',
            'description': {
              'en': 'Increases the attack angle by 40% when you fire.',
              'ru': 'Угол атаки увеличен на 40%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_7.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Quick Gun',
            'description': {
              'en':
                  'The last shot becomes very fast. You can use the last attack once more.',
              'ru':
                  'Последний выстрел выполняется очень быстро и может быть выполнен еще раз.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_38.webp',
          },
          {
            'name': 'Explosive Bullet',
            'description': {
              'en':
                  'The last attack has been changed to an explosive form, gives 100% more damage to nearby enemies.',
              'ru':
                  'Последний выстрел заменяется взрывом, наносящим на 100% больше урона по ближайшим врагам.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_53.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Precursor of the End',
    'class': {
      'en': 'Devil Hunter',
      'ru': 'Охотник на демонов',
    },
    'description': {
      'en':
          'Shoot cone-shaped twice for 131 and 167 damage. Nearest enemies get 2 times damage.',
      'ru':
          'Стреляет два раза по 131 и 167 урона соответственно. Ближайшие враги получают в 2 раза больше урона.'
    },
    'type': 'Combo',
    'cooldown': 24,
    'iconUrl': 'assets/icons/devilhunter/c06s10.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Damage Increased',
            'description': {
              'en': 'Increases the damage done to nearby enemies by 20%.',
              'ru': 'Ближайшие враги получают на 20% больше урона.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_70.webp',
          },
          {
            'name': 'Attack Angle',
            'description': {
              'en': 'Attack angle increases by 20%.',
              'ru': 'Угол атаки увеличен на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_7.webp',
          },
          {
            'name': 'Stun',
            'description': {
              'en': 'Stun enemies for 2 seconds if hits 2 times.',
              'ru': 'При втором попадании цель оглушается на 2 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_44.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Enhanced Shot',
            'description': {
              'en': 'Damage to enemies increases by 25%.',
              'ru': 'Урон увеличен на 25%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_0.webp',
          },
          {
            'name': 'Penetration',
            'description': {
              'en': 'Increases pierce level by 1.',
              'ru': 'Уровень пробивания увеличен на 1.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_21.webp',
          },
          {
            'name': 'Quick-ready',
            'description': {
              'en': 'Reduces the cooldown time by 4s.',
              'ru': 'Время восстановления умения сокращено на 4 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_56.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Consequences of the Disaster',
            'description': {
              'en':
                  'Increases the number of shots by 3. Mana cost reduced by 40%.',
              'ru':
                  'Количество выстрелов увеличено на 3. Потребление маны сокращено на 40%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_38.webp',
          },
          {
            'name': 'Desperation',
            'description': {
              'en':
                  'Increases the damage done to enemies immune to control effects by 80%.',
              'ru':
                  'Урон увеличен на 80% по целям, невосприимчивым эффектам контроля.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_5.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Judgement Time',
    'class': {
      'en': 'Devil Hunter',
      'ru': 'Охотник на демонов',
    },
    'description': {
      'en':
          'Shoot cone-shaped 5 projectiles over a long distance dealing 116 each and explode on impact, inflicting 47 damage to nearby enemies.',
      'ru':
          'Стреляет веером 5 раз, нанося 116 урона. Снаряды разрываются, нанося еще 47 урона каждый.'
    },
    'type': 'Normal',
    'cooldown': 30,
    'iconUrl': 'assets/icons/devilhunter/c06s11.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Quick Preparation',
            'description': {
              'en': 'Cooldown reduced by 5s.',
              'ru': 'Время восстановления увеличено на 5 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.webp',
          },
          {
            'name': 'Enhanced Shoot',
            'description': {
              'en': 'Damage to enemies increases by 10%.',
              'ru': 'Урон увеличен на 10%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_0.webp',
          },
          {
            'name': 'Push',
            'description': {
              'en': 'Pushes enemies.',
              'ru': 'Отталкивает врагов.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_60.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Master of Evasion',
            'description': {
              'en': 'Increases evasion rate by 30% while using Skill.',
              'ru': 'Уклонение увеличено на 30% при использовании.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_26.webp',
          },
          {
            'name': 'Improved Explosion',
            'description': {
              'en':
                  'Increases the damage of fragments from the explosion by 50%.',
              'ru': 'Урон от разорвавшихся снарядов увеличен на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_0.webp',
          },
          {
            'name': 'Wide Explosion',
            'description': {
              'en': 'The bullet fragments spreading distance increased by 20%.',
              'ru': 'Снаряды при взрыве разлетаются на 20% дальше.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_7.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Sentence of Imprisonment',
            'description': {
              'en':
                  'Concentrate energy into a single ball that deals 600% of the damage.',
              'ru': 'Совершает 1 выстрел, наносящий 600% урона.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_53.webp',
          },
          {
            'name': 'Evidence Destruction',
            'description': {
              'en':
                  'Increases the range of explosion of the bullet attack by 40%, and increases the damage done to the normal enemies by 100%.',
              'ru':
                  'Снаряды при взрыве разлетаются на 40% дальше и наносят на 100% урона больше по обычным врагам.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_61.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Shotgun Speaker',
    'class': {
      'en': 'Devil Hunter',
      'ru': 'Охотник на демонов',
    },
    'description': {
      'en':
          'Shoot cone-shaped 3 times with your rifle dealing 147-147-196 damage, each shot pushes the enemy. Nearest enemies take 2 times damage.',
      'ru':
          'Стреляет 3 раза веером 147-147-196 урона, отталкивая врагов. Ближайшие враги получают двойной урон.'
    },
    'type': 'Normal',
    'cooldown': 36,
    'iconUrl': 'assets/icons/devilhunter/c06s12.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Close Shot',
            'description': {
              'en': 'Increases the damage done to nearby enemies by 20%.',
              'ru': 'Ближайшие враги получают на 20% больше урона.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_70.webp',
          },
          {
            'name': 'Mana Control',
            'description': {
              'en': '50% chance to not consume MP.',
              'ru': '50% шанс не потратить ману.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_34.webp',
          },
          {
            'name': 'Combo',
            'description': {
              'en': 'The skill becomes usable 3 times in a row.',
              'ru': 'Использование умения меняется на Комбо с 3 выстрелами.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_38.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Enhanced Shot',
            'description': {
              'en': 'Damage to enemies increases by 25%.',
              'ru': 'Урон увеличен на 25%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_0.webp',
          },
          {
            'name': 'Master of Evasion',
            'description': {
              'en': 'Increases evasion rate by 30% while using Skill.',
              'ru': 'Уклонение увеличено на 30% при использовании.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_26.webp',
          },
          {
            'name': 'Quick-ready',
            'description': {
              'en': 'Cooldown reduced by 6s.',
              'ru': 'Время восстановления уменьшено на 6 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_56.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Extended Fire',
            'description': {
              'en':
                  'After a series of 3 shots, you carry a powerful shotgun shot. Knockdown enemies. Move back 4m.',
              'ru':
                  'После 3 выстрелов наносит дополнительный выстрел, сбивающий с ног врага. Отбрасывает назад на 4 метра.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_8.webp',
          },
          {
            'name': 'Damage Increased',
            'description': {
              'en':
                  'Increases the damage done to enemies immune to control effects by 80%.',
              'ru':
                  'Урон увеличен на 80% по целям, невосприимчивым эффектам контроля.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_0.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Master of Shotguns',
    'class': {
      'en': 'Devil Hunter',
      'ru': 'Охотник на демонов',
    },
    'description': {
      'en':
          'Fire 2 quick shots dealing 197, followed by a final shot that deals 132 damage and knocks down enemies. Nearest enemies take 2 times damage.',
      'ru':
          'Стреляет дважды, нанося 197 урона. Затем наносит 132 урона выстрелом и сбивает с ног врагов. Ближайшие враги получают в 2 раза больше урона.'
    },
    'type': 'Hold 1.5 sec',
    'cooldown': 24,
    'iconUrl': 'assets/icons/devilhunter/c06s13.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Quick Preparation',
            'description': {
              'en': 'Cooldown reduced by 4s.',
              'ru': 'Время восстановления уменьшено на 4 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.webp',
          },
          {
            'name': 'Quick Hand',
            'description': {
              'en': 'Attack speed increases by 20% while holding.',
              'ru': 'Скорость атаки увеличена на 20% при использовании.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_41.webp',
          },
          {
            'name': 'Damage Increased',
            'description': {
              'en': 'Increases the damage done to nearby enemies by 20%.',
              'ru': 'Ближайшие враги получают на 20% больше урона.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_70.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Weak Shoot',
            'description': {
              'en':
                  'Increases the damage done to enemies immune to control effects by 40%.',
              'ru':
                  'Увеличивает на 40% урон по целям, невосприимчивым эффектам контроля.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_33.webp',
          },
          {
            'name': 'Full Range',
            'description': {
              'en': 'All ranges apply as near damage.',
              'ru': 'Ближний урон наносится по всем целям.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_7.webp',
          },
          {
            'name': 'Quick Preparation',
            'description': {
              'en':
                  'Each time an opponent dies, the cooldown time is reset by a 15% chance.',
              'ru':
                  'При смерти врага умение может с вероятностью 15% восстановится моментально.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_56.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Will of the Ruler',
            'description': {
              'en':
                  'The last attack not happening. Hold time increases by 1.8s. Damage is increased by 40% during a holding.',
              'ru':
                  'Последняя атака не происходит. Время удержания умения увеличено на 1.8 секунды. Урон увеличен на 40%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_42.webp',
          },
          {
            'name': 'Ruler',
            'description': {
              'en':
                  'Attack distance is reduced by 20%, but a Perfect Zone is added, and when a Perfect Zone succeeds, increase the damage of the last attack by 200%.',
              'ru':
                  'Дальность атаки уменьшена на 20%. Добавлен идеальный момент выстрела. При идеальном выстреле последняя атака наносит 200% урона.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_49.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Last Supper',
    'class': {
      'en': 'Devil Hunter',
      'ru': 'Охотник на демонов',
    },
    'description': {
      'en':
          'Shoot a powerful explosive bullet that throws enemies into the air inflicting 708 damage.',
      'ru':
          'Стреляет разрывным снарядом, наносящим 708 урона и подбрасыващим врагов в воздух.'
    },
    'type': 'Normal',
    'cooldown': 36,
    'iconUrl': 'assets/icons/devilhunter/c06s14.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Quick Preparation',
            'description': {
              'en': 'Cooldown reduced by 6s.',
              'ru': 'Время восстановления уменьшено на 6 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.webp',
          },
          {
            'name': 'Fireball',
            'description': {
              'en': '[Fire] Burns for 3 seconds, causing damage every second.',
              'ru': '[Огонь] Поджигает на 3 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_13.webp',
          },
          {
            'name': 'Chill',
            'description': {
              'en':
                  '[Ice] Freeze for 5 seconds to reduce the movement speed by 50%.',
              'ru':
                  '[Холод] Замораживает на 5 секунд уменьшая скорость передвижения на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_14.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Hot',
            'description': {
              'en':
                  'Hot heat is created on the ground, causing damage to enemies within a range every second.',
              'ru': 'Создает горящую область, наносящую урон.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_85.webp',
          },
          {
            'name': 'Strong Explosion',
            'description': {
              'en':
                  'The powerful explosion pressure causes the enemy to float higher and the downtime to increase.',
              'ru': 'Взрыв подбрасывает врагов выше.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_9.webp',
          },
          {
            'name': 'Execution',
            'description': {
              'en':
                  'Move 4m to the front, attack the enemy, and fire a special shot, increasing damage by 50% to stun and knocked down enemies.',
              'ru':
                  'Делает выпад на 4 метра вперед, совершает выстрел, увеличивающий урона на 50% по оглушенным и опрокинутым целям.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_86.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Double Shot',
            'description': {
              'en':
                  'Shoots with a shotgun in each hand simultaneously, causing 2 explosions.',
              'ru': 'Производит 2 взрыва.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_40.webp',
          },
          {
            'name': 'Barrage',
            'description': {
              'en':
                  'The enemy shoots 3 times. Last attack throws enemies in the air.',
              'ru': 'Стреляет 3 раза. Последний выстрел подбрасывает врагов.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_8.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Spiral Flame',
    'class': {
      'en': 'Devil Hunter',
      'ru': 'Охотник на демонов',
    },
    'description': {
      'en':
          'Shoot a powerful bullet dealing 491 damage. Makes ground burns with 41 damage in 0.8s for 2.4s total.',
      'ru':
          'Выстрел наносит 491 урона и поджигает землю, нанося 41 урона каждые 0.8 секунд в течение 2.4 секунд.'
    },
    'type': 'Normal',
    'cooldown': 36,
    'iconUrl': 'assets/icons/devilhunter/c06s15.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Chill',
            'description': {
              'en':
                  'Instead of the flames on the ground, it creates a cold that reduces enemy movement speed by 50% for 3s.',
              'ru':
                  'Вместо огня замораживает, уменьшая скорость передвижения на 50% в течение 3 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_31.webp',
          },
          {
            'name': 'Furious Flame',
            'description': {
              'en':
                  'No longer hits enemies in the air, but ignites them for 3 seconds.',
              'ru':
                  'По врагам в воздухе не наносит урона, вместо этого поджигает на 3 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_78.webp',
          },
          {
            'name': 'Quick Aim',
            'description': {
              'en': 'Aiming time is 50% faster.',
              'ru': 'Скорость прицеливания увеличена на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_41.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Growth Bullet',
            'description': {
              'en':
                  'Damage to enemies increases by up to 50%, depending on distance.',
              'ru': 'Урон увеличен до 50% в завичимости от расстояния до цели.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_58.webp',
          },
          {
            'name': 'Fast Bullet',
            'description': {
              'en':
                  'The speed of bullet increases by 30%, and it becomes possible to slowly turn while aiming.',
              'ru': 'Скорость пули увеличивается на 30%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_82.webp',
          },
          {
            'name': 'Finishing Fire',
            'description': {
              'en':
                  'Increases critical hit rate by 60% for enemies with health below 50%.',
              'ru':
                  'Шанс критического удар увеличен на 60% по целям со здоровьем ниже 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_32.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Strengthening the Total',
            'description': {
              'en':
                  'Pushing and increasing the width of the fire by 20%, and increasing the damage done by the fire to the enemy by 200%.',
              'ru':
                  'Отталкивает и увеличвает область действия огня на 20%. Увеличивает урон от огня на 200%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_81.webp',
          },
          {
            'name': 'Humpback',
            'description': {
              'en':
                  'Increases damage to an enemy by 30%, and frost is applied for 5 seconds instead of fire damage.',
              'ru':
                  'Увеличвает урон на 30% и замораживает на 5 секунд вместо поджигания.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_53.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Catastrophe',
    'class': {
      'en': 'Devil Hunter',
      'ru': 'Охотник на демонов',
    },
    'description': {
      'en':
          'Launch a grenade at the targeted location and then detonate it, inflicting 644 damage and throwing enemies into the air.',
      'ru':
          'Бросает взрывчатку в указаное место, взрывая и нанося 644 урона. Враги подбрасываются в воздух.'
    },
    'type': 'Hold 2.5 sec',
    'cooldown': 24,
    'iconUrl': 'assets/icons/devilhunter/c06s16.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Strength',
            'description': {
              'en': 'You are immune to control effects during casting.',
              'ru':
                  'Невосприимчивость эффектам контроля во время использования.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_23.webp',
          },
          {
            'name': 'Remote Aim',
            'description': {
              'en': 'Increases the area of aiming by 10%.',
              'ru': 'Область прицеливания увеличена на 10%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_52.webp',
          },
          {
            'name': 'Quick Aim',
            'description': {
              'en': 'Area selection time is reduced by 20%.',
              'ru': 'Необходимое для прицеливания время сокращено на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_41.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Finishing Fire',
            'description': {
              'en':
                  'Enemies with <40% health suffer additional damage equal to 50% of their physical defense.',
              'ru': 'Враги со здоровьем ниже 40% получают на 50% больше урона.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_2.webp',
          },
          {
            'name': 'Unprotected Target',
            'description': {
              'en':
                  'Increases explosion damage by 40% for enemies that are in the air.',
              'ru': 'Взрыв наносит на 40% больше урона по врагам в воздухе.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_29.webp',
          },
          {
            'name': 'Concussion',
            'description': {
              'en': 'The neutralization phase increases by 1.',
              'ru': 'Увеличивает ослабляющий эффект на 1.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_69.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Carpet Bombing',
            'description': {
              'en':
                  '2 grenades are thrown, causing damage over a greater distance.',
              'ru': 'Бросает 2 взрывчатки, наносящие урон в большем радиусе.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_54.webp',
          },
          {
            'name': 'Eternal Disaster',
            'description': {
              'en':
                  'Shrapnels are created and planted in the ground, exploding every second and inflicting damage.',
              'ru': 'Фрагменты взрывчатки также взрываются, нанося урон.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_53.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Triple Exploit',
    'class': {
      'en': 'Devil Hunter',
      'ru': 'Охотник на демонов',
    },
    'description': {
      'en':
          'Shoot an explosive bullet at the targeted location inflicting 281 damage. You can use this skill 3 times in a row.',
      'ru':
          'Стреляет разрывным снарядом в указанное место, нанос 281 урона. Можно использовать до 3 раз подряд.'
    },
    'type': 'Chain',
    'cooldown': 30,
    'iconUrl': 'assets/icons/devilhunter/c06s17.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Vision',
            'description': {
              'en': 'Scope of the skill increased by 3m.',
              'ru': 'Радиус умения увеличен на 3 метра.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_52.webp',
          },
          {
            'name': 'Finishing Attack',
            'description': {
              'en': 'Deals 25% more damage to enemies with <40% health.',
              'ru':
                  'Урон увеличен на 25% по врагам с уровнем здоровья ниже 40%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_32.webp',
          },
          {
            'name': 'Constant Passion',
            'description': {
              'en': 'Increase the amount of time you can re-cast by 1s.',
              'ru':
                  'Время между повторным использованием увеличено на 1 секунду.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_55.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Attack Speed',
            'description': {
              'en': 'Increases attack speed by 20%.',
              'ru': 'Скорость атаки увеличена на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_6.webp',
          },
          {
            'name': 'Attack Range',
            'description': {
              'en': 'Attack Range increased by 30%.',
              'ru': 'Дальность атаки увеличена на 30%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_7.webp',
          },
          {
            'name': 'Flaming Bullet',
            'description': {
              'en': 'Inflicts Burn for 6s.',
              'ru': 'Поджигает на 6 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_13.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Quadruple Explosion',
            'description': {
              'en':
                  'Increases the number of activations by 4 and increases the critical hit rate by 100% for enemies with health below 40%.',
              'ru':
                  'Увеличивает число использований до 4 и вероятность критического удара на 100% по целям со здоровьем ниже 40%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_38.webp',
          },
          {
            'name': 'Super Explosion',
            'description': {
              'en':
                  'Aiming time is increasing, but increases damage by 50%, stuns the enemy for 3 seconds when attacking by last shot.',
              'ru':
                  'Время прицеливании увеличено. Увеличен урон на 50%, последний выстрел оглушает цель.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_53.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Aim Shot',
    'class': {
      'en': 'Devil Hunter',
      'ru': 'Охотник на демонов',
    },
    'description': {
      'en':
          'Aims and then shoots 4 bullets in the direction of your cursor. The first 3 deal 121 and reduce the speed of movement of the enemy by 80% for 2s. The last inflicts 204 damage.',
      'ru':
          'Стреляет 4 раза в указанном направлении. Первые 3 пули наносят 121 урона и уменьшают скорость перемещения врагов на 80% в течение 2 секунд. Последняя пуля наносит 204 урона.'
    },
    'type': 'Normal',
    'cooldown': 24,
    'iconUrl': 'assets/icons/devilhunter/c06s18.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Fast Bullet',
            'description': {
              'en': 'Bullet Flight Speed ​​Increases by 20%.',
              'ru': 'Скорость полета пуль увеличена на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_11.webp',
          },
          {
            'name': 'Quick Aim',
            'description': {
              'en': 'Aiming time is shortened by 20%.',
              'ru': 'Время прицеливания уменьшено на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_41.webp',
          },
          {
            'name': 'Last Shot',
            'description': {
              'en': 'The last one is a critical hit.',
              'ru': 'Последний выстрел наносит критический урон.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_4.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Damage Increased',
            'description': {
              'en': 'Damage increased by 25%.',
              'ru': 'Урон увеличен на 25%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_0.webp',
          },
          {
            'name': 'Large Bullet',
            'description': {
              'en': 'Increases the size of the bullets by 20%.',
              'ru': 'Размер пуль увеличен на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_62.webp',
          },
          {
            'name': 'Stun',
            'description': {
              'en': 'Stuns the enemies for 3s.',
              'ru': 'Оглушает врагов на 3 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_44.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Fast Fire',
            'description': {
              'en': 'Firing speed is 40% faster after aiming.',
              'ru': 'Скорость стрельбы увеличена на 40% после прицеливания.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_40.webp',
          },
          {
            'name': 'Hexa Shot',
            'description': {
              'en': 'Shoot 2 more bullets after aiming.',
              'ru': 'Добавляет еще 2 выстрела.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_54.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Perfect Shot',
    'class': {
      'en': 'Devil Hunter',
      'ru': 'Охотник на демонов',
    },
    'description': {
      'en':
          'Shoots a large caliber bullet at a very high speed, it inflicts 744 damage and knocks down.',
      'ru': 'Выстрел наносит 744 урона и сбивает с ног.'
    },
    'type': 'Hold',
    'cooldown': 30,
    'iconUrl': 'assets/icons/devilhunter/c06s20.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Mental Fortification',
            'description': {
              'en': 'Mana cost reduced by 50%.',
              'ru': 'Потребление маны сокращено на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_34.webp',
          },
          {
            'name': 'Stable Posture',
            'description': {
              'en': 'Immune to conrtol effects during holding and casting.',
              'ru': 'Невосприимчивость к эффектам контроля при использовании.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_23.webp',
          },
          {
            'name': 'Penetration',
            'description': {
              'en':
                  'If the skill is launched Perfect Zone, gives a Pierce Level 1 effect to the attack.',
              'ru':
                  'При идеальном попадании увеличивает уровень пробивания на 1.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_21.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Improved Shot',
            'description': {
              'en': 'Perfect Zone Attack Increases damage done by 30%.',
              'ru': 'Идеальный выстрел увеличивает урон на 30%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_0.webp',
          },
          {
            'name': 'Muscle Cramps',
            'description': {
              'en':
                  'If the attack is launched Perfect Zone, the enemies remain knock down 1s more and the neutralization is increased by 1.',
              'ru':
                  'При идеальном выстреле враги остаются сбитыми с ног на 1 секунду дольше и получают ослабляющий эффект.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_9.webp',
          },
          {
            'name': 'Bleeding',
            'description': {
              'en':
                  'If the attack is launched Perfect Zone, it inflicts a Bleeding for 5s.',
              'ru': 'При идеальном попадании поджигает на 5 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_45.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Perfect Aim',
            'description': {
              'en':
                  'The skill loads for 1s, and at the end of the load has the same effect as a perfect shot.',
              'ru':
                  'Всегда наносит идеальный выстрел. Время прицеливания равно 1 секунде.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_40.webp',
          },
          {
            'name': 'Sniper',
            'description': {
              'en':
                  'The Perfect Zone is shrinking. Perfect shot deals a critical hit.',
              'ru':
                  'Идеальная зона для выстрела сокращена, но наносит критический урон.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_72.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Enhanced Bullet',
    'class': {
      'en': 'Blaster',
      'ru': 'Механист',
    },
    'description': {
      'en': 'Fires the enhanced bullet inflicting 154 damage.',
      'ru': 'Наносит 154 урона выстрелом.'
    },
    'type': 'Normal',
    'cooldown': 5,
    'iconUrl': 'assets/icons/blaster/c07s00.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Armor Destroyed',
            'description': {
              'en': 'Reduces 20% of all enemy armor for 8s.',
              'ru': 'Снижает защиту врагов на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_46.webp',
          },
          {
            'name': 'Critical Hit',
            'description': {
              'en': 'Increases a critical hit chance by 15%.',
              'ru': 'Увеличивает шанс критичесого удара на 15%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_4.webp',
          },
          {
            'name': 'Push',
            'description': {
              'en': 'Increases the push distance by 1 meter.',
              'ru': 'Отталкивает врагов на 1 метр.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_60.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Bullet Strengthening',
            'description': {
              'en': 'Damage to enemies increases by 25%.',
              'ru': 'Урон увеличен на 25%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_0.webp',
          },
          {
            'name': 'Natural Selection',
            'description': {
              'en': 'Increases the damage dealt to normal monsters by 40%.',
              'ru': 'Урон увеличен на 40% по обычным монстрам.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_61.webp',
          },
          {
            'name': 'Attack Speed',
            'description': {
              'en': 'Increases attack speed by 20%.',
              'ru': 'Скорость атаки увеличена на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_6.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Penetration Shell',
            'description': {
              'en': 'The bullet penetrates the enemy.',
              'ru': 'Снаряд пробивает врагов.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_2.webp',
          },
          {
            'name': 'Ignition',
            'description': {
              'en': 'Successful hits burn the enemy for 3s.',
              'ru': 'Поджигает на 3 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_13.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Aim and Fire',
    'class': {
      'en': 'Blaster',
      'ru': 'Механист',
    },
    'description': {
      'en':
          'Deals 77 damage to the enemies and decrease movement speed by 60% for 4 seconds.',
      'ru':
          'Наносит 77 урона по врагам и снижает их скорость передвижения на 60% в течение 4 секунд.'
    },
    'type': 'Normal',
    'cooldown': 6,
    'iconUrl': 'assets/icons/blaster/c07s01.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Skill Range',
            'description': {
              'en': 'Increases the skill range by 2 meters.',
              'ru': 'Дальность умения увеличена на 2 метра.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_52.webp',
          },
          {
            'name': 'Empowered Will',
            'description': {
              'en': 'Reduces mana consumption by 50%.',
              'ru': 'Потребление маны уменьшено на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_34.webp',
          },
          {
            'name': 'Freezing',
            'description': {
              'en':
                  'Enhances the movement speed debuff by 20% and deals 15% more damage to boss monsters.',
              'ru':
                  'Эффект снижения скорости увеличен на 20%. Урон по боссам увеличен на 15%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_47.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Icy Shell',
            'description': {
              'en':
                  'Increases the duration of chill effect by 2 seconds and the duration of freeze effect by 1 second.',
              'ru':
                  'Длительность замедления увеличена на 2 секунды. Дополнительно замораживает на 1 секунду.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_14.webp',
          },
          {
            'name': 'Improved Shell',
            'description': {
              'en': 'Increases damage by 25%.',
              'ru': 'Увеличивает урон на 25%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_0.webp',
          },
          {
            'name': 'Extensive Explosion',
            'description': {
              'en': 'Increases the area of effect by 20%.',
              'ru': 'Область действия умения увеличена на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_7.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Chain Explosion',
            'description': {
              'en':
                  'The bullet penetrates through the enemy and explodes 3 times until it reaches the maximum range.',
              'ru': 'Снаряд пробивает врагов, взрываясь 3 раза во время полета.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_53.webp',
          },
          {
            'name': 'Icy Explosion',
            'description': {
              'en':
                  'Successful hits freeze the enemy for 3 seconds but increases the skill cooldown by 4 seconds.',
              'ru':
                  'Замораживает на 3 секунды. Время восстановления увеличено на 4 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_43.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Gatling Gun',
    'class': {
      'en': 'Blaster',
      'ru': 'Механист',
    },
    'description': {
      'en':
          'Fires the machine gun rapidly to the direction of your mouse cursor for 3 seconds, and deals up to 366 damage.',
      'ru':
          'Стреляет из пулемета в указанном направлении в течение 3 секунд, нанося 366 урона.'
    },
    'type': 'Normal',
    'cooldown': 16,
    'iconUrl': 'assets/icons/blaster/c07s02.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Improved Shot',
            'description': {
              'en': 'Increases damage by 10%.',
              'ru': 'Увеличивает урон на 10%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_0.webp',
          },
          {
            'name': 'Quick Response',
            'description': {
              'en': 'Decreases the skill cooldown by 3s.',
              'ru': 'Время восстановления умения уменьшено на 3 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.webp',
          },
          {
            'name': 'Final Blow',
            'description': {
              'en':
                  'Deals 30% more damage to enemies that have less than 50% health.',
              'ru': 'Урон увеличен на 30% по врагам со здоровьем ниже 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_32.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Growing Bullet',
            'description': {
              'en': 'Every 2 hit increases damage dealt by 5%.',
              'ru': 'Каждые 2 выстрела увеличивает урон на 5%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_58.webp',
          },
          {
            'name': 'Toughness',
            'description': {
              'en':
                  'The caster becomes Invulnerable to crowd control effects while performing the skill.',
              'ru':
                  'Невосприимчивость эффектам контроля во время использования.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_23.webp',
          },
          {
            'name': 'Thick Armor',
            'description': {
              'en': 'Takes 50% less damage while performing the skill.',
              'ru': 'Получаемый урон уменьшен на 50% во время использования.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_25.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Will of Destroyer',
            'description': {
              'en':
                  'The skill becomes a holding skill and the caster can shoot the machine gun for 4s.',
              'ru': 'Умение можно удерживать 4 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_42.webp',
          },
          {
            'name': 'Aim and Fire',
            'description': {
              'en':
                  'The skill has 50% decreased the area of effect but the skill range is increased by 50%. Also, it ignores the enemy’s armor by 60%.',
              'ru':
                  'Область действия умения уменьшена на 50%. Дальность действия увеличена на 50%. Игнорирует 60% защиты врагов.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_7.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Buckshot',
    'class': {
      'en': 'Blaster',
      'ru': 'Механист',
    },
    'description': {
      'en':
          'Buckshot spreads in a fan shape, deals 183 damage, pushing the enemy backwards.',
      'ru': 'Наносит 183 урона веером, отталкивая врагов.'
    },
    'type': 'Normal',
    'cooldown': 8,
    'iconUrl': 'assets/icons/blaster/c07s03.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Improved Penetration',
            'description': {
              'en': 'Increases the penetration level by 1.',
              'ru': 'Уровень пробивания увеличен на 1.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_21.webp',
          },
          {
            'name': 'Pushing Back',
            'description': {
              'en': 'Successful hits push the enemy back farther.',
              'ru': 'Отталкивает на большее расстояние.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_60.webp',
          },
          {
            'name': 'Spot Weakness',
            'description': {
              'en':
                  'Increases damage done any target with the Invulnerable status by 25%.',
              'ru':
                  'Урон увеличен на 25% по целям невосприимчивым к эффектам контроля.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_33.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Critical Strike',
            'description': {
              'en': 'Increases a critical hit chance by 30%.',
              'ru': 'Шанс критического удара увеличен на 30%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_4.webp',
          },
          {
            'name': 'Penetrated Will',
            'description': {
              'en': 'Successful hits ignore the enemy’s physical armor by 40%.',
              'ru': 'Игнорирует 40% защиты врагов.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_2.webp',
          },
          {
            'name': 'Long Ranged Buckshot',
            'description': {
              'en': 'Increases the skill range by 20%.',
              'ru': 'Дальность действия умения увеличено на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_7.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Elimination Buckshot',
            'description': {
              'en':
                  'The skill has 40% decreased the area of effect but shots buckshot twice with increased attack speed. The maximum damage is increased by 60%.',
              'ru':
                  'Совершает 2 выстрела. Область действия умения уменьшена на 40%. Урон увеличен на 60%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_40.webp',
          },
          {
            'name': 'Ignition',
            'description': {
              'en': 'Successful hits burn the enemy for 3s.',
              'ru': 'Поджигает на 3 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_13.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Howitzer',
    'class': {
      'en': 'Blaster',
      'ru': 'Механист',
    },
    'description': {
      'en':
          'Shoots a bullet to the target location, deals 237 damage and lifts the enemy.',
      'ru':
          'Запускает снаряд в указанное место, нанося 237 урона и подбрасывая врагов в воздух.'
    },
    'type': 'Point',
    'cooldown': 12,
    'iconUrl': 'assets/icons/blaster/c07s04.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Armor Destroyed',
            'description': {
              'en': 'Reduces all armor of enemy by 20% for 10s.',
              'ru': 'Уменьшает защиту врагов на 20% в течение 10 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_46.webp',
          },
          {
            'name': 'Quick Response',
            'description': {
              'en': 'Increases attack speed by 10%.',
              'ru': 'Скорость атаки увеличена на 10%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_6.webp',
          },
          {
            'name': 'Controlling Mana',
            'description': {
              'en': 'Grants a 50% chance to ignore mana consumption.',
              'ru': '50% вероятность не потратить ману.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_34.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Vulnerable Target',
            'description': {
              'en':
                  'Damage is increased by 30% when used against knocked down targets and targets in the air.',
              'ru':
                  'Урон увеличен на 30% по сбитым с ног врагам и врагам в воздухе.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_29.webp',
          },
          {
            'name': 'Final Blow',
            'description': {
              'en':
                  'Increases a 50% critical hit chance to enemies that have less than 50% health.',
              'ru':
                  'Шанс критического удара увеличен на 50% по целям со здоровьем ниже 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_32.webp',
          },
          {
            'name': 'Concentrated Shelling',
            'description': {
              'en':
                  'The enemy near center of the explosion takes 30% more damage.',
              'ru': 'Урон в центре взрыва увеличен на 30%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_0.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Flash Shell',
            'description': {
              'en':
                  'Increases the area of effect by 20% and damage dealt by 80%.',
              'ru': 'Область взрыва увеличена на 20% и урон на 80%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_53.webp',
          },
          {
            'name': 'Fireworks',
            'description': {
              'en': 'Bombards random places with increased damage.',
              'ru': 'Стреляет в случайное место с увеличенным уроном.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_8.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Multiple Rocket Luncher',
    'class': {
      'en': 'Blaster',
      'ru': 'Механист',
    },
    'description': {
      'en':
          'Shoots a missile to the random direction 5 times. The skill deals up to 342.',
      'ru': 'Стреляет 5 ракетам в случайном направлении, нанося 342 урона.'
    },
    'type': 'Normal',
    'cooldown': 24,
    'iconUrl': 'assets/icons/blaster/c07s05.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Fire Rocket',
            'description': {
              'en': '[Fire] Inflicts a burn for 5 seconds, cumulative 3 times.',
              'ru':
                  '[Огонь] Поджигает на 5 секунд, эффект суммируется до 3 раз.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_13.webp',
          },
          {
            'name': 'Ice Rocket',
            'description': {
              'en':
                  '[Ice] Reduces the movement speed of enemies by 20% for 5 seconds. Cumulative 3 times.',
              'ru':
                  '[Холод] Уменьшает скорость передвижения врагов на 20% в течение 5 секунд. Эффект суммируется до 3 раз.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_14.webp',
          },
          {
            'name': 'Giant Rocket',
            'description': {
              'en': 'Increases rocket size by 30%.',
              'ru': 'Размер ракет увеличена на 30%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_62.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Back Step',
            'description': {
              'en':
                  'You move back 0.8 meters at each shot, and the damage increases with the distance of enemies, with a maximum of 20%.',
              'ru':
                  'Каждый выстрел отбрасывает вас на 0.8 метра назад, урон увеличивается в зависимости от расстояния до врагов, но не более чем на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_40.webp',
          },
          {
            'name': 'Stun Effect',
            'description': {
              'en': 'The first shot stuns enemies for 5s.',
              'ru': 'Первая ракета оглушает на 5 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_30.webp',
          },
          {
            'name': 'Rapid Fire',
            'description': {
              'en': 'Launches the rockets 7 times with faster attack speed.',
              'ru': 'Запускает 7 ракет с увеличенной скоростью.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_54.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Lazer Gun',
            'description': {
              'en':
                  'Shoots a lazer, increases 40% damage. Backstep (Tier 2) damage increases by 10%. Giant Rocket (Tier 1) width increases by 40%.',
              'ru':
                  'Стреляет лазером, нанося 40% урона. Урон от Backstep (Tier 2) увеличен на 10%. Размер Giant Rocket (Tier 1) увеличен на 40%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_87.webp',
          },
          {
            'name': 'Access Denied',
            'description': {
              'en':
                  'You shoot 2 rockets at each shot, damage is increased by 60%.',
              'ru': 'Запускает 2 ракеты, урон увеличен на 60%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_8.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Napalm Bomb',
    'class': {
      'en': 'Blaster',
      'ru': 'Механист',
    },
    'description': {
      'en':
          'Explodes the napalm bomb which deals 240 damage and lifts the enemy to the air. The explosion creates burning field that remains for 5 seconds and deals 32 damage per second.',
      'ru':
          'Взрывает бомбу, нанося 240 урона и подкидывая врагов в воздух. Взрыв создает пылающую область на 5 секунд, наносящую 32 урона каждую секунду.'
    },
    'type': 'Normal',
    'cooldown': 18,
    'iconUrl': 'assets/icons/blaster/c07s06.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Improved Destruction',
            'description': {
              'en': 'Increases the destruction level on the explosion by 1.',
              'ru': 'Уровень разрушения увеличен на 1.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_22.webp',
          },
          {
            'name': 'Wide Explosion',
            'description': {
              'en': 'Increases the area of effect of the explosion by 20%.',
              'ru': 'Область взрыва увеличена на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_7.webp',
          },
          {
            'name': 'Focus Target',
            'description': {
              'en': 'An enemy hit by an explosion gets 20% more damage for 4s.',
              'ru': 'Урон от взрыва увеличен на 20% в течение 4 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_69.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Nut Cracker',
            'description': {
              'en': 'Increases a critical hit chance of the explosion by 50%.',
              'ru': 'Шанс критического удара от взрыва увеличен на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_4.webp',
          },
          {
            'name': 'Hot Open',
            'description': {
              'en':
                  'Damage done to enemies in the inflamed area is increased by 100%.',
              'ru': 'Урон от пылающей области увеличен на 100%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_45.webp',
          },
          {
            'name': 'Flash Explosion',
            'description': {
              'en':
                  'Stun enemies for 4 seconds without launching them into the air anymore.',
              'ru':
                  'Оглушает врагов на 4 секунды вместо подбрасывания в воздух.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_30.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Chain Explosion',
            'description': {
              'en':
                  'You quickly launch 2 bomb before moving back. The second bomb generates flame dust for 2 seconds inside the inflamed area. Then the area explodes, increasing the damage done.',
              'ru':
                  'Бросает вторую бомбу, создающую дополнительный взрыв через 2 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_8.webp',
          },
          {
            'name': 'Inferno',
            'description': {
              'en': 'The burning field remains for 3s longer.',
              'ru': 'Область огня держится на 3 секунды дольше.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_58.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Flamethrower',
    'class': {
      'en': 'Blaster',
      'ru': 'Механист',
    },
    'description': {
      'en':
          'Shoot the flamethrower to one direction and the caster can freely move. The flamethrower lasts for 4 seconds and deals up to 683 damage.',
      'ru':
          'Позволяет перемещаться, направляя перед собой пламя, наносящее 683 урона в течение 4 секунд.'
    },
    'type': 'Hold 4 sec',
    'cooldown': 20,
    'iconUrl': 'assets/icons/blaster/c07s07.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Nut Cracker',
            'description': {
              'en': 'Increases a critical hit chance by 20%.',
              'ru': 'Шанс критического удара увеличен на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_4.webp',
          },
          {
            'name': 'Quick Preparation',
            'description': {
              'en': 'Reduces the cooldown by 4s.',
              'ru': 'Время восстановления увеличено на 4 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.webp',
          },
          {
            'name': 'Controlling Firepower',
            'description': {
              'en': 'Successful hits gain 100% more energy.',
              'ru': 'Прирост энергии увеличен на 100%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_37.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Ignoring Collision',
            'description': {
              'en':
                  'The caster ignores collision with normal monsters while performing the skill.',
              'ru':
                  'Позволяет проходить сквозь обычных монстров во время использования.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_12.webp',
          },
          {
            'name': 'Long Ranged Flame',
            'description': {
              'en': 'Increases the skill range by 20%.',
              'ru': 'Область действия умения увеличена на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_7.webp',
          },
          {
            'name': 'Shield',
            'description': {
              'en': 'Creates a shield that absorbs up to 10% of your health.',
              'ru':
                  'Создает щит, поглощающий до 10% максимального запаса здоровья.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_75.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Blue Flame',
            'description': {
              'en':
                  'The skill is only held for 2 seconds and its damage increases by 30%.',
              'ru':
                  'Уменьшено время удержания умения на 2 секунды, урон увеличен на 30%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_5.webp',
          },
          {
            'name': 'Fire',
            'description': {
              'en':
                  'Increases the flamethrower\'s radius, and inflicts a burn on enemies for 10 seconds, cumulative 5 times.',
              'ru':
                  'Область действия умения увеличена, поджигает на 10 секунд. Эффект суммируется до 5 раз.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_45.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Brandish',
    'class': {
      'en': 'Blaster',
      'ru': 'Механист',
    },
    'description': {
      'en':
          'Brandish the launcher, deals 184 damage, and stunning the enemy for 2 seconds.',
      'ru': 'Наносит 184 урона взмахом оружия, оглушая на 2 секунды.'
    },
    'type': 'Normal',
    'cooldown': 24,
    'iconUrl': 'assets/icons/blaster/c07s08.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Empowered Will',
            'description': {
              'en': 'Reduces mana consumption by 50%.',
              'ru': 'Потребление маны уменьшено на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_34.webp',
          },
          {
            'name': 'Stable Post',
            'description': {
              'en': 'Immune to control effects while using the skill.',
              'ru':
                  'Невосприимчивость к эффектам контроля во время использования.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_23.webp',
          },
          {
            'name': 'Swift Attack',
            'description': {
              'en': 'Increases attack speed by 20%.',
              'ru': 'Скорость атаки увеличена на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_41.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Improved Strike',
            'description': {
              'en': 'Increases damage done by 100%.',
              'ru': 'Урон увеличен на 100%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_0.webp',
          },
          {
            'name': 'Maintaining Stun',
            'description': {
              'en': 'Increases the duration of stun effect by 2s.',
              'ru': 'Время оглушения увеличено на 2 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_44.webp',
          },
          {
            'name': 'Mana Regeneration',
            'description': {
              'en': 'Each inflicted enemy regenerate 25% mana up to 100%.',
              'ru':
                  'Восстановление маны увеличено на 25% за каждого врага, максимально до 100%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_79.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Rush',
            'description': {
              'en': 'Rushes 6m and attack the enemy.',
              'ru': 'Делает рывок на 6 метров вперед.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_10.webp',
          },
          {
            'name': 'Spin Attack',
            'description': {
              'en': 'Swing the launcher 360 degree.',
              'ru': 'Взмах на 360 градусов.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_40.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Air Strike',
    'class': {
      'en': 'Blaster',
      'ru': 'Механист',
    },
    'description': {
      'en':
          'Launches rockets to the air and the rockets fall random location near the target area. The rockets deals up to 531 damage and lifts the enemy.',
      'ru':
          'Выстреливает ракетами в воздух, которые приземляются случайным образом в указанное место, нанося 531 урона и подбрасывая врагов в воздух.'
    },
    'type': 'Point',
    'cooldown': 20,
    'iconUrl': 'assets/icons/blaster/c07s09.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Preparation for Firing',
            'description': {
              'en': 'Attack enemies in the air.',
              'ru': 'Наносит урон по врагам в воздухе.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_60.webp',
          },
          {
            'name': 'Quick Launch',
            'description': {
              'en': 'Increases attack speed by 30%.',
              'ru': 'Скорость атаки увеличена на 30%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_6.webp',
          },
          {
            'name': 'Concussion',
            'description': {
              'en': 'The neutralization phase increases by 1.',
              'ru': 'Ослабляющий эффект увеличен на 1.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_69.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Flame Strike',
            'description': {
              'en':
                  '[Fire] Successful hits burn the enemy for 5 seconds, stacks up to 3 times.',
              'ru':
                  '[Огонь] Поджигает на 5 секунд. Эффект суммируется до 3 раз.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_13.webp',
          },
          {
            'name': 'Ice Strike',
            'description': {
              'en':
                  '[Ice] Reduces the movement speed of enemies by 20% for 5 seconds, cumulative 3 times.',
              'ru':
                  '[Холод] Уменьшает скорость передвижения на 20% в течение 5 секунд. Эффект суммируется до 3 раз.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_14.webp',
          },
          {
            'name': 'Lightning Strike',
            'description': {
              'en': '[Lightning] Increases critical strike chance by 30%.',
              'ru': '[Молния] Увеличивает шанс критического удара на 30%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_17.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'No Mercy',
            'description': {
              'en':
                  'Launches the rocket 3 more times and damage done is increased by 20%.',
              'ru': 'Количество ракет увеличено до 3. Урона увеличен на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_54.webp',
          },
          {
            'name': 'Nuclear Bomb',
            'description': {
              'en':
                  'Drops powerful single shot. The range of damage and explosion is increased. 60% increase in damage to enemies that are immune to control effects. Maximize Tier 2 stacks.',
              'ru':
                  'Делает мощный выстрел с увеличенным уроном и областью поражения. Урон увеличен на 60% по целям невосприимчивым эффектам контроля. Улучшения Tier 2 максимизируются.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_53.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Jump and Fire',
    'class': {
      'en': 'Blaster',
      'ru': 'Механист',
    },
    'description': {
      'en':
          'Jumps up in the air and fires below the caster. It deals 233 damage and knocks the enemy down.',
      'ru': 'Подпрыгивает и стреляет, нанося 233 урона и сбивая с ног врагов.'
    },
    'type': 'Normal',
    'cooldown': 20,
    'iconUrl': 'assets/icons/blaster/c07s10.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Quick Jump',
            'description': {
              'en': 'Increases attack speed by 10%.',
              'ru': 'Скорость атаки увеличена на 10%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_6.webp',
          },
          {
            'name': 'Controlling Mana',
            'description': {
              'en': 'Grants a 50% chance to ignore mana consumption.',
              'ru': '50% вероятность не потратить ману.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_34.webp',
          },
          {
            'name': 'Cramp',
            'description': {
              'en': 'Increases the duration of knock down status by 0.5s.',
              'ru': 'Время опрокидывания увеличено на 0.5 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_9.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Extensive Explosion',
            'description': {
              'en': 'Increases the area of effect by 15%.',
              'ru': 'Область поражения от взрыва увеличена на 15%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_7.webp',
          },
          {
            'name': 'Improved Shelling',
            'description': {
              'en': 'Increases damage done by 25%.',
              'ru': 'Урон увеличен на 25%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_0.webp',
          },
          {
            'name': 'Identified Weakness',
            'description': {
              'en':
                  'Increases damage by 40% against enemies immune to control effects.',
              'ru':
                  'Увеличивает урон на 40% по врагам невосприимчивым к эффектам контроля.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_33.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Triple Fire',
            'description': {
              'en':
                  'Fires 3 times and damage done is increased by 100%. Last hit knocks the enemy down.',
              'ru':
                  'Стреляет 3 раза. Урон увеличен на 100%, сбивая с ног последним выстрелом.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_54.webp',
          },
          {
            'name': 'Rocket Jump',
            'description': {
              'en': 'Leap up to 10m to the target location.',
              'ru': 'Прыгает до 10 метров в указанном направлении.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_10.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Summon Turret',
    'class': {
      'en': 'Blaster',
      'ru': 'Механист',
    },
    'description': {
      'en': 'Summons an auto turret. The turret deals 108 damage.',
      'ru': 'Призывает турель с пулеметом, наносящую 108 урона.'
    },
    'type': 'Normal',
    'cooldown': 20,
    'iconUrl': 'assets/icons/blaster/c07s11.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Fast Recharge',
            'description': {
              'en': 'Reduces the turret cooldown timer by 3s.',
              'ru': 'Время восстановления уменьшено на 3 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.webp',
          },
          {
            'name': 'Extra Battery',
            'description': {
              'en': 'Increases the duration of the turret by 2s.',
              'ru': 'Время действия увеличено на 2 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_51.webp',
          },
          {
            'name': 'Armor Destroy',
            'description': {
              'en': 'Reduces all enemy armor by 20% for 6s.',
              'ru': 'Уменьшает защиту врагов на 20% в течение 6 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_46.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Improved Turret',
            'description': {
              'en': 'Increases damage done by 25%.',
              'ru': 'Урон увеличен на 25%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_0.webp',
          },
          {
            'name': 'Long Ranged Turret',
            'description': {
              'en': 'Increases the skill range by 30%.',
              'ru': 'Дальность умения увеличена на 30%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_52.webp',
          },
          {
            'name': 'Quick Install',
            'description': {
              'en':
                  'Immune to control effects during turret installation, turret installation speed increases by 20%.',
              'ru':
                  'Невосприимчивость к эффектам контроля во время использования, скорость подготовки умения увеличена на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_41.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Big Pack',
            'description': {
              'en': 'Increases the turret stack to 3.',
              'ru': 'Умение имеет 3 заряда.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_36.webp',
          },
          {
            'name': 'Laser Turret',
            'description': {
              'en':
                  'Turret shoots the laser and damage done is increased by 50%.',
              'ru': 'Турель стреляет лазером. Урон увеличен на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_18.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Plasma Storm',
    'class': {
      'en': 'Blaster',
      'ru': 'Механист',
    },
    'description': {
      'en':
          'Creates the plasma storm that slowly follows the enemy. The storm deals 43 damage per 0.5 seconds.',
      'ru':
          'Создает сферу плазмы, следующую за врагом, нанося 43 урона каждые 0.5 секунды.'
    },
    'type': 'Normal',
    'cooldown': 24,
    'iconUrl': 'assets/icons/blaster/c07s12.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Rage',
            'description': {
              'en': 'Your attack power increases by 20% for 3s after casting.',
              'ru': 'Сила атаки увеличена на 20% в течение 3 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_50.webp',
          },
          {
            'name': 'Solid Armor',
            'description': {
              'en': 'Reduces damage taken by 40% during launch.',
              'ru': 'Получаемый урон уменьшен на 40% во время использования.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_25.webp',
          },
          {
            'name': 'Stun',
            'description': {
              'en': 'Stuns the enemy for 2s after 10 successful hits .',
              'ru': 'Оглушает врагов на 2 секунды после 10 попаданий.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_44.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Fast Travel',
            'description': {
              'en': 'Increases the speed of the plasma storm by 20%.',
              'ru': 'Скорость движения сферы увеличена на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_11.webp',
          },
          {
            'name': 'Improved Continuity',
            'description': {
              'en': 'Increases the skill duration by 2s.',
              'ru': 'Длительность умения увеличена на 2 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_51.webp',
          },
          {
            'name': 'Massive Plasma',
            'description': {
              'en': 'Increases the area of effect by 20%.',
              'ru': 'Область действия увеличена на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_7.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Growing Plasma',
            'description': {
              'en': 'The enemy takes 10% more damage every 0.5s.',
              'ru': 'Наносит на 10% больше урона каждые 0.5 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_58.webp',
          },
          {
            'name': 'Ice Storm',
            'description': {
              'en': '[Ice] Reduces the enemy’s movement speed by 70%.',
              'ru': '[Холод] Уменьшает скорость передвижения врагов на 70%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_14.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Gravity Explosion',
    'class': {
      'en': 'Blaster',
      'ru': 'Механист',
    },
    'description': {
      'en':
          'Creates the gravity field that pulls the enemy and deals 102 damage. Then explosion knocks the enemy backwards dealing 514 damage.',
      'ru':
          'Создает гравитационное поле, которое притягивает врагов, нанося 102 урона. Затем взрывается, отбрасывая и нанося 514 урона.'
    },
    'type': 'Hold',
    'cooldown': 36,
    'iconUrl': 'assets/icons/blaster/c07s13.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Free Launch',
            'description': {
              'en': 'The area of ​​success hold is enlarged.',
              'ru': 'Идеальная зона удержания увеличена.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_72.webp',
          },
          {
            'name': 'Mass Attack',
            'description': {
              'en':
                  'Increases damage to 1 enemy by 5%, to 6 enemies by 10%, to 11 by 20%, to 16 by 30%.',
              'ru':
                  'Увеличивает урон на 1 врагу на 5%, по 6 врагам на 10%, по 11 на 20%, по 16 на 30%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_0.webp',
          },
          {
            'name': 'Stun Effect',
            'description': {
              'en':
                  'The enemies are no longer pushes but stun for 4 seconds during the explosion. Increases the level of the Incapacitate effect by 1.',
              'ru':
                  'Враги при взрыве не отбрасываются, а получают оглушение на 4 секунды. Ослабляющий эффект увеличен на 1.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_30.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Solid Armor',
            'description': {
              'en':
                  'Creates a shield that absorbs 15% of your maximum health during launch.',
              'ru':
                  'Создает щит, поглощающий урон равный 15% максимального запаса здоровья.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_75.webp',
          },
          {
            'name': 'Stabilization',
            'description': {
              'en': 'You can turn slowly during casting.',
              'ru': 'Позволяет поворачиваться при использовании.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_27.webp',
          },
          {
            'name': 'Swift Movement',
            'description': {
              'en': 'Pulls the enemy 20% faster.',
              'ru': 'Притягивает врагов на 20% быстрее.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_41.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Sweep',
            'description': {
              'en':
                  'The gravity field now extends over a 14-meter radius. Increases hold time by 2s.',
              'ru':
                  'Радиус действия поля увеличен до 14 метров. Время удержания умения увеличено на 2 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_81.webp',
          },
          {
            'name': 'Planetary Gravity',
            'description': {
              'en':
                  'The range of pull increases by 50% but decreases slowly. Explosion deals 50% more damage.',
              'ru':
                  'Дальность притягивания увеличена на 50% и постепенно уменьшается. Урон от взрыва увеличен на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_71.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Blast',
    'class': {
      'en': 'Blaster',
      'ru': 'Механист',
    },
    'description': {
      'en': 'Blasts the enemy and deals 155 damage.',
      'ru': 'Наносит 155 урона выстрелом.'
    },
    'type': 'Normal',
    'cooldown': 8,
    'iconUrl': 'assets/icons/blaster/c07s14.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Changing Coordinate',
            'description': {
              'en': 'Attack location changes to 2m front of the caster.',
              'ru': 'Дальность выстрела увеличена на 2 метра.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_53.webp',
          },
          {
            'name': 'Controlling Firepower',
            'description': {
              'en': 'Successful hits gain 100% more energy.',
              'ru': 'Прирост энергии увеличен на 100%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_37.webp',
          },
          {
            'name': 'Increases Area',
            'description': {
              'en': 'Increases the area of effect by 10%.',
              'ru': 'Радиус действия умения увеличен на 10%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_7.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Quick Response',
            'description': {
              'en': 'Decreases the skill cooldown by 3s.',
              'ru': 'Время восстановления уменьшено на 3 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_56.webp',
          },
          {
            'name': 'Improved Shelling',
            'description': {
              'en': 'Increases damage done by 30%.',
              'ru': 'Урон увеличен на 30%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_0.webp',
          },
          {
            'name': 'Sharp Strike',
            'description': {
              'en': 'Increases critical damage by 100%.',
              'ru': 'Критический урон увеличен на 100%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_4.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Dancing Boom',
            'description': {
              'en':
                  'The explosion causes another two small explosions increased damage by 100%.',
              'ru': 'Наносит два дополнительных взрыва увеличивая урон на 100%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_54.webp',
          },
          {
            'name': 'Concentrate Fire',
            'description': {
              'en':
                  'The skill changes to the charging skill. Successful charging increases damage dealt by 80%.',
              'ru':
                  'Становится удерживаемым умением. При полном удержании увеличивает урон на 80%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_40.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Missile Strike',
    'class': {
      'en': 'Blaster',
      'ru': 'Механист',
    },
    'description': {
      'en':
          'Installs a guiding device to the target location. After 5 seconds, the missile hits the device and deals 727 damage and lifts the enemy to the air.',
      'ru':
          'Запускает ракету в указанную область с задержкой в 5 секунд, нанося 727 урона и подбрасывая врагов в воздух.'
    },
    'type': 'Normal',
    'cooldown': 20,
    'iconUrl': 'assets/icons/blaster/c07s15.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Long Ranged Installment',
            'description': {
              'en': 'The skill range is increased by 2m.',
              'ru': 'Дальность использования увеличена на 2 метра.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_52.webp',
          },
          {
            'name': 'Improved Guiding Missile',
            'description': {
              'en': 'The missile strikes the target location in 4s.',
              'ru': 'Задержка сокращена до 4 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_41.webp',
          },
          {
            'name': 'Slow Effect',
            'description': {
              'en':
                  'The guiding device reduces the enemy’s movement speed by 30%.',
              'ru': 'Скорость передвижения врагов уменьшена на 30%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_47.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Nut Cracker',
            'description': {
              'en': 'Increases a critical hit chance by 30%.',
              'ru': 'Шанс критического удара увеличен на 30%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_4.webp',
          },
          {
            'name': 'Natural Selection',
            'description': {
              'en': 'Increases the damage dealt to normal monsters by 40%.',
              'ru': 'Урон увеличен на 40% по обычным монстрам.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_61.webp',
          },
          {
            'name': 'Spot Weakness',
            'description': {
              'en':
                  'Increases damage done any target with the Invulnerable status by 40%.',
              'ru':
                  'Урон увеличен на 40% по целям невосприимчивым к эффектам контроля.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_33.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'EMP',
            'description': {
              'en':
                  'Do not throw enemies into the air but stuns them for 5 seconds. Increases the incapacitate level by 1.',
              'ru':
                  'Не подбрасывает врагов, но оглушает на 5 секунд. Ослабляющий эффект увеличен на 1.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_44.webp',
          },
          {
            'name': 'Atomic Bomb',
            'description': {
              'en': 'The missile creates a radiation field that lasts for 6s.',
              'ru': 'Создает радиоктивную область на 6 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_53.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Energy Field',
    'class': {
      'en': 'Blaster',
      'ru': 'Механист',
    },
    'description': {
      'en':
          'Creates a shield that absorbs 15% damage of maximum health each second for 4 seconds.',
      'ru':
          'Создает щит, поглощающий 15% урона от максимального запаса здоровья каждую секунду в течение 4 секунд.'
    },
    'type': 'Normal',
    'cooldown': 40,
    'iconUrl': 'assets/icons/blaster/c07s16.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Concentrate Fire',
            'description': {
              'en':
                  'The energy is increased by 50% when the caster has less than 30% health.',
              'ru':
                  'Количество энергии увеличивается на 50% при здоровье ниже 30%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_37.webp',
          },
          {
            'name': 'Energy Unleashed',
            'description': {
              'en': 'The caster unleashes energy when the skill is activated.',
              'ru': 'Наносит урон ближайшим врагам при активации.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_1.webp',
          },
          {
            'name': 'Improved Will',
            'description': {
              'en': 'No longer requires mana to activate the skill.',
              'ru': 'Не тратит ману при использовании.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_34.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Improved Shield',
            'description': {
              'en': '100% effect of the shield.',
              'ru': 'Увеличивает эффект от щита на 100%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_75.webp',
          },
          {
            'name': 'Overflow Energy',
            'description': {
              'en': 'Increases the duration of the skill for 4s.',
              'ru': 'Длительность щита увеличена на 4 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_51.webp',
          },
          {
            'name': 'Quick Response',
            'description': {
              'en': 'Cooldown reduced by 8s.',
              'ru': 'Время восстановления уменьшено на 8 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_56.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Thick Shield',
            'description': {
              'en':
                  'The caster becomes Invulnerable to crowd control effects while the shield is up.',
              'ru':
                  'Невосприимчивость эффектам контроля во время действия щита.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_25.webp',
          },
          {
            'name': 'Sharing Energy',
            'description': {
              'en':
                  'Shields are applied to nearby party members within 24m, but the shield level is reduced by half.',
              'ru':
                  'Щит получают участники группы в радиусе 24 метров, эффект от щита уменьшен на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_65.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Rapid Shot',
    'class': {
      'en': 'Hawk Eye',
      'ru': 'Рейнджер',
    },
    'description': {
      'en': 'After aiming, you shoot 3 arrows dealing 26-26-79 damage.',
      'ru': 'Выпускает 3 стрелы, нанося 26-26-79 урона соответственно.'
    },
    'type': 'Normal',
    'cooldown': 5,
    'iconUrl': 'assets/icons/hawkeye/c08s00.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Damage Boost',
            'description': {
              'en':
                  'Damage to target by party members increases by 10% for 8s.',
              'ru':
                  'Урон по цели участниками группы увеличен на 10% на 8 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_2.webp',
          },
          {
            'name': 'Horsepower Control',
            'description': {
              'en': 'Mana consumption is reduced by 50%.',
              'ru': 'Потребление маны уменьшено на 50%'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_34.webp',
          },
          {
            'name': 'Tracking Fire',
            'description': {
              'en':
                  'It automatically turns and fires to the nearest enemy within 90 degrees ahead.',
              'ru':
                  'Автоматически выстреливает в ближайшего противника в радиусе 90° перед собой'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_84.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Double Shot',
            'description': {
              'en': 'Damage done increased by 25%.',
              'ru': 'Урон увеличен на 25%'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_54.webp',
          },
          {
            'name': 'Shock Shot',
            'description': {
              'en': '[Lighting] Applies Shock for 3s.',
              'ru':
                  '[Молния] Цель поражает разряд тока, нанося урон каждую секунду в течении 3 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_17.webp',
          },
          {
            'name': 'Light Footsteps',
            'description': {
              'en': 'Increases movement speed by 30% for 3s.',
              'ru':
                  'Скорость передвижения после использования способности увеличена на 30% на 3 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_11.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Power shot',
            'description': {
              'en':
                  'The last strike is changed to a powerful attack, which increases the critical hit rate by 100% and the width by 20%.',
              'ru':
                  'Заменяет последний выстрел на мощную атаку, увеличивающий шанс критического удара на 100%, ширину на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_4.webp',
          },
          {
            'name': 'Sustained Fire',
            'description': {
              'en': 'The number of arrow shoots increases from 3 to 5.',
              'ru': 'Количество стрел увеличено с 3 до 5.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_8.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Atomic Arrow',
    'class': {
      'en': 'Hawk Eye',
      'ru': 'Рейнджер',
    },
    'description': {
      'en':
          'After aiming, you shoot an arrow that deals 21 damage. It explodes 2 seconds later, inflicting 161 damage and knocking down enemies.',
      'ru':
          'После прицеливания выпускает стрелу, нанося 21 урона, которая взрывается через 2 секунды, нанося 161 урона и сбивая с ног врага'
    },
    'type': 'Normal',
    'cooldown': 9,
    'iconUrl': 'assets/icons/hawkeye/c08s01.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Horsepower Control',
            'description': {
              'en': 'Mana consumption is reduced by 50%.',
              'ru': 'Потребление маны сокращено на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_34.webp',
          },
          {
            'name': 'Quick Hand',
            'description': {
              'en': 'Increases attack speed by 15%.',
              'ru': 'Скорость атаки увеличена на 15%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_6.webp',
          },
          {
            'name': 'Damage Boost',
            'description': {
              'en':
                  'The damage a target receives by party member during a blast attack increases by 10% for 8s.',
              'ru':
                  'Урон, который получает цель от участников группы во время взрывной атаки, увеличивается на 10% в течение 8 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_2.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Heavy Bomb',
            'description': {
              'en': 'Decrease enemy’s movement speed for 50% before explosion.',
              'ru': 'Уменьшает скорость передвижения на 50% до взрыва'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_47.webp',
          },
          {
            'name': 'Flame Gunpowder',
            'description': {
              'en': 'We burn for 6 seconds to the enemy hit by the explosion.',
              'ru': 'Поджигает на 6 секунд врагов пораженных взрывом.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_13.webp',
          },
          {
            'name': 'Arrowhead Enhancement',
            'description': {
              'en':
                  'Increases the chance of a critical hit by 30%. Increases the duration of Light Arrow (Tier 3) by 50%.',
              'ru':
                  'Шанс критического удара увеличен на 30%. Длительность электрического шока от Light Arrow (Tier 3) увеличена на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_4.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Light Arrow',
            'description': {
              'en':
                  'It does not knocks down anymore, but arrow speed is increased by 50%, the explosion time is shortened from 2 seconds to 1, and the explosion creates an electric shock for 2 seconds.',
              'ru':
                  'Скорость полета стрелы увеличена на 50%. Время до детонации уменьшено на 1 секунду. Взрыв больше не опрокидывает, поражает током на 2 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_17.webp',
          },
          {
            'name': 'Long Fuse',
            'description': {
              'en':
                  'The explosion time increases from 3 seconds to 5 seconds. Damage to enemies increases by 75%.',
              'ru': 'Взрыв происходит через 5 секунд. Урон увеличен на 75%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_78.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Whirlwind Arrow',
    'class': {
      'en': 'Hawk Eye',
      'ru': 'Рейнджер',
    },
    'description': {
      'en':
          'You shoot a swirling arrow that periodically deals 33 damage along the way.',
      'ru':
          'Выпускает закрученную стрелу, наносящую периодически 33 урона во время полета.'
    },
    'type': 'Normal',
    'cooldown': 6,
    'iconUrl': 'assets/icons/hawkeye/c08s02.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Reinforced Arrow',
            'description': {
              'en': 'Increases the damage done by the arrows by 15%.',
              'ru': 'Урон умения увеличен на 15%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_0.webp',
          },
          {
            'name': 'Blizzard',
            'description': {
              'en':
                  '[Ice] Slows the movement speed by 20% for 5 seconds to the affected enemy. Freeze the enemy when the frost condition is inflicted 3 times.',
              'ru':
                  '[Холод] Уменьшают скорость передвижения на 20% на 5 сек. Суммируется до 3 раз, потом цель замораживается.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_14.webp',
          },
          {
            'name': 'Hellfire',
            'description': {
              'en':
                  '[Fire] Damages enemies for 5 seconds every second. When the flame condition is inflicted 3 times, the target detonates.',
              'ru':
                  '[Огонь] Накладывает на цель ожоги, наносящие урон каждую секунду в течении 5 секунд. При получении 3 ожогов происходит взрыв.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_13.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Slow Bullet',
            'description': {
              'en':
                  'The speed of the whirlwind decreases, hitting the enemy more.',
              'ru':
                  'Скорость полета стрелы уменьшена, что позволяет нанести больше ударов.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_51.webp',
          },
          {
            'name': 'Quick Launch',
            'description': {
              'en':
                  'Gather the wind power to increase the attack rate by 20%, flips back 2m and fires.',
              'ru':
                  'Собирает силу ветра, увеличивая скорость атаки на 20% и отскакивая на 2 метра назад.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_6.webp',
          },
          {
            'name': 'Giant Whirlwind',
            'description': {
              'en': 'The width of the whirlwind increases by 20%.',
              'ru': 'Увеличивает ширину области действия на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_7.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Tidal Wave',
            'description': {
              'en':
                  'Deals 3 shots. The third firing attack enemies within range, and increasing damage done to enemies by 30%. If you apply a Slow Bullet (Tier 2), your damage to the enemy increases by 30%.',
              'ru':
                  'Производит 3 быстрых выстрела. Третий выстрел превратится в торнадо, атакуя врагов на пути, увеличивая урон на 30%. При улучшении Slow Bullet (Tier 2) урон по врагам увеличен на 30%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_87.webp',
          },
          {
            'name': 'Multi Tidal',
            'description': {
              'en':
                  'After a certain period of time, the whirlwind will separate and fire up to four whirlwinds.',
              'ru':
                  'Спустя какое-то время, стрела делится на 2, после чего каждая делится еще на 2.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_8.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Sharp Shooter',
    'class': {
      'en': 'Hawk Eye',
      'ru': 'Рейнджер',
    },
    'description': {
      'en':
          'You\'re bending your bow to shoot 10 arrows at once that deal 137 damage each. Each enemy can only receive 3 arrows maximum.',
      'ru':
          'Сгибает лук для выстрела залпом из 10 стрел одновременно по 137 урона. Каждый враг может получить не более 3 стрел.'
    },
    'type': 'Normal',
    'cooldown': 20,
    'iconUrl': 'assets/icons/hawkeye/c08s03.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Quick Hit',
            'description': {
              'en': 'Increases critical hit rate by 15%.',
              'ru': 'Шанс критического удара увеличен на 15%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_4.webp',
          },
          {
            'name': 'Damage Boost',
            'description': {
              'en':
                  'Attack damage increases by 10% for 16 seconds by party members.',
              'ru': 'Урон группы увеличен на 10% на 16 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_2.webp',
          },
          {
            'name': 'Mind Enhancement',
            'description': {
              'en': 'Decrease MP usage by 50%.',
              'ru': 'Уменьшает стоимость маны на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_34.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Merciless Fire',
            'description': {
              'en': 'Increases the number of arrows from 10 to 15.',
              'ru': 'Увеличивает общее количество стрел с 10 до 15.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_54.webp',
          },
          {
            'name': 'Painful Shooting',
            'description': {
              'en': 'Inflicts bleeding, damage every second for 5s.',
              'ru':
                  'Накладывает эффект кровотечения, нанося урон каждую секунду в течение 5 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_45.webp',
          },
          {
            'name': 'Weak Point',
            'description': {
              'en':
                  'Increase the damage by 40% toward an enemy immune to control effects.',
              'ru':
                  'Увеличивает урон на 40% по монстрам, невосприимчивым у эффектам контроля.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_33.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Concentrated Shot',
            'description': {
              'en':
                  'Up to 5 arrows stuck to the same target. Critical damage is increased by 50%.',
              'ru':
                  'Увеличивает максимальное число стрел на одной цели до 5. Критический урон увеличен на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_8.webp',
          },
          {
            'name': 'Definite Fire',
            'description': {
              'en':
                  'Two arrows hit to all enemies within range. If Merciless Fire (Tier 2) is learned, all enemies in range are hit by 3 arrows.',
              'ru':
                  'Все враги в области поражения получают по 2 стрелы. Если выбрано улучшение Merciless Fire (Tier 2), враги получают по 3 стрелы.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_58.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Slash Step',
    'class': {
      'en': 'Hawk Eye',
      'ru': 'Рейнджер',
    },
    'description': {
      'en': 'Moves forward 8m and inflicts 98 damage.',
      'ru': 'Делает рывок на 8 метров и наносит 98 урона.'
    },
    'type': 'Normal',
    'cooldown': 10,
    'iconUrl': 'assets/icons/hawkeye/c08s04.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Quick Preparation',
            'description': {
              'en': 'Cooldown reduced by 3s.',
              'ru': 'Время перезарядки способности уменьшено на 3 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.webp',
          },
          {
            'name': 'Ghost Steps',
            'description': {
              'en':
                  'Ignore collision with normal monsters while using the skill.',
              'ru':
                  'Позволяет проходить сквозь обычных монстров во время применения умения.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_12.webp',
          },
          {
            'name': 'Excellent Maneuver',
            'description': {
              'en': 'Increase skill’s travel distance by 2m.',
              'ru': 'Увеличивает дальность рывка на 2 метра.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_10.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Push',
            'description': {
              'en': 'Increases the attack range by 10% and pushes enemies.',
              'ru': 'Увеличивает дальности атаки на 10% и отталкивает врагов.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_60.webp',
          },
          {
            'name': 'Silver Master',
            'description': {
              'en': 'When the skill is hit, the energy is restored to 35.',
              'ru': 'При нанесении урона восстанавливает 35 единиц энергии.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_36.webp',
          },
          {
            'name': 'Mark Of Death',
            'description': {
              'en':
                  'Inflicts Mark of death to an enemy for 5s. Сan be applied up to 3 times. Increasing the damage received by the enemy from 5% to 20% depending on the number of effects.',
              'ru':
                  'Наносит Метку смерти на врага на 5 секунд. Метка может быть нанесена до 3 раз. Увеличивает получаемый врагом урон от персонажа от 5% до 20% в зависимости от количества меток.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_76.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Survival',
            'description': {
              'en':
                  'Become immune to control effects. Increases evasion rate by 50% while casting the skill.',
              'ru':
                  'Невосприимчивость к эффектам контроля. Увеличивает шанс уворота на 50% во время применения способности'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_26.webp',
          },
          {
            'name': 'Strengthening',
            'description': {
              'en':
                  'Increases damage by 100% and applies bleed, dealing damage every second for 3s.',
              'ru':
                  'Увеличивает урон на 100% и накладывает эффект кровотечения на цель на 3 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_0.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Persistent Tracking',
    'class': {
      'en': 'Hawk Eye',
      'ru': 'Рейнджер',
    },
    'description': {
      'en':
          'You jump 8m forward, inflict 115 damage on the enemies below and knock them over.',
      'ru':
          'Персонаж прыгает на 8 метров вперед, нанося 115 урона и сбивая с ног врага.'
    },
    'type': 'Normal',
    'cooldown': 14,
    'iconUrl': 'assets/icons/hawkeye/c08s05.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Quick Hand',
            'description': {
              'en': 'Increases attack speed by 15%.',
              'ru': 'Скорость атаки увеличена на 15%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_6.webp',
          },
          {
            'name': 'Quick Preparation',
            'description': {
              'en': 'Cooldown reduced by 2s.',
              'ru': 'Время перезарядки уменьшено на 2 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.webp',
          },
          {
            'name': 'Excellent Maneuver',
            'description': {
              'en': 'Increase skill’s travel distance by 3m.',
              'ru': 'Увеличивает дальность прыжка на 3 метра.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_10.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Light Footsteps',
            'description': {
              'en': 'Increases movement speed by 30% for 3s.',
              'ru': 'Увеличивает скорость перемещения на 30% на 3 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_11.webp',
          },
          {
            'name': 'Evasion Master',
            'description': {
              'en': 'Increases evasion rate by 35% during cast.',
              'ru':
                  'Увеличивает шанс уворота на 35% во время использования способности.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_26.webp',
          },
          {
            'name': 'Weak Point',
            'description': {
              'en':
                  'Increase the damage by 80% toward an enemy immune to control effects.',
              'ru':
                  'Увеличивает урон на 80% по врагам невосприимчивым к эффектам контроля.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_33.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Neat Herb',
            'description': {
              'en':
                  'Increases knockdown time by 50% and increases damage by 100%.',
              'ru':
                  'Увеличивает время опрокидывания на 50% и увеличивает урон на 100%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_77.webp',
          },
          {
            'name': 'Finishing Blow',
            'description': {
              'en':
                  'After landing, attack a second time. The point of neutralization increases by 100%.',
              'ru':
                  'После приземления наносит ещё один удар. Время ослабевающего эффекта увеличено на 100%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_17.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Claymore',
    'class': {
      'en': 'Hawk Eye',
      'ru': 'Рейнджер',
    },
    'description': {
      'en':
          'You place a mine in front of you that activates to inflict 213 damage in front of it, and pushes enemy.',
      'ru':
          'Ставит перед собой мину, которая взрывается нанося 213 урона и отталкивая врагов.'
    },
    'type': 'Normal',
    'cooldown': 16,
    'iconUrl': 'assets/icons/hawkeye/c08s06.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Quick Hand',
            'description': {
              'en': 'Increases attack speed by 15%.',
              'ru': 'Скорость атаки увеличена на 15%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_6.webp',
          },
          {
            'name': 'Weapon Destruction',
            'description': {
              'en': 'Decreases the attack strength of an enemy by 20% for 4s.',
              'ru': 'Уменьшает силу атаки цели на 20% в течение 4 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_46.webp',
          },
          {
            'name': 'Push',
            'description': {
              'en': 'Increases the push distance by 25%.',
              'ru': 'Увеличивает дистанцию отталкивания на 25%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_9.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Strength',
            'description': {
              'en': 'Become immune to control effects during skill casting.',
              'ru':
                  'Дает защиту от умений контроля во время применения способности.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_23.webp',
          },
          {
            'name': 'Thunderstorm',
            'description': {
              'en':
                  '[Lighting] Increases the chance of critical hits by 15%, making it in a state of electric shock for 3 seconds. Enemies are no longer pushes.',
              'ru':
                  '[Молния] Шанс критического урона увеличен на 15%, враги получают шок на 3 секунды без эффекта отталкивания.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_4.webp',
          },
          {
            'name': 'Lightning',
            'description': {
              'en':
                  '[Fire] Increases damage by 30% and burns the enemy, inflicting damage every second for 3 seconds. But increases the mana cost by 30%.',
              'ru':
                  '[Огонь] Увеличивает урон на 30% и воспламеняет врагов на 3 секунды. Требует на 30% больше маны.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_13.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Storm Surge',
            'description': {
              'en':
                  'The direction of the explosion changes to a sector. Increased skill cooldown by 4s.',
              'ru':
                  'Направление взрыва заменяется на сектор перед собой. Время восстановления увеличено на 4 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_7.webp',
          },
          {
            'name': 'Concentrated Storm',
            'description': {
              'en':
                  'Decreases the range by 30%, but explodes 3 times with 0.5s intervals. Damage to enemies increases by 80%.',
              'ru':
                  'Уменьшает дистанцию на 30%, но взрыв происходит 3 раза с интервалом 0.5 сек. Урон увеличен на 80%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_8.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Charged Shot',
    'class': {
      'en': 'Hawk Eye',
      'ru': 'Рейнджер',
    },
    'description': {
      'en':
          'Charges a shot dealing 155 damage, can be charged up to deal 207 damage, full-charged shot inflicts 517 damage and knocks down.',
      'ru':
          'Наносит 155 урона выстрелом. При заряде умения наносит 207 урона, при полном заряде 517 урона и сбивает с ног при полном заряде.'
    },
    'type': 'Charge',
    'cooldown': 24,
    'iconUrl': 'assets/icons/hawkeye/c08s07.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Quick Aim',
            'description': {
              'en': 'Increases the redirection speed during charge by 30%.',
              'ru': 'Увеличивает скорость прицеливания во время зарядки на 30%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_27.webp',
          },
          {
            'name': 'Сamouflage',
            'description': {
              'en': 'You become invisible. Cooldown increased by 9s.',
              'ru':
                  'Во время заряда становишься невидимым, однако время восстановления увеличено на 9 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_0.webp',
          },
          {
            'name': 'Quick Preparation',
            'description': {
              'en': 'Cooldown reduced by 4s.',
              'ru': 'Время восстановления уменьшено на 4 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Double shot',
            'description': {
              'en':
                  'Shots 2 arrows at the same time, causing 50% more damage to the enemy.',
              'ru':
                  'Выстреливает 2 стрелы одновременно, увеличивая урон на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_54.webp',
          },
          {
            'name': 'Overpain',
            'description': {
              'en':
                  'Immediately upon reaching Over Charge, inflict additional damage to all enemies around and knock them over.',
              'ru':
                  'При достижении максимального уровня заряда, опрокидывает и наносит дополнительный урон всем врагам рядом с персонажем.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_53.webp',
          },
          {
            'name': 'Quick Hand',
            'description': {
              'en': 'Charge time is reduced by 50%.',
              'ru': 'Время заряда уменьшено на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_41.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Instant Arrow',
            'description': {
              'en':
                  'The higher the charge phase, the more the range is increased. Explosion occurs when the target point is reached. No longer increase damage by the charging.',
              'ru':
                  'Вместо увеличения урона при заряде увеличивает дальность умения и создает взрыв при попадании.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_87.webp',
          },
          {
            'name': 'Concentration',
            'description': {
              'en':
                  'The charge phase is added once, and when overcharged critical hit occurs.',
              'ru':
                  'Добавляется одна уровень заряда умения, при полном заряде наносит критический урон.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_49.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Quick Fire',
    'class': {
      'en': 'Hawk Eye',
      'ru': 'Рейнджер',
    },
    'description': {
      'en': 'Shoot several arrows simultaneously, which inflict 97 damage.',
      'ru':
          'Выстреливает несколько стрел перед собой в форме веера нанося 97 урона.'
    },
    'type': 'Normal',
    'cooldown': 6,
    'iconUrl': 'assets/icons/hawkeye/c08s08.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Heavy Steel',
            'description': {
              'en': 'Increases the damage inflicted on normal enemies by 20%.',
              'ru': 'Увеличен урон по обычным врагам на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_61.webp',
          },
          {
            'name': 'Mind Enhancement',
            'description': {
              'en': 'Decrease MP consumption by 50%.',
              'ru': 'Уменьшено потребление маны на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_34.webp',
          },
          {
            'name': 'Lightfoot',
            'description': {
              'en': 'Increases movement speed by 20% for 3s.',
              'ru': 'Повышает скорость передвижения на 20% на 3 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_11.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Achievement Of Training',
            'description': {
              'en': 'Increase attack distance by 30%.',
              'ru': 'Увеличивает дальность атаки на 30%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_7.webp',
          },
          {
            'name': 'Cold Arrow',
            'description': {
              'en':
                  '[Ice] Increases damage by 15% and reduces enemy movement speed by 50% for 3s.',
              'ru':
                  '[Холод] Повышает урон на 15% и снижает скорость перемещения противника на 50% на 3 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_14.webp',
          },
          {
            'name': 'Shock Fire',
            'description': {
              'en': 'Stuns the target for 3 seconds if a hit is critical.',
              'ru':
                  'Оглушает цель на 3 секунды, если выстрел наносит критический урон.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_30.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Covert Movement',
            'description': {
              'en':
                  'After using the skill, you become invisible but the cooldown increases by 3s.',
              'ru':
                  'Дает эффект невидимости на 3 секунды, но увеличивает восстановление способности на 3 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_74.webp',
          },
          {
            'name': 'Close Shot',
            'description': {
              'en':
                  'The attack angle is reduced by 30% and increases damage by 100%.',
              'ru': 'Снижает угол атаки на 30%, но повышает урон на 100%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_0.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'DM-42',
    'class': {
      'en': 'Hawk Eye',
      'ru': 'Рейнджер',
    },
    'description': {
      'en':
          'You place a mine that explodes after 12 seconds, or if an enemy triggers it. Inflicts 513 damage and knocks down enemies.',
      'ru':
          'Устанавливает мину, которая взорвется через 12 секунд или если враг наступит на неё. Наносит 513 урона и сбивает с ног врагов.'
    },
    'type': 'Chain',
    'cooldown': 24,
    'iconUrl': 'assets/icons/hawkeye/c08s09.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Mind Enhancement',
            'description': {
              'en': 'Decrease MP consumption by 50%.',
              'ru': 'Уменьшает расход маны на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_34.webp',
          },
          {
            'name': 'Heavy Steel',
            'description': {
              'en':
                  'Increases the damage dealt to normal monsters and below by 20%.',
              'ru': 'Урон по обычным монстрам и ниже увеличен на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_61.webp',
          },
          {
            'name': 'Strengthen Destruction',
            'description': {
              'en': 'Increases the destruction level by 1.',
              'ru': 'Увеличивает показатель Разрушения на 1.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_22.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Remote Installation',
            'description': {
              'en': 'Increases the deployment distance by 4 meters.',
              'ru': 'Увеличивает дальность установки мины на 4 метра.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_52.webp',
          },
          {
            'name': 'Shock Mines',
            'description': {
              'en':
                  'Do not knockdown the enemy anymore, but stuns them for 4s.',
              'ru': 'Вместо опрокидывания, оглушает врагов на 4 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_30.webp',
          },
          {
            'name': 'Explosion Spread',
            'description': {
              'en': 'Increase explosion range by 30%.',
              'ru': 'Увеличивает радиус взрыва на 30%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_7.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Fire Mines',
            'description': {
              'en':
                  'Reduces the damage of the explosion by 20% but creates a flame zone that deals 45% of the damage every second for 4s.',
              'ru':
                  'Уменьшает урон от взрыва на 20%, но создает огненное поле, которое наносит 45% базового урона каждую секунду в течение 4 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_13.webp',
          },
          {
            'name': 'Distributed Installation',
            'description': {
              'en':
                  'Can install 2 mines within 5s, but increases the cooldown by 6s.',
              'ru':
                  'Можно установить 2 мины в течение 5 секунд, но увеличивает восстановление умения на 6 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_38.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Arrow Shower',
    'class': {
      'en': 'Hawk Eye',
      'ru': 'Рейнджер',
    },
    'description': {
      'en':
          'You shoot several arrows in the air, which fall back to the targeted location. They deal 63 damage for 2 seconds.',
      'ru':
          'Выстреливает несколько стрел в воздух, которые падают на землю в указанной области. Наносят 63 урона в течение 2 секунд.'
    },
    'type': 'Point',
    'cooldown': 18,
    'iconUrl': 'assets/icons/hawkeye/c08s10.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Quick Hand',
            'description': {
              'en': 'Increases attack speed by 15%.',
              'ru': 'Скорость атаки увеличена на 15%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_6.webp',
          },
          {
            'name': 'Mind Enhancement',
            'description': {
              'en': 'Decrease MP consumption by 50%.',
              'ru': 'Снижает расход маны на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_34.webp',
          },
          {
            'name': 'Evasion Master',
            'description': {
              'en': 'Increases evasion rate by 35% during cast.',
              'ru':
                  'Повышает шанс уворота на 35% во время применения способности.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_26.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Enhancement Sustain',
            'description': {
              'en':
                  'Reduces damage by 20% per hit but increases the duration by 2s.',
              'ru':
                  'Уменьшает урон на 20%, но увеличивает длительность на 2 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_8.webp',
          },
          {
            'name': 'Flame Baptism',
            'description': {
              'en':
                  '[Fire] Arrows fall and burn enemies, inflicting additional damage every second for 3s.',
              'ru':
                  '[Огонь] Cтрелы падая с неба, поджигают врагов, нанося дополнительный урон каждую секунду в течении 3 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_13.webp',
          },
          {
            'name': 'Electric Baptism',
            'description': {
              'en':
                  '[Lighting] Shoots a bolt of lightning. 30% chance to stun for 3s.',
              'ru': '[Молния] Стрелы с шансом 30% оглушают цель на 3 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_17.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Piercing Arrow',
            'description': {
              'en':
                  'The arrows fall faster. critical hit rate increases by 40%.',
              'ru':
                  'Стрелы падают чаще, сокращая общую продолжительность. Шанс критического урона увеличен на 40%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_4.webp',
          },
          {
            'name': 'Sustained Rain',
            'description': {
              'en': 'Increase damage to enemies by 20% per second.',
              'ru': 'Увеличивает урон на 20% в секунду.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_58.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Evasive Shot',
    'class': {
      'en': 'Hawk Eye',
      'ru': 'Рейнджер',
    },
    'description': {
      'en':
          'You jump backwards and shoot in front of you, inflicting 154 damage.',
      'ru': 'Отпрыгивает назад, нанося 154 урона выстрелом.'
    },
    'type': 'Normal',
    'cooldown': 20,
    'iconUrl': 'assets/icons/hawkeye/c08s11.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Quick Hand',
            'description': {
              'en': 'Increases attack speed by 15%.',
              'ru': 'Скорость атаки увеличена на 15%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_6.webp',
          },
          {
            'name': 'Excellent Maneuver',
            'description': {'en': 'Move backward by 2m.', 'ru': 'Отпрыгивает на 2 метра.'},
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_10.webp',
          },
          {
            'name': 'Quick Preparation',
            'description': {
              'en': 'Cooldown reduced by 3s.',
              'ru': 'Время восстановления уменьшено на 3 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Light Footsteps',
            'description': {
              'en': 'Increases movement speed by 30% for 3s.',
              'ru': 'Скорость передвижения увеличена на 30% в течение 3 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_11.webp',
          },
          {
            'name': 'Evasion Master',
            'description': {
              'en': 'Increases evasion rate by 40% during cast.',
              'ru': 'Уклонение увеличено на 40%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_26.webp',
          },
          {
            'name': 'Heavy Arrow',
            'description': {
              'en':
                  'The distance to push enemies is increased by 3m. Increases damage by 20%.',
              'ru': 'Отталкивает врагов на 3 метра. Увеличивает урон на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_0.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Conversion Strike',
            'description': {
              'en': 'Knockdown enemy. Increases critical hit rate by 100%.',
              'ru':
                  'Сбивает с ног врага. Шанс критического удара увеличен на 100%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_9.webp',
          },
          {
            'name': 'Strategic Retreat',
            'description': {
              'en':
                  'After landing, you can use a new arrow in the direction and retreat an additional 2 meters.',
              'ru':
                  'После приземления можно выстрелить и отпрыгнуть еще на 2 метра.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_8.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Quick Cut',
    'class': {
      'en': 'Hawk Eye',
      'ru': 'Рейнджер',
    },
    'description': {
      'en':
          'You give a quick stab in front of you, inflicting 61 damage and applying the Mark of Death for 5s. The Death Mark effect can be applied up to 3 times, increasing the damage received by the enemy from 5% to 20%.',
      'ru':
          'Наносит 61 урона кинжалом и накладывает на цель метку длительностью 5 секунд. Метка суммируется до 3 раз, увеличивая получаемый урон цели от 5% до 20%.'
    },
    'type': 'Normal',
    'cooldown': 12,
    'iconUrl': 'assets/icons/hawkeye/c08s12.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Mind Enhancement',
            'description': {
              'en': 'Decrease MP usage by 50%.',
              'ru': 'Потребление маны уменьшено на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_34.webp',
          },
          {
            'name': 'Silver Master',
            'description': {
              'en': 'Skill hits to restore identity 35.',
              'ru': 'При использовании восстанавливает 35 энергии.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_36.webp',
          },
          {
            'name': 'Quick Hit',
            'description': {
              'en': 'Increases critical hit rate by 20%.',
              'ru': 'Шанс критического удара увеличен на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_4.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Mark Of Death',
            'description': {
              'en': 'The Mark of death can be applied up to 2 times per hit.',
              'ru': 'Метка накладывается дважды за один удар.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_76.webp',
          },
          {
            'name': 'Unjust Strike',
            'description': {
              'en':
                  'Increase the damage bonus to 100% while enemy health is above 80%.',
              'ru': 'Урон увеличен на 100% по целям с 80% здоровья и выше.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_0.webp',
          },
          {
            'name': 'Painful Strike',
            'description': {
              'en': 'Inflicts bleeding, inflicting damage every second for 5s.',
              'ru': 'Накладывает кровотечение на 5 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_45.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Double Cut',
            'description': {
              'en':
                  'Give a second hit, which increases the damage by 100%. A 20% chance inflict an additional 400% damage.',
              'ru':
                  'Наносит второй удар 100% уроном. 20% вероятность нанести 400% дополнительного урона.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_40.webp',
          },
          {
            'name': 'Covert Movement',
            'description': {
              'en':
                  'After using the skill, you become invisible and increase movement speed by 50% for 3s.',
              'ru':
                  'После использования дает невидимость и увеличивает скорость передвижения на 50% в течение 3 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_74.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Smoke Arrow',
    'class': {
      'en': 'Hawk Eye',
      'ru': 'Рейнджер',
    },
    'description': {
      'en':
          'You shoot an arrow at the target location that deals 80 damage and creates a smoke zone for 6 seconds, the speed of movement and the vision field of the enemies are reduced in the smoke.',
      'ru':
          'Производит выстрел в указанную зону, нанося 80 урона и создавая область дыма на 6 секунд, в которой скорость перемещения и обзор врагов понижен.'
    },
    'type': 'Point',
    'cooldown': 16,
    'iconUrl': 'assets/icons/hawkeye/c08s13.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Mind Enhancement',
            'description': {
              'en': 'Decrease MP usage by 50%.',
              'ru': 'Потребление маны сокращено на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_34.webp',
          },
          {
            'name': 'Quick Preparation',
            'description': {
              'en': 'Cooldown reduced by 3s.',
              'ru': 'Время восстановления уменьшено на 3 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.webp',
          },
          {
            'name': 'Ranged Shooting',
            'description': {
              'en': 'Increases the attack range of 3m.',
              'ru': 'Дальность атаки увеличена на 3 метра.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_52.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Sticky Smoke',
            'description': {
              'en':
                  'Reduction movement speed lasts for 3 seconds even when moving out of the smoke zone.',
              'ru':
                  'Скорость перемещения врагов снижен даже после выхода из области дыма на 3 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_47.webp',
          },
          {
            'name': 'Dark Smoke',
            'description': {
              'en':
                  'Reduces the vision field of enemies for 3 seconds even if they come out of the smoke zone.',
              'ru':
                  'Обзор врагов снижен даже после выхода из области дыма на 3 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_46.webp',
          },
          {
            'name': 'Poison Smoke',
            'description': {
              'en': 'Inflicts damage every second to enemies in the smoke.',
              'ru': 'Наносит урон в области дыма.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_45.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Spreading Smoke',
            'description': {
              'en':
                  'Increases smoke zone by 30% and the smoke duration increases by 2s.',
              'ru':
                  'Увеличивает радиус области дыма на 30% и продолжительность на 2 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_7.webp',
          },
          {
            'name': 'Invisible Threat',
            'description': {
              'en':
                  'Increases the damage done to enemies in the Smoke Zone by 40%.',
              'ru': 'Увеличивает получаемый урон по целям в области на 40%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_0.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Shadow Arrow',
    'class': {
      'en': 'Hawk Eye',
      'ru': 'Рейнджер',
    },
    'description': {
      'en':
          'Shoot an arrow that deals 85 damage and applies the Dark Curse effect, reducing the speed of movement and the field of view of the enemy for 4s. If applied 3 times, the enemy is stunned for 5 seconds.',
      'ru':
          'Наносит 85 урона выстрелом и накладывает проклятье, понижающее скорость передвижения и обзор врага. Суммируется до 3 раз, оглушая на 5 секунд.'
    },
    'type': 'Normal',
    'cooldown': 1,
    'iconUrl': 'assets/icons/hawkeye/c08s14.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Fast Charge',
            'description': {
              'en': 'Reduces the cooldown of each charge by 2s.',
              'ru': 'Сокращает время восстановления на 2 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.webp',
          },
          {
            'name': 'High Speed Arrow',
            'description': {
              'en': 'Increases the speed of the arrows by 20%.',
              'ru': 'Скорость стрел увеличена на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_6.webp',
          },
          {
            'name': 'Mind Enhancement',
            'description': {
              'en': 'Decrease MP usage by 50%.',
              'ru': 'Потребление маны уменьшено на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_34.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Overcharge',
            'description': {
              'en':
                  'The maximum stacks of shadow arrows increases from 3 to 4.',
              'ru': 'Суммируется до 4 раз.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_83.webp',
          },
          {
            'name': 'Curse',
            'description': {
              'en':
                  'Increases the duration of the Dark Curse effect from to 6s.',
              'ru': 'Длительность проклятья увеличено до 6 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_47.webp',
          },
          {
            'name': 'Shadows of Abyss',
            'description': {
              'en': 'Increases shadow curse effect by 50%.',
              'ru': 'Эффект проклятья увеличен на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_46.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Shadow Tracking',
            'description': {
              'en':
                  'Shadow arrows track the closest enemy on the path. No longer pierce the enemy and increase the cooldown by 4s.',
              'ru':
                  'Стрела летит в ближайшего врага, не пробивая и увеличивает время восстановления умения на 4 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_84.webp',
          },
          {
            'name': 'Ruthless Shadow',
            'description': {
              'en': 'Shoot 3 arrows together in a fan-shaped form.',
              'ru': 'Выпускает 3 стрелы веером.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_54.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Blade Storm',
    'class': {
      'en': 'Hawk Eye',
      'ru': 'Рейнджер',
    },
    'description': {
      'en':
          'Spins rapidly and throw blade, causing 46 damage 6 times and 42 damage 3 times.',
      'ru':
          'Вращаясь бросает ножи во все стороны, нанося 46 урона 6 раз и 42 урона 3 раза.'
    },
    'type': 'Normal',
    'cooldown': 20,
    'iconUrl': 'assets/icons/hawkeye/c08s15.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Ranged Blow',
            'description': {
              'en': 'Attack range increases by 20%.',
              'ru': 'Дистанция атаки увеличена на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_7.webp',
          },
          {
            'name': 'Quick Hand',
            'description': {
              'en': 'Increases the attack speed by 20%.',
              'ru': 'Скорость атаки увеличена на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_6.webp',
          },
          {
            'name': 'Silver Master',
            'description': {
              'en': 'Each time skill hit 3 times to restore 12 energy.',
              'ru': 'За каждые 3 попадания восстанавливает 12 энергии.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_36.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Poison Blade',
            'description': {
              'en':
                  'Shoots the poison blade at the last attack and makes the hit enemy poisoned for 5s.',
              'ru': 'Последний бросок отравляет врагов на 5 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_45.webp',
          },
          {
            'name': 'Lightning Blade',
            'description': {
              'en': 'Сritical chance of last attack increases by 100%.',
              'ru':
                  'Шанс критического удара последнего броска увеличен на 100%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_49.webp',
          },
          {
            'name': 'Mark Of Death',
            'description': {
              'en':
                  'Inflicts mark of death to an enemy hit in the last attack. Can be applied up to 3 times. Increasing the damage received by the enemy from 5% to 20%.',
              'ru':
                  'Последний бросок накладывает метку, суммарно до 3 раз, увеличивая получаемый урон цели от 5% до 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_76.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Blade Dance',
            'description': {
              'en':
                  'Movement during the rotation becomes possible. Also, the number of attacks increases by one.',
              'ru':
                  'Позволяет перемещаться во время использования. Увеличивает количество бросков на 1.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_8.webp',
          },
          {
            'name': 'Shadow Dance',
            'description': {
              'en':
                  'It is possible to move after 2 rotations. At the point where the skill is used, the clone continues to attack.',
              'ru':
                  'После второго вращения создает клона и позволяет перемещаться.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_88.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Electric Nova',
    'class': {
      'en': 'Hawk Eye',
      'ru': 'Рейнджер',
    },
    'description': {
      'en':
          'After aiming inflict 123 damage to the first enemy hit, 54 to nearby enemies and 41 behind the target. The arrow has a 60% chance to stun the first enemy hit for 3 seconds, 40% for nearby enemies, and 20% for enemies behind the target.',
      'ru':
          'Выстрел наносит 123 урона по цели, 54 по ближайшим врагам и 41 по врагам позади цели. Шанс оглушить равен 60% по самой цели, 40% по врагам рядом и 20% по врагам позади цели.'
    },
    'type': 'Normal',
    'cooldown': 24,
    'iconUrl': 'assets/icons/hawkeye/c08s16.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Quick Hand',
            'description': {
              'en': 'Increases attack speed by 15%.',
              'ru': 'Скорость атаки увеличена на 15%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_6.webp',
          },
          {
            'name': 'Mind Enhancement',
            'description': {
              'en': 'Decrease MP usage by 50%.',
              'ru': 'Потребление маны сокращено на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_34.webp',
          },
          {
            'name': 'Ranged Shooting',
            'description': {
              'en': 'Increases the range of 3m.',
              'ru': 'Дальность умения увеличена на 3 метра.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_52.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Current Zone',
            'description': {
              'en':
                  'The chances of stunning the first enemy are increased from 60% to 100%, for enemies close to 40% to 70% and for enemies behind from 20% to 50%.',
              'ru':
                  'Шанс оглушить увеличен до 100% для цели, до 70% для врагов рядом с целью и до 50% для врагов позади цели.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_44.webp',
          },
          {
            'name': 'Overload',
            'description': {
              'en':
                  'Increases damage by 20% for the first enemy hit, 40% for nearby enemies, and 70% for enemies behind.',
              'ru':
                  'Увеличивает урон на 20% для цели, на 40% для врагов рядом и на 70% на врагов позади цели.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_0.webp',
          },
          {
            'name': 'Electric Shock',
            'description': {
              'en':
                  'No longer inflicts stunning but gains 100% chance to inflict electrocution for 3 seconds and increases damage by 25%.',
              'ru':
                  'Не оглушает врагов, но увеличивает шанс на 100% получить шок на 3 секунды, увеличивая получаемый урон целями на 25%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_17.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Lightning Rod',
            'description': {
              'en':
                  'Send the lightning rod in the targeted location for 2 seconds, increasing the damage by 100%.',
              'ru':
                  'Создает разряды в указанной области в течение 2 секунд, увеличивая наносимый урон на 100%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_8.webp',
          },
          {
            'name': 'Electric Storm',
            'description': {
              'en':
                  'Increases the size of the skill by 30% and increases the current range by 30%.',
              'ru': 'Увеличивает область действия и радиус действия на 30%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_7.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Snipe',
    'class': {
      'en': 'Hawk Eye',
      'ru': 'Рейнджер',
    },
    'description': {
      'en':
          'Deals 772 damage if hit the perfect zone, and 193 damage if fails.',
      'ru':
          'Наносит 772 урона при идеальном выпускании стрелы и 193 при обычном.'
    },
    'type': 'Hold 3 sec',
    'cooldown': 36,
    'iconUrl': 'assets/icons/hawkeye/c08s17.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Quick Preparation',
            'description': {
              'en': 'Cooldown reduced by 6s.',
              'ru': 'Время восстановления уменьшено на 6 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.webp',
          },
          {
            'name': 'Quick Hand',
            'description': {
              'en': 'Increases attack speed by 15%.',
              'ru': 'Скорость атаки увеличена на 15%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_6.webp',
          },
          {
            'name': 'Insight',
            'description': {
              'en': 'Increase the skill range by 3m.',
              'ru': 'Дальность умения увеличена на 3 метра.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_52.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Perfection',
            'description': {
              'en':
                  'Increases damage by 40% when the arrow is released at the perfect zone.',
              'ru': 'Увеличивает урон на 40% при идеальном выпускании стрелы.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_72.webp',
          },
          {
            'name': 'Strength',
            'description': {
              'en': 'Become immune to control effects during the cast a skill.',
              'ru': 'Невосприимчивость к эффектам контроля.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_23.webp',
          },
          {
            'name': 'Weak Point',
            'description': {
              'en':
                  'Increase the damage by 30% to enemy immune to control effects and 80% for perfect zone.',
              'ru':
                  'Урон по целям невосприимчивым к эффектам контроля увеличен на 30% и на 80% при идеальном выпускании стрелы.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_33.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Ghillie Suit',
            'description': {
              'en':
                  'You become invisible during the cast a skill, but increases the cooldown by 18s.',
              'ru':
                  'Становится невидимым во время прицеливания, увеличивает время восстановления на 18 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_74.webp',
          },
          {
            'name': 'Easy Prey',
            'description': {
              'en':
                  'Size of the Perfect Zone increases by 50%, and if succeeds the critical hit rate increases by 50%.',
              'ru':
                  'Размер идеальной зоны увеличен на 50%, при идельном выпускании стрелы шанс критического урона увеличен на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_49.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Soundstrike',
    'class': {
      'en': 'Bard',
      'ru': 'Менестрель',
    },
    'description': {
      'en': 'Shoots a projectile that explodes and deals 106 damage.',
      'ru': 'Запускает шар, летящий по прямой и наносящий 106 урона при взрыве.'
    },
    'type': 'Normal',
    'cooldown': 6,
    'iconUrl': 'assets/icons/bard/c09s00.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Quick Preparation',
            'description': {
              'en': 'Cooldown reduced by 1s.',
              'ru': 'Время восстановления уменьшено на 1 секунду.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.webp',
          },
          {
            'name': 'Wide Explosion',
            'description': {
              'en': 'Increases the range of explosive blast by 50%.',
              'ru': 'Радиус взрыва увеличен на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_7.webp',
          },
          {
            'name': 'Remaining Blast',
            'description': {
              'en': 'Leaves a DoT on the ground at the explosion for 2s.',
              'ru': 'Наносит урон в области взрыва в течение 2 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_8.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Sacred Shock',
            'description': {
              'en':
                  '[Holy] Enemy hit by soundshock takes 15% increased damage for 1 second.',
              'ru':
                  '[Свет] Цель получает на 15% больше урона в течение 1 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_18.webp',
          },
          {
            'name': 'Cold Shock',
            'description': {
              'en':
                  '[Ice] Freezes enemies reducing their movement speed by 60% for 3 seconds.',
              'ru':
                  '[Холод] Скорость передвижения врагов уменьшена на 60% в течение 3 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_14.webp',
          },
          {
            'name': 'Shock Reinforcement',
            'description': {
              'en': 'Damage increases by 30%.',
              'ru': 'Урон увеличен на 30%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_1.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Speaker',
            'description': {
              'en': 'Shoots another soundstrike.',
              'ru': 'Позволяет использовать умение повторно.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_54.webp',
          },
          {
            'name': 'Song',
            'description': {
              'en':
                  'Soundstrike is no longer shot straight but falls as a bomb to the pointed location and the damage is increased by 60%.',
              'ru': 'Шар летит по параболе и наносит на 60% больше урона.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_62.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Dissonance',
    'class': {
      'en': 'Bard',
      'ru': 'Менестрель',
    },
    'description': {
      'en':
          'AoE void zone for 5 seconds that deals 19 damage per 0.5 second, and slows enemies for 60% for 1 second.',
      'ru':
          'Создает область в указанном месте на 5 секунд, наносящую 19 урона каждые 0.5 секунд. Замедляет на 60% в течение 1 секунды.'
    },
    'type': 'Point',
    'cooldown': 8,
    'iconUrl': 'assets/icons/bard/c09s01.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Nimble Cast',
            'description': {
              'en': 'Skill cast time is reduced by 15%.',
              'ru': 'Время восстановления уменьшено на 15%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_41.webp',
          },
          {
            'name': 'Increase Melody',
            'description': {
              'en': 'Energy gain 30% faster.',
              'ru': 'Увеличивает прирост энергии на 30%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_64.webp',
          },
          {
            'name': 'Mental fortification',
            'description': {
              'en': 'Mana cost reduced by 50%.',
              'ru': 'Потребление маны уменьшено на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_34.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Dragon Rigid',
            'description': {
              'en': 'Damage to normal monsters increases by 100%.',
              'ru': 'Увеличен урон на 100% по обычным монстрам.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_61.webp',
          },
          {
            'name': 'Helpless Chord',
            'description': {
              'en':
                  'When hit, the attack power of the enemy decreases by 6% every 2 seconds for a maximum of 30%.',
              'ru':
                  'Сила атаки врага уменьшается на 6% в течение 2 секунд за каждый удар. Максимально до 30%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_46.webp',
          },
          {
            'name': 'Achievement of Training',
            'description': {
              'en': 'Attack range increased by 20%.',
              'ru': 'Дальность атаки увеличена на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_7.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Live Chord',
            'description': {
              'en':
                  'Void zone now moves towards nearest enemy and increase skill cooldown by 4s.',
              'ru':
                  'Зона движется за ближайшим врагом. Время восстановления увеличено на 4 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_81.webp',
          },
          {
            'name': 'Chord Enhancement',
            'description': {
              'en': 'Skill damage increased by 100%.',
              'ru': 'Урон умением увеличен на 100%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_1.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Soundwave',
    'class': {
      'en': 'Bard',
      'ru': 'Менестрель',
    },
    'description': {
      'en':
          'Shoots soundwave that pushes enemies backwards and deals 25 per hit.',
      'ru':
          'Пускает звуковую волну, наносящую 25 урона за удар и отталкивающую врагов.'
    },
    'type': 'Normal',
    'cooldown': 12,
    'iconUrl': 'assets/icons/bard/c09s02.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Slick Casting',
            'description': {
              'en': 'Casting speed increased by 20%.',
              'ru': 'Время подготовки умения уменьшено на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_41.webp',
          },
          {
            'name': 'Excellent Maneuver',
            'description': {
              'en': 'When casting skill you are pushed back 4m away.',
              'ru': 'Отпрыгивает на 4 метра назад при использовании.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_11.webp',
          },
          {
            'name': 'Large Wave',
            'description': {
              'en': 'Increase the skill range by 20%.',
              'ru': 'Область действия умения увеличена на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_7.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Mana Control',
            'description': {
              'en': '70% chance to not consume MP.',
              'ru': '70% вероятность не использовать ману.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_34.webp',
          },
          {
            'name': 'Wave of Patience',
            'description': {
              'en':
                  'When soundwave touches your party member it grants damage 40% reduce buff for 4s.',
              'ru':
                  'Волна уменьшает получаемый урон участникам группы на 40% в течение 4 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_65.webp',
          },
          {
            'name': 'Increase Melody',
            'description': {
              'en': 'Energy gain 50% faster.',
              'ru': 'Прирост энергии увеличен на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_64.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Burning Wave',
            'description': {
              'en': 'Skill damage increased by 50%.',
              'ru': 'Урон умением увеличен на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_1.webp',
          },
          {
            'name': 'Ground Breaking',
            'description': {
              'en': 'With the last wave hit enemies for 2s.',
              'ru': 'Наносит урон в течение 2 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_44.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Holy Sound',
    'class': {
      'en': 'Bard',
      'ru': 'Менестрель',
    },
    'description': {
      'en':
          'Ray of light channeled while you are standing still dealing 32 damage per 0.3 seconds.',
      'ru':
          'Луч света наносит 32 урона каждые 0.3 секунды. Перемещение отменяет умение, но позволяет поворачиваться.'
    },
    'type': 'Normal',
    'cooldown': 24,
    'iconUrl': 'assets/icons/bard/c09s03.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Sound Concentration',
            'description': {
              'en': 'Each tick increases damage by 5% up to 30%.',
              'ru': 'Каждый удар увеличивает урон на 5%, максимум до 30%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_58.webp',
          },
          {
            'name': 'Subjugation',
            'description': {
              'en':
                  'Turns the ray of light into a cone and increase damage taken by enemies at max range by 30%.',
              'ru':
                  'Наносит урон веером, на дальней дистанции урон увеличен на 30%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_1.webp',
          },
          {
            'name': 'Mana Healing',
            'description': {
              'en': 'Recovers a party member mana by 1% per hit.',
              'ru': 'Восстанавливает 1% маны участникам группы за каждый удар.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_79.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Strengthen Sustainability',
            'description': {
              'en':
                  'Skill duration increased by 1.5s and cooldown increased by 3s.',
              'ru':
                  'Время действия умения увеличено на 1.5 секунды. Время восстановления увеличено на 3 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_42.webp',
          },
          {
            'name': 'Sound Barrier',
            'description': {
              'en':
                  'A shield is created for 15% of your maximum hp during the channeling.',
              'ru':
                  'Создает щит, поглощающий урон равный 15% максимального запаса здоровья.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_75.webp',
          },
          {
            'name': 'Mobility Weakness',
            'description': {
              'en': 'Reduces the movement speed of enemies by 60% for 2s.',
              'ru':
                  'Скорость перемещения врагов уменьшена на 60% в течение 2 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_47.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Increase Melody',
            'description': {
              'en': 'Energy gain 200% faster.',
              'ru': 'Прирост энергии увеличен на 200%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_64.webp',
          },
          {
            'name': 'Concentrated Saturation',
            'description': {
              'en':
                  'Duration reduced by 50% and damage increases by 300%, you can’t redirect the spell.',
              'ru':
                  'Длительность умения уменьшена на 50%. Урон увеличен на 300%. Не позволяет поворачиваться.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_40.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Harp of Rhythm',
    'class': {
      'en': 'Bard',
      'ru': 'Менестрель',
    },
    'description': {
      'en':
          'Puts harp on the ground near you that shoots for 68 damage within 14m radius.',
      'ru': 'Наносит 68 урона нотами арфы в радиусе 14 метров.'
    },
    'type': 'Normal',
    'cooldown': 24,
    'iconUrl': 'assets/icons/bard/c09s04.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Quick Preparation',
            'description': {
              'en': 'Skill duration increased by 2s.',
              'ru': 'Время действия умения увеличено на 2 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_51.webp',
          },
          {
            'name': 'Nimble Cast',
            'description': {
              'en': 'Skill cast time decreased by 20%.',
              'ru': 'Время подготовки умения уменьшено на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_41.webp',
          },
          {
            'name': 'Mana Control',
            'description': {
              'en': 'Mana consumption reduce by 50%.',
              'ru': 'Потребление маны уменьшено на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_34.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Sleek Speaker',
            'description': {
              'en': 'Harp attack rate increases by 60%.',
              'ru': 'Скорость атаки умения увеличена на 60%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_6.webp',
          },
          {
            'name': 'Blasting',
            'description': {
              'en':
                  'Adds AoE damage to projectiles but reduces skill range to 6m.',
              'ru':
                  'Наносит урон по области, но дальность действия умения уменьшена на 6 метров.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_40.webp',
          },
          {
            'name': 'Increase Melody',
            'description': {
              'en': 'Energy gain per second.',
              'ru': 'Увеличивает прирост энергии.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_64.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Note Brand',
            'description': {
              'en':
                  'Decreases the damage dealt by the harp by 80%, enemies takes 15% increased damage from party for 1 second.',
              'ru':
                  'Урон умением уменьшен на 80%. Враги получают на 15% больше урона от группы в течение 1 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_65.webp',
          },
          {
            'name': 'Giant Harp',
            'description': {
              'en':
                  'The size of the harp increases by 20% and it’s damage is increased by 100%.',
              'ru': 'Область действия умения увеличена на 20% и урон на 100%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_88.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Bunch of Notes',
    'class': {
      'en': 'Bard',
      'ru': 'Менестрель',
    },
    'description': {
      'en':
          'Notes with no collision fly in one direction, deals 29 and slows enemies by 40% for 4s.',
      'ru':
          'Запускает ноты в одном направлении, которые наносят 29 урона и замедляют врагов на 40% в течение 5 секунд.'
    },
    'type': 'Normal',
    'cooldown': 12,
    'iconUrl': 'assets/icons/bard/c09s05.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Strong Notes',
            'description': {
              'en':
                  'Every time notes hit a party member, taken damage is reduced by 10%, up to 30%.',
              'ru':
                  'Каждый раз ноты, задевая участника группы, уменьшают получаемый урон на 10%. Максимум до 30%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_65.webp',
          },
          {
            'name': 'Turning Tables',
            'description': {
              'en':
                  'Cooldown increased by 5 seconds but can be used twice in a row.',
              'ru':
                  'Позволяет использовать 2 раза. Время восстановления увеличено на 5 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_38.webp',
          },
          {
            'name': 'Musical Note Collapse',
            'description': {
              'en': 'Explodes at the end of the spell doing 200% damage.',
              'ru': 'В конце взрывается, нанося 200% урона.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_78.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Frozen Notes',
            'description': {
              'en': '[Ice] Slow movement speed is reduced by 80%.',
              'ru': '[Холод] Скорость перемещения цели снижается на 80%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_14.webp',
          },
          {
            'name': 'Sacred Notes',
            'description': {
              'en':
                  '[Holy] Enemy hit by the bunch of notes takes 15% increased damage for 1 second.',
              'ru': '[Свет] Урон по цели увеличен на 15% в течение 1 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_18.webp',
          },
          {
            'name': 'Note Tsunami',
            'description': {
              'en': 'Damage increase by 100%.',
              'ru': 'Урон увеличен на 100%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_58.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Merciless Release',
            'description': {
              'en':
                  'Shoots 5 bunch of notes with 100% increased speed, and the damage is increased by 200%.',
              'ru':
                  'Отправляет ноты в 5 направлениях с увеличенной скоростью на 100%. Урон увеличен на 200%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_54.webp',
          },
          {
            'name': 'Stigma of Melody',
            'description': {
              'en':
                  'Falls from the sky and leaves it on the ground as a DoT and with increased range by 100% for 2s.',
              'ru':
                  'Вместо полета нот создает на 2 секунды область, поражающую переодическим уроном с увеличенной областью действия на 100%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_53.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Conviction Core',
    'class': {
      'en': 'Bard',
      'ru': 'Менестрель',
    },
    'description': {
      'en':
          'For 10s you are surrounded with 3 notes exploding with 79 damage when enemy approach you at 4m.',
      'ru':
          'Создает 3 ноты вокруг себя на 10 секунд, которые взрываются при приближении врагов на 4 метра, нанося 79 урона.'
    },
    'type': 'Normal',
    'cooldown': 20,
    'iconUrl': 'assets/icons/bard/c09s06.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Strengthen Intelligence',
            'description': {
              'en': 'Skill duration increased by 3s.',
              'ru': 'Длительность умения увеличена на 3 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_51.webp',
          },
          {
            'name': 'Quick Preparation',
            'description': {
              'en': 'Cooldown reduced by 4s.',
              'ru': 'Время восстановления уменьшено на 4 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.webp',
          },
          {
            'name': 'Enhanced Core',
            'description': {
              'en': 'Skill damage increased by 15%.',
              'ru': 'Урон увеличен на 15%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_1.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Cold Core',
            'description': {
              'en': 'Enemies movement slowed by 60% for 2s while hit.',
              'ru': 'Уменьшает скорость передвижения на 60% в течение 2 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_14.webp',
          },
          {
            'name': 'Collective Core',
            'description': {
              'en':
                  'After enemy being hit by 1 of the notes damage increased by 50% for every other hit.',
              'ru': 'Урон каждой последующей ноты по цели увеличен на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_50.webp',
          },
          {
            'name': 'Derived Effect',
            'description': {
              'en':
                  'Mana regeneration increases by 30% if the notes are still on the user.',
              'ru':
                  'Мана восстанавливается на 30% быстрее при использовании умения.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_34.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Core Explosion',
            'description': {
              'en':
                  'Number of cores reduced by 2, explodes them with damage increased by 300% and knocks back enemies.',
              'ru':
                  'Количество нот уменьшается до 2. Взрывая обе урон увеличен на 300%, отбрасывает врагов.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_53.webp',
          },
          {
            'name': 'Core Increase',
            'description': {
              'en': 'Number of notes increased by 2.',
              'ru': 'Количество нот увеличено на 2.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_54.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Winds of Music',
    'class': {
      'en': 'Bard',
      'ru': 'Менестрель',
    },
    'description': {
      'en':
          'AoE winds near you pushes enemies back and deals 50 damage. Additional hit deals 75 damage with increased range by 1m.',
      'ru':
          'Порыв ветра наносит 50 урона и отталкивает врагов. Второй порыв наносит 75 урона с увеличенной дистанцией действия на 1 метр.'
    },
    'type': 'Normal',
    'cooldown': 18,
    'iconUrl': 'assets/icons/bard/c09s07.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Mana Control',
            'description': {
              'en': 'Mana cost reduced by 50%.',
              'ru': 'Потребление маны уменьшено на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_34.webp',
          },
          {
            'name': 'Quick Preparation',
            'description': {
              'en': 'Cooldown reduced by 2s.',
              'ru': 'Время восстановления уменьшено на 2 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.webp',
          },
          {
            'name': 'Nimble Cast',
            'description': {
              'en': 'Skill cast time decreased by 15%.',
              'ru': 'Время подготовки умения уменьшено на 15%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_41.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Increase Melody',
            'description': {
              'en': 'Energy gain 150% faster.',
              'ru': 'Прирост энергии увеличен на 150%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_64.webp',
          },
          {
            'name': 'Enhanced Casting',
            'description': {
              'en': 'Skill damage increased by 100%.',
              'ru': 'Урон увеличен на 100%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_1.webp',
          },
          {
            'name': 'Damage Reduction',
            'description': {
              'en': 'Reduces damage to you by 40% while casting the skill.',
              'ru': 'Получаемый урон уменьшен на 40% при использовании умения.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_24.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'High Speed Cast',
            'description': {
              'en':
                  'Reduces the number of attacks by 1, but changes the skill so you can cast it twice. Increases attack range by 40% and damage by 200%. Increases the cooldown by 6 seconds.',
              'ru':
                  'Меняет умение на 1 удар, который можно использовать дважды. Дистанция атаки увеличена на 40% и урон увеличен на 200%. Время восстановления увеличено на 6 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_38.webp',
          },
          {
            'name': 'Wish for Protection',
            'description': {
              'en':
                  'You and party members touched by wind got shield buff 25% max hp for 4s.',
              'ru':
                  'Создает щит группе, поглощающий урон равный 25% максимального запаса здоровья в течение 4 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_75.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Stigma',
    'class': {
      'en': 'Bard',
      'ru': 'Менестрель',
    },
    'description': {
      'en':
          'You are 1s casting void zone on the ground that hits 54 damage per second for 5s, every next tick damages 12.5% harder.',
      'ru':
          'В течение 1 секунды создает область, которая наносит 54 урона в секунду в течение 5 секунд, причем каждый удар бьет на 12.5% сильнее.'
    },
    'type': 'Cast 1 sec',
    'cooldown': 16,
    'iconUrl': 'assets/icons/bard/c09s08.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Wide Attack',
            'description': {
              'en': 'Area of effect increases by 20%.',
              'ru': 'Оласть действия умения увеличена на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_7.webp',
          },
          {
            'name': 'Slick Casting',
            'description': {
              'en': 'Casting speed increased by 30%.',
              'ru': 'Скорость подготовки умения увеличена на 30%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_41.webp',
          },
          {
            'name': 'Strengthen Sustainability',
            'description': {
              'en': 'Stigma duration is increased by 2s.',
              'ru': 'Длительность действия умения увеличена на 2 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_51.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Ice Stigma',
            'description': {
              'en':
                  '[Ice] Movement speed is reduced by 50% for 3 seconds and freezes enemies for 4 seconds if hit 3 times in a row.',
              'ru':
                  '[Холод] Скорость перемещения уменьшена на 50% в течение 3 секунд. После 3 ударов замораживает на 4 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_14.webp',
          },
          {
            'name': 'Sacred Stigma',
            'description': {
              'en':
                  '[Holy] Enemy hit by stigma takes 15% increased damage for 1 second.',
              'ru':
                  '[Свет] Увеличивает получаемый урон целью на 15% в течение 1 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_18.webp',
          },
          {
            'name': 'Storm stigma',
            'description': {
              'en': 'Changes into a sphere that slowly moves toward the enemy.',
              'ru': 'Создает сферу, которая двигается к ближайшему врагу.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_81.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Stigma of Pain',
            'description': {
              'en': 'Damage increases from 12.5% to 60% upon time.',
              'ru': 'Урон увеличивается с 12.5% до 60%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_53.webp',
          },
          {
            'name': 'Melody Increase',
            'description': {
              'en': 'Increases energy gain by 200%.',
              'ru': 'Прирост энергии увеличен на 200%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_64.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Rhythm Backshot',
    'class': {
      'en': 'Bard',
      'ru': 'Менестрель',
    },
    'description': {
      'en':
          'You are pulling harp strings backwards and knock down enemies dealing 185 damage.',
      'ru': 'Наносит 185 урон и сбивая врагов с ног.'
    },
    'type': 'Normal',
    'cooldown': 16,
    'iconUrl': 'assets/icons/bard/c09s09.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Increase Melody',
            'description': {
              'en': 'Energy gain 30% faster.',
              'ru': 'Прирост энергии увеличен на 30%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_64.webp',
          },
          {
            'name': 'Mana Control',
            'description': {
              'en': 'Mana cost reduced by 50%.',
              'ru': 'Потребление маны уменьшено на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_34.webp',
          },
          {
            'name': 'Strengthen Destruction',
            'description': {
              'en': 'Pushes at 100% increased distance.',
              'ru': 'Отталкивает на 100% дальше.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_9.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Achievement of Training',
            'description': {
              'en': 'Skill range increased by 20%.',
              'ru': 'Дальность применения умения увеличена на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_7.webp',
          },
          {
            'name': 'Strength',
            'description': {
              'en': 'Become immune to control effects during the cast a skill.',
              'ru':
                  'Невосприимчивость к эффектам контроля во время использования.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_23.webp',
          },
          {
            'name': 'Strong Shot',
            'description': {
              'en': 'Skill damage and knockdown time increased by 25%.',
              'ru':
                  'Урон умением и длительность опрокидывания увеличены на 25%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_9.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Nimble Cast',
            'description': {
              'en':
                  'Skill cast time decreased by 20%, critical chance increased by 50%.',
              'ru':
                  'Время подготовки умения уменьшено на 20%, шанс критического удара увеличен на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_6.webp',
          },
          {
            'name': 'Shooting Concentration',
            'description': {
              'en':
                  'Skill cast time increased by 0.5s, skill damage increased by 100% and Incapacitate increases by 1.',
              'ru':
                  'Урон умением увеличен на 100%. Ослабляющий эффект увеличен на 1. Время подготовки умения увеличено на 0.5 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_50.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Overtorture of Storm',
    'class': {
      'en': 'Bard',
      'ru': 'Менестрель',
    },
    'description': {
      'en':
          'AoE lightning around you, deals 141 damage and stuns enemies for 3 seconds.',
      'ru': 'Шторм наносит 141 урона и оглушает окружающих врагов на 3 секунды.'
    },
    'type': 'Normal',
    'cooldown': 16,
    'iconUrl': 'assets/icons/bard/c09s10.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Mana Control',
            'description': {
              'en': 'Recovers up to 75% of the mana cost by 15% per enemy hit.',
              'ru':
                  'Возвращает 15% потраченной маны за каждый удар, максимум до 75%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_34.webp',
          },
          {
            'name': 'Quick Preparation',
            'description': {
              'en': 'Cooldown reduced by 2s.',
              'ru': 'Время восстановления уменьшено на 2 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.webp',
          },
          {
            'name': 'Capture Weakness',
            'description': {
              'en': 'Skill damage to normal monsters increased by 20%.',
              'ru': 'Урон умением увеличен на 20% по обычным монстрам.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_33.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Wide Blow',
            'description': {
              'en': 'Attack Range increases by 15%.',
              'ru': 'Дистанция атаки увеличена на 15%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_7.webp',
          },
          {
            'name': 'Increase Melody',
            'description': {
              'en': 'Energy gain 150% faster.',
              'ru': 'Прирост энергии увеличен на 150%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_64.webp',
          },
          {
            'name': 'Lightning Strengthening',
            'description': {
              'en': 'Skill damage increased by 100%.',
              'ru': 'Урон увеличен на 100%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_1.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Powerful Overture',
            'description': {
              'en':
                  'Stunning duration decreased by 1 second, but leaves an electric zone that deals 100% damage in an area for 2 seconds.',
              'ru':
                  'Время оглушения уменьшено на 1 секунду. Создает область, наносящую 100% урона в течение 2 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_8.webp',
          },
          {
            'name': 'Lightning Concentration',
            'description': {
              'en':
                  'No longer casts around you but in front of you in a range of 11m, increasing the damage by 25%.',
              'ru':
                  'Действует не вокруг, а в заданном направлении на дистанции 11 метров. Урон увеличен на 25%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_17.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Sound Vibrations',
    'class': {
      'en': 'Bard',
      'ru': 'Менестрель',
    },
    'description': {
      'en':
          'Deals 90 damage in desired location, throws enemies in the air. Then knocks down them inflicting 225 damage. Finally creates void zone for 3s dealing 34 damage 4 times.',
      'ru':
          'Наносит 90 урона, подбрасывая врагов. Затем бросает вниз, нанося 225 урона. В конце создает область на 3 секунды, наносящую 34 урона 4 раза.'
    },
    'type': 'Point',
    'cooldown': 24,
    'iconUrl': 'assets/icons/bard/c09s11.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Slick Casting',
            'description': {
              'en':
                  'Casting speed is increased by 0.3 seconds, and the speed of ticks are increased by 30%.',
              'ru':
                  'Скорость подготовки умения увеличен на 0.3 секунды. Скорость нанесения урона зоной увеличено на 30%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_6.webp',
          },
          {
            'name': 'Guard Vibration',
            'description': {
              'en':
                  'When sound vibrations hit an enemy, a shield is created for 3 seconds, decreases taken damage by 5% to a total of 30%.',
              'ru':
                  'При каждом ударе по цели создается щит на 3 секунды, уменьшающий получаемый вами урон на 5%. Максимум до 30%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_75.webp',
          },
          {
            'name': 'Super Armor',
            'description': {
              'en': 'While casting immune to control effects.',
              'ru':
                  'Невосприимчивость эффектам контроля во время использования.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_23.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Ice Vibrations',
            'description': {
              'en':
                  '[Ice] Enemies are pulled in the center and slows the movement speed by 40% for 4 seconds, if hit 5 times freezes for 3 seconds.',
              'ru':
                  '[Холод] Врагов притягивает к центру, уменьшая скорость передвижения на 40% в течение 4 секунд. При получении 5 ударов цель замораживается на 3 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_14.webp',
          },
          {
            'name': 'Sacred Vibrations',
            'description': {
              'en': 'Attack for party members increases by 40% for 2s.',
              'ru':
                  'Сила атаки участников группы увеличена на 40% в течение 2 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_18.webp',
          },
          {
            'name': 'Chain Vibration',
            'description': {
              'en':
                  'Zone damage removed but throws enemies into the air and knock back again.',
              'ru':
                  'Не наносит урон зоной, но снова подбрасывает врагов вверх и вниз.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_81.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Wide Attack',
            'description': {
              'en': 'AoE size increases by 40%.',
              'ru': 'Область действия умения увеличена на 40%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_7.webp',
          },
          {
            'name': 'Spread Vibrations',
            'description': {
              'en':
                  'After AoE explosion new waves in an X shape that travels 10m and cause 40% damage.',
              'ru':
                  'После удара вниз волны расходятся в разные стороны на расстояние 10 метров, нанося 40% урона.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_54.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Prelude to Death',
    'class': {
      'en': 'Bard',
      'ru': 'Менестрель',
    },
    'description': {
      'en':
          'Deals 121 damage 2 times in AoE zone around you and with each tick slows enemies down by 20% to 40% for 3s. Finally deals 81 damage, increased by stacks of debuffs.',
      'ru':
          'Наносит 121 урона 2 раза по области вокруг, постепенно замедляя врагов от 20% до 40% скорости передвижения в течение 3 секунд. В конце наносит 81 урона, увеличенного в зависимости от наложенных отрицательных эффектов на цели.'
    },
    'type': 'Normal',
    'cooldown': 24,
    'iconUrl': 'assets/icons/bard/c09s12.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Increase Melody',
            'description': {
              'en': 'Energy gain 30% faster.',
              'ru': 'Прирост энергии увеличен на 30%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_64.webp',
          },
          {
            'name': 'Quick Preparation',
            'description': {
              'en': 'Cooldown reduced by 3s.',
              'ru': 'Время восстановления уменьшено на 3 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.webp',
          },
          {
            'name': 'Mana Control',
            'description': {
              'en': 'Mana cost reduced by 50%.',
              'ru': 'Потребление маны уменьшено на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_34.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Amplification of Death',
            'description': {
              'en': 'Damage increased by 50% per tick.',
              'ru': 'Урон увеличивается на 50% за удар от эффекта.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_1.webp',
          },
          {
            'name': 'Deadly Death',
            'description': {
              'en': '10% more slow reduction and decrease in attack.',
              'ru': 'Скорость передвижения и сила атаки уменьшена на 10%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_47.webp',
          },
          {
            'name': 'Endless Play',
            'description': {
              'en': 'Additional hit while casting the spell.',
              'ru': 'Наносит дополнительный удар.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_51.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Aria of Death',
            'description': {
              'en':
                  'Damage is increased by 30%. If target hit in the prelude to death dies in 5 seconds, the damage is done to the enemies within 3m.',
              'ru':
                  'Урон увеличен на 30%. Если враг убит в течение 5 секунд, наносится урон целям вокруг в радиусе 3 метров.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_50.webp',
          },
          {
            'name': 'Cry of Pain',
            'description': {
              'en':
                  'Attack range increased by 25% and when debuff is over target fears for 4s.',
              'ru':
                  'Дальность атаки увеличена на 25%. В конце накладывает эффект страха на 4 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_44.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Light Note',
    'class': {
      'en': 'Bard',
      'ru': 'Менестрель',
    },
    'description': {
      'en':
          'Harp play with AoE zone around mouse cursor. Deals 151 per 1.5s while standing.',
      'ru':
          'Наносит 151 урона в указанной области каждые 1.5 секунды. Сбивается движением.'
    },
    'type': 'Point',
    'cooldown': 24,
    'iconUrl': 'assets/icons/bard/c09s13.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Mana Control',
            'description': {
              'en': '50% chance to not consume MP.',
              'ru': '50% вероятность не потратить ману.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_34.webp',
          },
          {
            'name': 'Quick Preparation',
            'description': {
              'en': 'Cooldown reduced by 3s.',
              'ru': 'Время восстановления уменьшено на 3 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.webp',
          },
          {
            'name': 'Nimble Cast',
            'description': {
              'en': 'Skill cast time is reduced by 15%.',
              'ru': 'Время подготовки умения уменьшено на 15%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_41.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Strength',
            'description': {
              'en': 'Become immune to control effects during cast.',
              'ru':
                  'Невосприимчивость к эффектам контроля во время использования.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_23.webp',
          },
          {
            'name': 'Musical Note Stigma',
            'description': {
              'en':
                  'Enemies receive a debuff that increases party damage by 15% for 2s.',
              'ru': 'Урон группы увеличен на 15% в течение 2 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_76.webp',
          },
          {
            'name': 'Strengthen Sustain',
            'description': {
              'en': 'Additional tick of damage while harp play.',
              'ru': 'Увеличивает число ударов на 1.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_51.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Concentration of Light',
            'description': {
              'en': 'Skill damage increased by 50% per hit.',
              'ru': 'Урон увеличивается на 50% после каждого удара.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_58.webp',
          },
          {
            'name': 'Protection of Light',
            'description': {
              'en':
                  'Reduces skill damage by 50%, reduces 75% damage taken by party for 3 seconds, and absorbs 10% damage of maximum life.',
              'ru':
                  'Урон умением уменьшен на 50%. Урон по группе уменьшен на 75% в течение 3 секунд, поглощает урон равный 10% максимального запаса здоровья.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_65.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'March of Notes',
    'class': {
      'en': 'Bard',
      'ru': 'Менестрель',
    },
    'description': {
      'en':
          'Every second producing a note that follows nearest enemy exploding dealing 39 damage and applying slow movement debuff for 50% for 2 seconds.',
      'ru':
          'Каждую секунду создает ноту, которая движется к ближайшему врагу, наносит 39 урона и уменьшает скорость передвижения на 50% в течение 2 секунд.'
    },
    'type': 'Hold',
    'cooldown': 20,
    'iconUrl': 'assets/icons/bard/c09s14.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Quick Preparation',
            'description': {
              'en': 'Cooldown reduced by 3s.',
              'ru': 'Время восстановления уменьшено на 3 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.webp',
          },
          {
            'name': 'Mana Control',
            'description': {
              'en': 'Mana cost reduced by 50%.',
              'ru': 'Потребление маны уменьшено на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_34.webp',
          },
          {
            'name': 'Light March',
            'description': {
              'en':
                  'Increases your movement speed by 15% when channeling the skill.',
              'ru':
                  'Увеличивает скорость передвижения на 15% во время использования.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_11.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Achievement of Training',
            'description': {
              'en': 'Skill range increases by 50%.',
              'ru': 'Дальность действия увеличен на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_7.webp',
          },
          {
            'name': 'Strengthen the March',
            'description': {
              'en': 'Critical hit rate increases by 30%.',
              'ru': 'Шанс критического удара увеличен на 30%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_46.webp',
          },
          {
            'name': 'Decrease in Mobility',
            'description': {
              'en': 'Enemies hit by the notes slowed additional 30% for 2s.',
              'ru':
                  'Увеличивает длительность эффекта замедления на 30% в течение 2 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_47.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Threatening March',
            'description': {
              'en': 'Damage to enemies increases by 200%.',
              'ru': 'Урон увеличен на 200%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_1.webp',
          },
          {
            'name': 'March of the Melody',
            'description': {
              'en': 'Energy gain 200% faster.',
              'ru': 'Прирост энергии увеличен на 200%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_37.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Top Performance',
    'class': {
      'en': 'Bard',
      'ru': 'Менестрель',
    },
    'description': {
      'en':
          'Deals 159 damage to nearest enemies. Increases attack speed by 3.5% and mana regeneration rate by 12% for 8 sec for party members in 24m range.',
      'ru':
          'Наносит 159 урона окружающим врагам. Увеличивает скорость атаки на 3.5% и восстановление маны на 12% в течение 8 секунд участникам группы в радиусе 24 метров.'
    },
    'type': 'Normal',
    'cooldown': 30,
    'iconUrl': 'assets/icons/bard/c09s15.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Quick Preparation',
            'description': {
              'en': 'Reduces the cooldown time by 4s.',
              'ru': 'Время восстановления умения сокращено на 4 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.webp',
          },
          {
            'name': 'Nimble Cast',
            'description': {
              'en': 'Skill cast time decreased by 25%.',
              'ru': 'Время подготовки умения уменьшено на 25%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_41.webp',
          },
          {
            'name': 'Mana Control',
            'description': {
              'en': 'Mana cost reduced by 50%.',
              'ru': 'Потребление маны уменьшено на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_34.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Strong Performance',
            'description': {
              'en': 'Attack speed increases by an additional 8%.',
              'ru': 'Скорость атаки дополнительно увеличена на 8%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_65.webp',
          },
          {
            'name': 'Performance of Valor',
            'description': {
              'en': 'Reduces the enemy’s attack power by 30% for 8s.',
              'ru': 'Сила атаки врагов уменьшена на 30% в течение 8 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_46.webp',
          },
          {
            'name': 'Achievement of Training',
            'description': {
              'en': 'Skill range increased by 25%.',
              'ru': 'Дальность действия умения увеличена на 25%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_7.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Violent Performance',
            'description': {
              'en':
                  'In addition to the existing effects, it increases the damage of the party by 40%.',
              'ru': 'Урон группы дополнительно увеличен на 40%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_4.webp',
          },
          {
            'name': 'Play for Me',
            'description': {
              'en':
                  'Damage increases by 200% and the existing buffs are increased by 100%.',
              'ru':
                  'Урон умением увеличен на 200%. Сила наложенных эффектов увеличена на 100%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_24.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Guardian Performance',
    'class': {
      'en': 'Bard',
      'ru': 'Менестрель',
    },
    'description': {
      'en':
          'Reduce damage to yourself and party members within the 24m range by 20% for 8 seconds.',
      'ru':
          'Урон по участникам группы в радиусе 24 метров уменьшен на 20% в течение 8 секунд.'
    },
    'type': 'Normal',
    'cooldown': 30,
    'iconUrl': 'assets/icons/bard/c09s16.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Robust',
            'description': {
              'en': 'Immunity to the control effects.',
              'ru': 'Невосприимчивость эффектам контроля.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_23.webp',
          },
          {
            'name': 'Mana Control',
            'description': {
              'en': 'Mana consumption decreases by 100%.',
              'ru': 'Потребление маны уменьшено на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_34.webp',
          },
          {
            'name': 'Nimble Cast',
            'description': {
              'en': 'Skill cast time decreased by 20%.',
              'ru': 'Время подготовки умения уменьшено на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_6.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Unfinished Guardian',
            'description': {
              'en':
                  'Additional shield for 8 seconds for 15% of the target’s maximum health.',
              'ru':
                  'Дополнительный щит на 8 секунд, поглощающий урон равный 15% максимального запаса здоровья.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_75.webp',
          },
          {
            'name': 'Strong Guard',
            'description': {
              'en': 'Increases the damage taken by 20%.',
              'ru': 'Получаемый урон снижен на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_51.webp',
          },
          {
            'name': 'Retribution of Defense',
            'description': {
              'en':
                  'When Guardian Performance ends it explodes and inflicts AoE damage in 4m radius.',
              'ru':
                  'При завершении умения наносит урон врагам в радиусе 4 метров.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_53.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Sleek Guardian',
            'description': {
              'en':
                  'Reduces the cooldown time by 50%, and reduces all effects time by 50%.',
              'ru':
                  'Уменьшает время восстановления и действия всех эффектов на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_56.webp',
          },
          {
            'name': 'Wish for Protection',
            'description': {
              'en': 'Control effect is blocked by one attack.',
              'ru': 'Предотвращает 1 эффект контроля.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_26.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Mana Crystal',
    'class': {
      'en': 'Summoner',
      'ru': 'Призывательница',
    },
    'description': {
      'en':
          'Deals 155 damage and additional 123 damage. Damaged target gets slow by 60% for 2s.',
      'ru':
          'Наносит 155 урона и 123 дополнительного урона. Скорость перемещения врагов снижена на 60% в течение 2 секунд.'
    },
    'type': 'Normal',
    'cooldown': 6,
    'iconUrl': 'assets/icons/summoner/c10s00.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Mind Enhancement',
            'description': {
              'en': 'Mana consumption reduce by 50%.',
              'ru': 'Стоимость маны уменьшена на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_34.webp',
          },
          {
            'name': 'Ranged Launch',
            'description': {
              'en': 'Increase the skill range by 2m.',
              'ru': 'Радиус умения увеличен на 2 метра.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_52.webp',
          },
          {
            'name': 'Slow Enhancement',
            'description': {
              'en': 'Increase duration of slow effect by 1s.',
              'ru': 'Длительность замедления увеличена на 1 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_47.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Flame Crystal',
            'description': {
              'en': 'Increase the damage by 25%.',
              'ru': 'Урон умения увеличен на 25%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_1.webp',
          },
          {
            'name': 'Ice Crystal',
            'description': {
              'en':
                  'Cooldown increases by 5 seconds, and does not decrease the movement speed anymore, but it is frozen for 2 seconds.',
              'ru':
                  'Время восстановления увеличено на 5 секунды, больше не уменьшает скорость передвижения, а замораживает на 2 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_43.webp',
          },
          {
            'name': 'Thunder Crystal',
            'description': {
              'en': 'Increase critical hit rate by 30%.',
              'ru': 'Шанс критического удара увеличен на 30%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_49.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Chain Explosion',
            'description': {
              'en':
                  'Additional damage occurs 2m behind the explosion location. Additional damage increases attack distance by 30%.',
              'ru':
                  'Наносит дополнительный урон на расстоянии 2 метра позади основной цели. Увеличивает дальность атаки на 30%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_8.webp',
          },
          {
            'name': 'Area Explosion',
            'description': {
              'en':
                  'Removed cone shape AoE at successful hit but explodes in circle with increase in 30% damage and 20% slow effect.',
              'ru':
                  'Теперь взрывается в форме круга, урон увеличен на 30%, замедляет цель на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_53.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Instant Explosion',
    'class': {
      'en': 'Summoner',
      'ru': 'Призывательница',
    },
    'description': {
      'en': 'Explode condensed mana energy at cursor point to deal 167 damage.',
      'ru':
          'Взрывает сконцентрированную энергию маны в указанном месте и наносит 167 урона'
    },
    'type': 'Point',
    'cooldown': 12,
    'iconUrl': 'assets/icons/summoner/c10s01.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Insight',
            'description': {
              'en': 'Increase the skill range by 2m.',
              'ru': 'Увеличивает дальность применения умения на 2 метра.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_52.webp',
          },
          {
            'name': 'Destruction Enhancement',
            'description': {
              'en': 'Add Lv1 Destruction effect.',
              'ru': 'Добавляет 1 уровень эффекта разрушения.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_22.webp',
          },
          {
            'name': 'Energy Control',
            'description': {
              'en': 'At successful hit, increase energy gain by 50%.',
              'ru': 'Регенерация энергии увеличена на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_37.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Vital Point Explosion',
            'description': {
              'en': 'Increase critical hit rate by 30%.',
              'ru': 'Шанс критического удара увеличен на 30%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_4.webp',
          },
          {
            'name': 'Shiny Explosion',
            'description': {
              'en':
                  'At successful hit, sleep the target for 2s but increase cooldown by 4s.',
              'ru':
                  'Усыпляет цель на 2 секунды, но увеличивает время восстановления на 4 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_44.webp',
          },
          {
            'name': 'Capture Weakness',
            'description': {
              'en': 'Increases the damage done to your enemies by 40%.',
              'ru': 'Увеличивает урон на 40%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_33.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Mega Explosion',
            'description': {
              'en':
                  'Increase the delay of explosion but increase the damage by 50% and range by 30%.',
              'ru':
                  'Увеличивает время до взрыва, но при этом увеличивает урон на 50%, а так же радиус действия на 30%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_53.webp',
          },
          {
            'name': 'It’s a Trap!',
            'description': {
              'en':
                  'Create a mine that explodes automatically when enemy approaches and decrease enemy’s movement speed for 60% for 3s.',
              'ru':
                  'Создает мину, которая взрывается когда противник подойдёт к ней, снижая скорость передвижения противника на 60% в течение 3 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_47.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Accelerating Wind Bird',
    'class': {
      'en': 'Summoner',
      'ru': 'Призывательница',
    },
    'description': {
      'en':
          'Summon birds and can move freely while holding. Skill can last up to 3s and can deal 62 damage per hit.',
      'ru':
          'Призывает птиц, позволяя свободно передвигаться во время призыва. Длительность способности 3 секунды. Наносит 62 урона за удар.'
    },
    'type': 'Hold 3 sec',
    'cooldown': 18,
    'iconUrl': 'assets/icons/summoner/c10s02.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Mind Enhancement',
            'description': {
              'en': 'Mana consumption is reduced by 50%.',
              'ru': 'Стоимость маны уменьшена на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.webp',
          },
          {
            'name': 'Accumulated Energy',
            'description': {
              'en':
                  'You can not acquire energy during holding, but if you keep holding to the end, you gain 80% chance to gain 1 spirit sphere.',
              'ru':
                  'Вы не можете получить энергию во время удержания, но если вы продолжите удерживать до конца, вы получаете 80% шанс получить 1 сферу духа.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_36.webp',
          },
          {
            'name': 'Sleek Motion',
            'description': {
              'en': 'Movement speed increases by 10% during holding.',
              'ru':
                  'Скорость передвижения увеличена на 10% во время использования умения.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_11.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Fire Bird',
            'description': {
              'en': 'Increase the damage by 30% while holding.',
              'ru': 'Урон увеличен на 30%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_1.webp',
          },
          {
            'name': 'Ice Bird',
            'description': {
              'en':
                  'Holding the skill for 0.5s or longer, decrease enemy’s movement speed by 60% for 3s.',
              'ru':
                  'Удержание умения 0.5 секунд или более, уменьшает скорость передвижения цели на 60% на 3 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_47.webp',
          },
          {
            'name': 'Wisdom of Mage',
            'description': {
              'en': 'Maximum holding time increase to 2s.',
              'ru': 'Максимальное время удержания увеличено до 2 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_42.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Flock of Birds',
            'description': {
              'en':
                  'Summons more bird to increase the skill range by 30% and ignore 60% of magic defense.',
              'ru':
                  'Увеличивает радиус атаки на 30% и игнорирует 60% магической защиты.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_7.webp',
          },
          {
            'name': 'Mother Bird',
            'description': {
              'en':
                  'Holding the skill 0.5s or longer summons mother bird additionally at the end of holding. Increased skill damage by 33.3%.',
              'ru':
                  'Удержание навыка в течении 0.5 секунд или более призывает Мать птиц, чей базовый урон увеличен на 33.3%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_59.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Burning Gallop',
    'class': {
      'en': 'Summoner',
      'ru': 'Призывательница',
    },
    'description': {
      'en':
          'Relentless fire horse run over to deal 137 damage and airborne enemies.',
      'ru':
          'Выпускает огненного скакуна, наносящего 137 урона и подкидывающего цель в воздух.'
    },
    'type': 'Normal',
    'cooldown': 8,
    'iconUrl': 'assets/icons/summoner/c10s03.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Burning Run',
            'description': {
              'en': '[Fire] Deals damage to hit enemy for 3 seconds.',
              'ru':
                  '[Огонь] Наносит дополнительный урон огнем в течении 3 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_13.webp',
          },
          {
            'name': 'Storm Run',
            'description': {
              'en':
                  '[Lighting] Increases the critical hit rate by 15% , and makes it a 30% chance to electrocutes for 5 seconds.',
              'ru':
                  '[Молния] Критический удар увеличен на 15%, наносит дополнительный урон с вероятностью 30% на 5 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_17.webp',
          },
          {
            'name': 'Frozen Streak',
            'description': {
              'en':
                  '[Ice] No longer knocks the enemy, but when hit it freezes for 3 seconds to reduce the movement speed by 40%.',
              'ru':
                  '[Холод] Не подкидывает в воздух, а замораживает на 3 секунды и замедляет цель на 40%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_14.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Collapse Spree',
            'description': {
              'en':
                  'Destroy the magic power on the ground and damage it every second for 3s.',
              'ru':
                  'Разрушает сгусток магической, наносящий урон по небольшой области каждую секунду в течение 3 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_8.webp',
          },
          {
            'name': 'Fast Witch',
            'description': {
              'en':
                  'Increases the horse\'s movement speed by 30% and ignores the enemy magic defense by 30%.',
              'ru':
                  'Увеличивает скорость передвижения скакуна на 30% и игнорирует магическую защиту цели на 30%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_3.webp',
          },
          {
            'name': 'Weak Point',
            'description': {
              'en':
                  'Increase the critical damage by 100% toward an enemy immune to control effects.',
              'ru':
                  'Увеличивает критический урон на 100% по целям невосприимчивым к эффектам контроля.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_33.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Ascension',
            'description': {
              'en':
                  'Five horses rush in order to deal damage on each hit, but the cooldown increases by 16s.',
              'ru':
                  'Количество скакунов увеличено до 5, время восстановления умения увеличено на 16 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_54.webp',
          },
          {
            'name': 'Demolisher',
            'description': {
              'en':
                  'It changes to winged horse, that increases the damage done to the enemy by up to 100%.',
              'ru':
                  'Выпускает крылатого скакуна. Урон от умения может увеличиться до 100%, пропорционально расстоянию, на котором достигнет цели.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_58.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Fauru',
    'class': {
      'en': 'Summoner',
      'ru': 'Призывательница',
    },
    'description': {
      'en':
          '[Fire] Throw firebomb at cursor point to deal 111 damage and summon fire spirit. Spirit attacks nearby enemy for 15s and deals 104 damage.',
      'ru':
          '[Огонь] Бросает огненную бомбу в область курсора нанося 111 урона и призывает огненного духа. Дух атакует ближайшую цель в течении 15 секунд, нанося 104 урона.'
    },
    'type': 'Point',
    'cooldown': 30,
    'iconUrl': 'assets/icons/summoner/c10s04.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Twilight Burning',
            'description': {
              'en': 'Summoner\'s summon damage is increased by 30% for 3s.',
              'ru': 'Урон призывательницы увеличивается на 30% на 3 секунды..'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_1.webp',
          },
          {
            'name': 'Mana Cycle',
            'description': {
              'en': 'When spirit is recalled, it recovers by 30% of max mana.',
              'ru':
                  'Дух восстанавливает 30% максимального запаса маны призывательницы.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_79.webp',
          },
          {
            'name': 'Wide Explosion',
            'description': {
              'en':
                  'When spirit is summoned, the skill\'s cooldown decreases by 30% for 3s.',
              'ru':
                  'Когда дух призван, откат способностей призывателя снижается на 30% на 3 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Attack Enhancement',
            'description': {
              'en': 'Increase spirit’s damage by 40%.',
              'ru': 'Урон духа увеличен на 40%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_50.webp',
          },
          {
            'name': 'Flaming Fire',
            'description': {
              'en':
                  'Spirit burns every attack for 5 seconds, and when it is 5 stacked, it explodes and causes big damage to the surroundings.',
              'ru':
                  'Дух получает ожог на 5 секунд ща каждый удар. Получив суммарно 5 ожогов взрывается нанося урон.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_45.webp',
          },
          {
            'name': 'Summon Maintenance',
            'description': {
              'en': 'Increase spirit’s summon duration by 3s.',
              'ru': 'Увеличивает время призыва на 3 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_51.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Blue Flame Fauru',
            'description': {
              'en':
                  'Increase spirit’s attack, movement speed and vision rage by 20% each. Decrease attack interval time, can activate fire breath in a cone shape with 100% damage that blows away enemy.',
              'ru':
                  'Увеличивает силу атаки и скорость передвижения, а так же область видимости духа на 20%. Уменьшает интервал между атаками, позволяет активировать огненное дыхание, урон способности увеличен на 100%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_59.webp',
          },
          {
            'name': 'Pair of Flames',
            'description': {
              'en':
                  'Spirit self-destructs, causing great damage to the surroundings.',
              'ru':
                  'Дух самоуничтожается, нанеся большой урон всем целям в зоне взрыва.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_78.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Released Will',
    'class': {
      'en': 'Summoner',
      'ru': 'Призывательница',
    },
    'description': {
      'en': 'Release storm to push enemies away and cause 224 damage.',
      'ru': 'Шторм наносит 224 урона целям и отталкивает их.'
    },
    'type': 'Normal',
    'cooldown': 16,
    'iconUrl': 'assets/icons/summoner/c10s05.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Excellent Maneuver',
            'description': {
              'en':
                  'Increase skill’s travel distance by 2m. If cyclone tripod is learned, only increase by 1m.',
              'ru':
                  'Увеличивает дистанцию способности на 2 метра. Если выучен Cyclon Rush (Tier 3) дистанция 1 метр.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_10.webp',
          },
          {
            'name': 'Mana Control',
            'description': {
              'en': '50% chance to not consume MP.',
              'ru': 'С шансом 50% не потратит ману на использование умения.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_34.webp',
          },
          {
            'name': 'Energy Control',
            'description': {
              'en': 'At successful hit, increase energy gain by 50%.',
              'ru': 'Шанс получить энергию при попадании увеличен на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_37.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Ranged Blast',
            'description': {
              'en': 'Increase skill range by 25%.',
              'ru': 'Радиус умения увеличен на 25%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_52.webp',
          },
          {
            'name': 'Freezing Cold',
            'description': {
              'en':
                  '[Ice] Freeze for 4 seconds to reduce movement speed by 80%.',
              'ru':
                  '[Холод] Замораживает противников на 4 секунды и замедляет их на 80%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_43.webp',
          },
          {
            'name': 'Sandy Wind',
            'description': {
              'en': '[Earth] Knocks down enemies',
              'ru': '[Земля] Теперь не отталкивает врагов, а опрокидывает их.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_60.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Cyclon Rush',
            'description': {
              'en':
                  'Skill motion changes into a spin to attack all enemy around.',
              'ru': 'Теперь шторм наносит урон и отталкивает цели вокруг.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_40.webp',
          },
          {
            'name': 'Mana Amplification',
            'description': {
              'en':
                  'Increase the MP consumption by 50% and the damage by 100%.',
              'ru': 'Затрата маны увеличена на 50%, урон увеличен на 100%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_1.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Maririn',
    'class': {
      'en': 'Summoner',
      'ru': 'Призывательница',
    },
    'description': {
      'en':
          'Summon coral spirit Maririn. Maririn attacks nearby enemy for 20s and deals 124 damage.',
      'ru':
          'Призывает кораллового духа Маририн, который атакует врагов в течение 20 секунд и наносит 124 урона.'
    },
    'type': 'Normal',
    'cooldown': 45,
    'iconUrl': 'assets/icons/summoner/c10s06.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Attack Enhancement',
            'description': {
              'en': 'Increase Maririn’s damage by 20%.',
              'ru': 'Урон Маририна увеличен на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_50.webp',
          },
          {
            'name': 'Iron Skin',
            'description': {
              'en': 'Maririn gets 30% damage reduction.',
              'ru': 'Урон по Маририну уменьшен на 30%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_25.webp',
          },
          {
            'name': 'Ether of Power',
            'description': {
              'en':
                  'At the death of Marilyn, a power ether is created at the death location.',
              'ru': 'Дух взрывается при смерти.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_1.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Taunt Command',
            'description': {
              'en':
                  'Grant taunt skill. Can be activated to immediately taunt all enemy except players for 2s. Seed or higher class mob can’t be taunted for certain period.',
              'ru':
                  'Добавляет способность Насмешка. Заставляет врагов вокруг атаковать Маририна в течение 2 секунд. Не действует на игроков и на некоторые типы элитных мобов.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_73.webp',
          },
          {
            'name': 'Charge Command',
            'description': {
              'en':
                  'Grant charge skill. Can be activated to charge toward an enemy to stun for 2s.',
              'ru':
                  'Добавляет способность Рывок. Устремляется к цели и оглушает ее на 2 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_44.webp',
          },
          {
            'name': 'Neutralization Command',
            'description': {
              'en':
                  'Disabling command skill. Immediately after using the changed skill, Marilyn uses the neutralization skill toward the enemy.',
              'ru':
                  'Добавляет способность Нейтрализация. Набрасывается на цель, нанося урон и накладывая ослабляющий эффект.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_11.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Communion',
            'description': {
              'en': 'Increase Maririn’s duration by 10s.',
              'ru': 'Время призыва Маририна увеличено на 10 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_51.webp',
          },
          {
            'name': 'Coral Spirit',
            'description': {
              'en': 'Increase Maririn’s HP by 100%.',
              'ru': 'Увеличивает здоровье Маририна на 100%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_59.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Winged Spirit',
    'class': {
      'en': 'Summoner',
      'ru': 'Призывательница',
    },
    'description': {
      'en':
          'Summon hawk spirit at cursor point. Can last maximum of 4s to deal 822 damage at maximum.',
      'ru':
          'Призывает дух ястреба в указанное место. Поддерживаемое умение в течение 4 секунд, наносит 822 урона.'
    },
    'type': 'Hold 4 sec',
    'cooldown': 24,
    'iconUrl': 'assets/icons/summoner/c10s07.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Feeding on Prey',
            'description': {
              'en': 'Increase the damage by 30% to normal enemies.',
              'ru': 'Увеличен урон на 30% по обычным врагам.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_1.webp',
          },
          {
            'name': 'Fortified Robe',
            'description': {
              'en': '30% damage reduction while holding.',
              'ru': 'Вы получаете на 30% меньше урона во время удержания.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_25.webp',
          },
          {
            'name': 'Mana Regeneration',
            'description': {
              'en': '50% increased MP regeneration while holding.',
              'ru': 'Регенерация маны увеличена на 50% во время удержания.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_79.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Thunder Spirit',
            'description': {
              'en': 'Increase critical hit rate by 30%.',
              'ru': 'Шанс критического удара увеличен на 30%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_4.webp',
          },
          {
            'name': 'Earth Spirit',
            'description': {
              'en': 'Stun an enemy for 2s after 4 hits.',
              'ru': 'Оглушает врага после 4 ударов на 2 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_43.webp',
          },
          {
            'name': 'Result of Training',
            'description': {
              'en': 'Increase the skill range by 25%.',
              'ru': 'Увеличивает дальность применения умения на 25%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_7.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Typhoon',
            'description': {
              'en': 'Increase the damage by 30% and critical damage by 100%.',
              'ru': 'Увеличивает урон на 30% и критический урон на 100%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_5.webp',
          },
          {
            'name': 'Communion',
            'description': {
              'en': 'Decrease hit interval by 33%. Increase energy gain.',
              'ru':
                  'Уменьшает интервал между ударами на 33%, увеличивает количество получаемой энергии.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_42.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Electricity Release',
    'class': {
      'en': 'Summoner',
      'ru': 'Призывательница',
    },
    'description': {
      'en':
          'Throw electric ball to deal 56 damage and create electric field for 1s that deals 131 damage.',
      'ru':
          'Электрический шар наносит 56 урона и создает электрическое поле на 1 секунду, которое наносит 131 урона.'
    },
    'type': 'Normal',
    'cooldown': 12,
    'iconUrl': 'assets/icons/summoner/c10s08.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Chain Launch',
            'description': {
              'en':
                  'Can be used twice. Increase the mana cost by 50% and activating a chain skill increase cooldown by 12s.',
              'ru':
                  'Может быть использовано дважды. Затрата маны увеличена на 50%, время восстановления умения увеличено на 12 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_38.webp',
          },
          {
            'name': 'Rapid Casting',
            'description': {
              'en': 'Increase the casting speed by 20%.',
              'ru': 'Скорость подготовки умения увеличена на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_41.webp',
          },
          {
            'name': 'Haste Launch',
            'description': {
              'en': 'Increase the projectile travel speed by 20%.',
              'ru': 'Скорость полета заряда увеличена на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_11.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Electricity Enhancement',
            'description': {
              'en':
                  'Increased weakness effect by 1 and critical hit rate by 20%.',
              'ru':
                  'Шанс критического удара увеличен на 20% и ослабляющий эффект повышен на 1.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_4.webp',
          },
          {
            'name': 'Feeding on Prey',
            'description': {
              'en': 'Increase the damage by 30% to normal enemies.',
              'ru': 'Урон увеличен на 30% по обычным врагам.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_61.webp',
          },
          {
            'name': 'Weak Point',
            'description': {
              'en':
                  'Increase the damage by 40% to enemy immune to control effects.',
              'ru':
                  'Урон увеличен на 40% по целям невосприимчивым к эффектам контроля.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_33.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Supercurrent Area',
            'description': {
              'en':
                  'At the arrival point, create an electrical field for 3.5s that causes damage for every 0.5s and pulls enemies toward a center.',
              'ru':
                  'По достижении цели, создает электрическое поле на 3.5 секунды, которое наносит урон каждые 0.5 секунды и затягивает противников в центр поля.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_53.webp',
          },
          {
            'name': 'High Voltage',
            'description': {
              'en': 'Electrify an enemy for 2s.',
              'ru': 'Электризует цель на 2 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_44.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Sticky Moss Swamp',
    'class': {
      'en': 'Summoner',
      'ru': 'Призывательница',
    },
    'description': {
      'en':
          'Summons a sticky moss swamp in the mouse position, giving 25 damage per second, reducing movement speed by 60% for 2 seconds.',
      'ru':
          'В указанном месте атакует каждую секунду 25 урона и уменьшает скорость передвижения на 60% на 2 секунды.'
    },
    'type': 'Point',
    'cooldown': 20,
    'iconUrl': 'assets/icons/summoner/c10s09.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Mind Enhancement',
            'description': {
              'en': 'Decrease MP consumption by 50%.',
              'ru': 'Стоимость маны уменьшена на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_34.webp',
          },
          {
            'name': 'Rapid Preparation',
            'description': {
              'en': 'Cooldown reduced by 2s.',
              'ru': 'Уменьшено время восстановления на 2 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.webp',
          },
          {
            'name': 'Battle Preparation',
            'description': {
              'en':
                  'When a skill is activated, its attack power increases by 20% for 4s.',
              'ru':
                  'При активации умения, сила атаки увеличивается на 20% в течение 4 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_50.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Increased Diffusion',
            'description': {
              'en': 'Speed up the spreading of the swamp.',
              'ru': 'Ускоряет распространение болота.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_53.webp',
          },
          {
            'name': 'Poisonous Swamp',
            'description': {
              'en': 'Increase the damage by 200%.',
              'ru': 'Урон увеличен на 200%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_1.webp',
          },
          {
            'name': 'Sticky Swamp',
            'description': {
              'en': 'Increase the slow effect by 20%.',
              'ru': 'Замедляющий эффект увеличен на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_47.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Queen of Swamp',
            'description': {
              'en': 'Increase the size of the swamp by 30%.',
              'ru': 'Размер болота увеличен на 30%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_7.webp',
          },
          {
            'name': 'Acidic Swamp',
            'description': {
              'en': 'Reduces 60% of all enemies attacked by moss swamp for 2s.',
              'ru': 'Уменьшает защиту врагов на 60% в течение 2 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_46.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Elseed',
    'class': {
      'en': 'Summoner',
      'ru': 'Призывательница',
    },
    'description': {
      'en':
          'Summon 2 Elseed, lily flower spirit. Elseed attacks nearby enemy for 10s and deals 35 damage.',
      'ru':
          'Призывает 2 духов цветка лилии. Цветок атакует ближайшие цели в течение 10 секунд и наносит 35 урона.'
    },
    'type': 'Normal',
    'cooldown': 24,
    'iconUrl': 'assets/icons/summoner/c10s10.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Mind Enhancement',
            'description': {
              'en': 'Decrease MP consumption by 50%.',
              'ru': 'Затраты маны уменьшены на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_34.webp',
          },
          {
            'name': 'Mana Amplification',
            'description': {
              'en':
                  'Increases mana consumption by 50%, but increases your attack power by 30% for 4 seconds when you activate a skill.',
              'ru':
                  'Увеличено потребление маны на 50%, но увеличена сила атаки на 30% в течение 4 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_50.webp',
          },
          {
            'name': 'Summon Maintenance',
            'description': {
              'en': 'Increase summon duration by 2s.',
              'ru': 'Время жизни призванного существа увеличено на 2 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_51.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Poisonous Seed',
            'description': {
              'en':
                  'Hit applies poison to an enemy for 5s and stacks up to 20 stacks.',
              'ru': 'Накладывает на цель яд на 5 секунд, суммируется до 20 раз.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_45.webp',
          },
          {
            'name': 'Ice Seed',
            'description': {
              'en':
                  'Hit applies slow which decrease movement speed by 40% for 3s.',
              'ru': 'Замедляет цель на 40% в течение 3 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_47.webp',
          },
          {
            'name': 'Trace Seed',
            'description': {
              'en': 'Flowers shoot with homing projectiles.',
              'ru': 'Цветы стреляют самонаводящимися снарядами.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_46.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Pack Summon',
            'description': {
              'en': 'Summons 3 Elseeds',
              'ru': 'Призывает 3 ядовитых цветка.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_54.webp',
          },
          {
            'name': 'Elite Summon',
            'description': {
              'en':
                  'Summons only one elite version which has greater damage, 40% increased attack range.',
              'ru':
                  'Призывает один элитный цветок, который имеет больший урон, с увеличенной областью атак на 40%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_59.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Earth Shatter',
    'class': {
      'en': 'Summoner',
      'ru': 'Призывательница',
    },
    'description': {
      'en':
          'Create strong earthquake at cursor point to deal 380 damage and airborne enemies.',
      'ru':
          'Создает землетрясение в указанной области, нанося 380 урона и подкидывая противников.'
    },
    'type': 'Point',
    'cooldown': 24,
    'iconUrl': 'assets/icons/summoner/c10s11.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Flame Shatter',
            'description': {
              'en': '[Fire] Increase the damage by 15%.',
              'ru': '[Огонь] Урон увеличен на 15%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_13.webp',
          },
          {
            'name': 'Glacial Collapse',
            'description': {
              'en': '[Ice] Freezes the enemy for 3 seconds without damage.',
              'ru': '[Холод] Замораживает цель на 3 секунды, не наносит урона.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_14.webp',
          },
          {
            'name': 'Big Crack',
            'description': {
              'en': 'The Incapacitate stage 1 increases.',
              'ru': 'Увеличивает ослабляющий эффект на 1.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_69.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Aftershocks',
            'description': {
              'en':
                  'After the earth collapse, it creates a crack zone for 3 seconds to damage the location every second.',
              'ru':
                  'После землетрясения, создает разлом в том же месте, который наносит урон противникам в течение 3 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_1.webp',
          },
          {
            'name': 'Tremble',
            'description': {
              'en': 'Additional hits of 4 times during casting.',
              'ru': 'Наносит 4 дополнительные атаки во время подготовки умения.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_8.webp',
          },
          {
            'name': 'Tenacity',
            'description': {
              'en': 'Grant immunity to control effects during casting.',
              'ru': 'Невосприимчивость к эффектам контроля.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_23.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Great Rift',
            'description': {
              'en':
                  'Increase MP consumption by 50% and ignore magic defense of enemy by 60%.',
              'ru':
                  'Увеличивает потребление маны на 50%, игнорирует 60% магической защиты противника.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_3.webp',
          },
          {
            'name': 'Earthquake',
            'description': {
              'en':
                  'Increases attack range by 50% and increases destruction level by 1.',
              'ru':
                  'Радиус умения увеличен на 50%, эффект разрушения увеличен на 1.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_7.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Spirit of Water',
    'class': {
      'en': 'Summoner',
      'ru': 'Призывательница',
    },
    'description': {
      'en': '[Water] Summon water spirit for 2s and deal 424 damage.',
      'ru': '[Вода] Призывает духа воды на 2 секунды, наносящего 424 урона.'
    },
    'type': 'Normal',
    'cooldown': 20,
    'iconUrl': 'assets/icons/summoner/c10s12.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Rapid Casting',
            'description': {
              'en': 'Increase casting speed by 20%.',
              'ru': 'Скорость подготовки умения уменьшена на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_41.webp',
          },
          {
            'name': 'Fortified Robe',
            'description': {
              'en': 'Grant damage reduction of 30% while the spirit is up.',
              'ru': 'Получаемый урон уменьшен на 30%, пока дух призван.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_25.webp',
          },
          {
            'name': 'Mana Regeneration',
            'description': {
              'en':
                  'Increase MP regeneration rate by 200% while the spirit is up.',
              'ru': 'Регенерация маны увеличена на 200%, пока дух призван.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_79.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Mud Spirit',
            'description': {
              'en': 'Apply slow effect for 2s.',
              'ru': 'Замедляет цель на 2 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_46.webp',
          },
          {
            'name': 'Water Spray Spirit',
            'description': {
              'en': 'Last hit deals greater damage and pushes enemy away.',
              'ru':
                  'Последний удар наносит больший урон и отталкивает противника.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_9.webp',
          },
          {
            'name': 'Weak Point',
            'description': {
              'en': 'Increases the damage done to your enemies by 50%.',
              'ru': 'Увеличивает урон на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_33.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Wisdom of Spirit',
            'description': {
              'en':
                  'Increase summon duration by 1s and gradually increase the damage up to 50%.',
              'ru':
                  'Увеличивает время призыва на 1 секунду и постепенно увеличивает урон на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_58.webp',
          },
          {
            'name': 'Water Cannon',
            'description': {
              'en':
                  'Decrease skill angle by 50% but increase the attack distance by 100%.',
              'ru':
                  'Увеличивает дальность способности на 100%, но уменьшает угол атаки духа на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_7.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Electric Storm',
    'class': {
      'en': 'Summoner',
      'ru': 'Призывательница',
    },
    'description': {
      'en':
          'After channeling mana for 2s, create electric storm for 5s to deal 823 damage.',
      'ru':
          'Создает электрический шторм за 2 секунды, наносящий 823 урона в течение 5 секунд.'
    },
    'type': 'Cast 2 sec',
    'cooldown': 24,
    'iconUrl': 'assets/icons/summoner/c10s13.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Mana Control',
            'description': {
              'en': '50% chance to not consume MP.',
              'ru': 'С шансом 50% не потратит ману.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_34.webp',
          },
          {
            'name': 'Rapid Casting',
            'description': {
              'en': 'Increase casting speed by 20%.',
              'ru': 'Скорость подготовки умения уменьшена на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_41.webp',
          },
          {
            'name': 'Fortified Robe',
            'description': {
              'en': '30% damage reduction while casting.',
              'ru':
                  'Получаемый урон уменьшен на 30% во время подготовки умения.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_25.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Vital Strike',
            'description': {
              'en':
                  'Increase MP consumption by 25% and critical hit rate by 50%.',
              'ru':
                  'Шанс критического удара увеличен на 50% и потребление маны увеличено на 25%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_4.webp',
          },
          {
            'name': 'Result of Training',
            'description': {
              'en': 'Increase the size of the storm by 20%.',
              'ru': 'Область действия умения увеличена на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_7.webp',
          },
          {
            'name': 'Long-lasting',
            'description': {
              'en': 'Increase MP consumption by 75% and summon duration by 3s.',
              'ru':
                  'Потребление маны увеличено на 75%, а время действия умения на 3 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_51.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Crimson Storm',
            'description': {
              'en': 'Decrease hit interval by 33%. Increase energy gain.',
              'ru':
                  'Уменьшает интервалы между атаками на 33%, так же увеличивает количество накапливаемой энергии.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_8.webp',
          },
          {
            'name': 'Homing Storm',
            'description': {
              'en':
                  'Increase energy gain by 50% and grant homing ability that slowly travels toward an enemy.',
              'ru':
                  'Увеличивает количество накапливаемой энергии на 50%, теперь шторм медленно будет преследовать ближайшую цель.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_81.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Shurudy',
    'class': {
      'en': 'Summoner',
      'ru': 'Призывательница',
    },
    'description': {
      'en':
          'Summon small light spirit Shurudy. It travels along with character for 20s to deal 127 damage.',
      'ru':
          'Призывает небольшого духа света, Шуруди, который следует за вами в течение 20 секунд и наносит 127 урона.'
    },
    'type': 'Normal',
    'cooldown': 30,
    'iconUrl': 'assets/icons/summoner/c10s14.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Ignore Collision',
            'description': {
              'en':
                  'Increases your movement speed by 10% during Shurudy summoning, ignoring collisions with normal monsters.',
              'ru':
                  'Увеличивает скорость передвижения на 10% во время призыва Shurudy, позволяет проходить сквозь обычных монстров.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_48.webp',
          },
          {
            'name': 'High Speed Projectile',
            'description': {
              'en': 'Increase attack projectile speed by 20%.',
              'ru': 'Скорость атаки Шуруди увеличена на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_11.webp',
          },
          {
            'name': 'Growth of Light',
            'description': {
              'en': 'After 10s Shurudy’s attack gets 50% increase.',
              'ru': 'После 10 секунд призыва, урон духа увеличивается на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_50.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Smarty Shurudy',
            'description': {
              'en':
                  'Increase Shurudy\'s vision and attack range by 20% and decrease the hit interval.',
              'ru':
                  'Увеличивает поле зрения и радиус атак духа на 20%, уменьшает интервал между атаками.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_41.webp',
          },
          {
            'name': 'Buffed Shurudy',
            'description': {
              'en': 'Increase Shurudy\'s skill attack by 50%.',
              'ru': 'Увеличивает урон атак Шуруди на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_1.webp',
          },
          {
            'name': 'Vanity Shurudy',
            'description': {
              'en': 'Increase summon duration 5s.',
              'ru': 'Время жизни духа увеличено на 5 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_51.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Exhilarating light',
            'description': {
              'en':
                  'When Shurudy’s attack hit, it deals damage every second for 7 seconds, explodes on 3 stacks, causes big damage, and stuns for 2 seconds.',
              'ru':
                  'Атаки Шуруди наносят урон в течение 7 секунд, после каждой 3 атаки наносит большой урон и оглушает на 2 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_45.webp',
          },
          {
            'name': 'Mana Regeneration',
            'description': {
              'en':
                  'Increases the basic recovery rate of mana and party mana by 40% during Summoning.',
              'ru':
                  'При призыве увеличивает базовое восстановление маны для себя и членов группы на 40%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_79.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Ancient Spear',
    'class': {
      'en': 'Summoner',
      'ru': 'Призывательница',
    },
    'description': {
      'en':
          'After channeling mana for 2.5s, summon an ancient spear at the cursor point to deal 1174 damage and knock down, deals 821 additional damage in area.',
      'ru':
          'Призывает Древнее копье в указанную область, нанося 1174 урона и сбивая с ног противников в зоне непосредственного поражения, наносит 821 урона по области.'
    },
    'type': 'Cast 2.5 sec',
    'cooldown': 36,
    'iconUrl': 'assets/icons/summoner/c10s15.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Ancient Judgment',
            'description': {
              'en':
                  'An Ancient Spear explodes, causing additional damage and knocking down enemies.',
              'ru':
                  'Древнее копье взрывается, нанося дополнительный урон и опрокидывая противников.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_78.webp',
          },
          {
            'name': 'Rapid Casting',
            'description': {
              'en': 'Increase casting speed by 30%.',
              'ru': 'Время подготовки умения уменьшается на 30%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_41.webp',
          },
          {
            'name': 'Ancient Flow',
            'description': {
              'en':
                  'Skill distance reduced by 2m, but damage to enemies increases by 30%.',
              'ru':
                  'Дальность действия умения уменьшена на 2 метра, но урон увеличен на 30%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_53.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Blazing Spear',
            'description': {
              'en': '[Fire] Spear applies burn effect for 5s.',
              'ru': '[Огонь] Накладывает эффект горения на 5 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_13.webp',
          },
          {
            'name': 'Glacial Spear',
            'description': {
              'en':
                  '[Ice] Direct hit by spear freezes an enemy for 4 seconds and reduces the movement speed by 50% for 4 seconds at outer range.',
              'ru':
                  '[Холод] Замораживает цель на 4 секунды. Вокруг области снижает скорость передвижения на 50% в течение 4 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_14.webp',
          },
          {
            'name': 'Earth Spear',
            'description': {
              'en': '[Earth] Increases Incapacitate level by 1.',
              'ru': '[Земля] Увеличивает ослабляющий эффект на 1.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_15.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Condensed Power',
            'description': {
              'en':
                  'When an Ancient Spear is stuck, it gives off the intense aura and lasts 3s.',
              'ru':
                  'Когда древнее копье опускается на землю, наносит дополнительный урон противникам в течение 3 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_8.webp',
          },
          {
            'name': 'Ancient Power',
            'description': {
              'en':
                  'The damage done to the enemy is reduced by 20%, but the drops two more Ancient Spear.',
              'ru': 'Урон уменьшен на 20%, но создает 2 дополнительных копья.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_58.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Rayne\'s Protection',
    'class': {
      'en': 'Summoner',
      'ru': 'Призывательница',
    },
    'description': {
      'en':
          'Receives Rayne’s favor and creates a shield that absorbs damage 11% of life for 5 seconds.',
      'ru':
          'Создает щит, поглощающий урон равный 11% максимального здоровья в течение 5 секунд.'
    },
    'type': 'Normal',
    'cooldown': 40,
    'iconUrl': 'assets/icons/summoner/c10s16.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Wind of Protection',
            'description': {
              'en': 'Push enemies away at cast.',
              'ru': 'Отталкивает врагов при использовании умения.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_60.webp',
          },
          {
            'name': 'Focused Energy',
            'description': {
              'en':
                  'When you activate a skill, you gain a 30% chance of receiving 1 spirit sphere.',
              'ru':
                  'При использовании умения, на 30% увеличивается шанс получения 1 сферы духа.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_36.webp',
          },
          {
            'name': 'Light Footfall',
            'description': {
              'en':
                  'Movement speed is increased by 20% while shielding effect is maintained.',
              'ru':
                  'При активном щите, скорость передвижения увеличивается на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_11.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Barrier Enhancement',
            'description': {
              'en': 'Increase the shield amount by 100%.',
              'ru': 'Щит поглощает на 100% больше урона.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_75.webp',
          },
          {
            'name': 'Barrier Maintenance',
            'description': {
              'en': 'Shield duration increased by 3s.',
              'ru': 'Длительность щита увеличивается на 3 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_51.webp',
          },
          {
            'name': 'Clean',
            'description': {
              'en':
                  'When you activate a skill, you remove 1 harmful effect form party members within the 24m radius.',
              'ru':
                  'При активации умения снимает 1 негативный эффект с участников группы в радиусе 24 метров.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_65.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Resonance',
            'description': {
              'en':
                  'Shield breaks with explosion that causes stun for 4s to nearby enemy.',
              'ru':
                  'Когда щит разрушается, он взрывается, оглушая ближайшие цели на 4 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_44.webp',
          },
          {
            'name': 'Accelerating Shield',
            'description': {
              'en': 'Decrease by 30% global cooldown while shield is up.',
              'ru':
                  'Уменьшает время восстановления всех умений на 30% пока на вас есть щит.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_56.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Call of Destiny',
    'class': {
      'en': 'Arcana',
      'ru': 'Арканолог',
    },
    'description': {
      'en':
          'Throws a card in the specified direction, dealing 79 damage. After a short time, inflict additional 118 damage and launches enemy into the air.',
      'ru':
          'Бросает взрывоопасную карту в указанном направлении, нанося 79 урона. Через некоторое время наносит еще 118 урона и подкидывает в воздух.'
    },
    'type': 'Normal',
    'cooldown': 8,
    'iconUrl': 'assets/icons/arcana/c11s00.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Mental Fortification',
            'description': {
              'en': 'Mana cost reduced by 50%.',
              'ru': 'Снижает потребление маны на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_34.webp',
          },
          {
            'name': 'Piercing Strike',
            'description': {
              'en': 'Ignores 30% of the magical defense of a hit enemy.',
              'ru': 'Игнорирует 30% магической защиты противника.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_3.webp',
          },
          {
            'name': 'Sleek Motion',
            'description': {
              'en': 'Attack speed increases by 15%.',
              'ru': 'Скорость атаки повышена на 15%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_6.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Quick Draw',
            'description': {
              'en': '20% chance to draw a card on hit.',
              'ru': '20% шанс получить карту при атаке.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_66.webp',
          },
          {
            'name': 'Identified Weakness',
            'description': {
              'en':
                  'Increases damage done to enemies immune to control effects by 40%.',
              'ru': 'Увеличен урон на 40% по целям с иммунитетом к контролю.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_33.webp',
          },
          {
            'name': 'Dark Fate',
            'description': {
              'en':
                  'Increases the damage by 15% and increases the critical damage for 3s by 50%.',
              'ru':
                  'Увеличивает урон на 15% и увеличивает критический урон на 50% в течение 3 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_53.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Continuous Attack',
            'description': {
              'en':
                  'Changes the attack to a 3 hit attack. The third hit knocks up.',
              'ru':
                  'Количество атак увеличено до 3. Последняя атака подкидывает в воздух.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_54.webp',
          },
          {
            'name': 'Concentration of Fate',
            'description': {
              'en':
                  'Cast time reduced by 0.3s. Changes the attack to a single hit and increases damage by 100%.',
              'ru':
                  'Скорость подготовки умения снижена на 0.3 секунды, наносит один удар, урон увеличен на 100%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_41.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Unlimited Shuffle',
    'class': {
      'en': 'Arcana',
      'ru': 'Арканолог',
    },
    'description': {
      'en':
          'Several cards periodically inflict 85 damage in direct area. Launches enemies into the air with 36 damage and then hit the ground, inflicting 181 damage.',
      'ru':
          'Бросает несколько карт в указанную области, нанося урон 85 урона, в конце наносит 36 урона подкидывая врага и 181 урона ударяя врага об землю.'
    },
    'type': 'Point',
    'cooldown': 24,
    'iconUrl': 'assets/icons/arcana/c11s01.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Shuffle',
            'description': {
              'en':
                  'While use Unlimited Shuffle, the card rolls around the Arcana and deals 20% damage.',
              'ru': 'Карты наносят 20% урона вокруг.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_8.webp',
          },
          {
            'name': 'Quick Preparation',
            'description': {
              'en': 'Cooldown reduced by 4s.',
              'ru': 'Время восстановления умения уменьшено на 4 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.webp',
          },
          {
            'name': 'Quick Draw',
            'description': {
              'en':
                  'When you hit the last attack, you get a 30% chance to draw a card.',
              'ru':
                  'При свершении последней атаки вероятность получить карту равна 30%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_66.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Infinite Stroke',
            'description': {
              'en':
                  'Last attack makes the state of electric shock for 4s without throwing enemies in the air.',
              'ru': 'Вместо подбрасывания врагов электризует их на 4 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_17.webp',
          },
          {
            'name': 'Dark Nucleus',
            'description': {
              'en':
                  'Increases critical hit rate by 15%, and increases critical damage for 3s by 50%.',
              'ru':
                  'Шанс критического удара увеличен на 15%, критический урон увеличена на 50% в течение 3 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_19.webp',
          },
          {
            'name': 'Ultimate Shuffle',
            'description': {
              'en':
                  'The duration increased by 0.6 seconds, and the card fires even faster, increasing the number of hits by 3.',
              'ru':
                  'Длительность действия умения увеличена на 0.6 секунд, количество наносимых ударов за умение увеличивается на 3.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_40.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Predicted Death',
            'description': {
              'en':
                  'Increases the skill range by 40%, increases the damage by 40%.',
              'ru':
                  'Радиус действия умения увеличивается на 40%, урон от умения увеличен на 40% .'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_54.webp',
          },
          {
            'name': 'Storm of Destruction',
            'description': {
              'en':
                  'Move to 70% of your movement speed, and you will be able to fly all the cards 4m in front of you when landing.',
              'ru':
                  'Позволяет перемещаться с 70% обычной скорости, удерживая карты перед собой на расстоянии 4 метров.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_41.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Return',
    'class': {
      'en': 'Arcana',
      'ru': 'Арканолог',
    },
    'description': {
      'en':
          'Launches cards in the specified area, dealing 114 damage to the target. If the skill is activated again, knockdown the targets and deals additional 129 damage.',
      'ru':
          'Бросает перед собой в указанном направлении карты, нанося 114 урона. При повторном использовании наносит 129 урона, сбивая с ног врагов.'
    },
    'type': 'Combo',
    'cooldown': 12,
    'iconUrl': 'assets/icons/arcana/c11s02.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Quick Release',
            'description': {
              'en':
                  'Increases the critical hit rate your and party members by 15% for 10s.',
              'ru':
                  'Шанс критического удара группы увеличен на 15% в течение 10 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_4.webp',
          },
          {
            'name': 'Mind Focus',
            'description': {
              'en': 'Mana cost is reduced by 50%.',
              'ru': 'Потребление маны сокращено на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_34.webp',
          },
          {
            'name': 'Penetration Enhance',
            'description': {
              'en': 'Increases penetration rate of second skill attack by 1.',
              'ru': 'Эффект пробивания увеличен на 1.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_21.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Exposed Target',
            'description': {
              'en':
                  'Second skill attack damage is increased by 50% when target has been hit by first hit.',
              'ru':
                  'Урон второй атаки увеличен на 50% при успешной первой атаке.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_50.webp',
          },
          {
            'name': 'Capture Weakness',
            'description': {
              'en':
                  'Increases the damage done to your enemies immune to control effects by 40%.',
              'ru':
                  'Увеличивает урона на 40% по целям невосприимчивым у эффектам контроля.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_33.webp',
          },
          {
            'name': 'Concentrated Card',
            'description': {
              'en':
                  'Decreases the attack angle but increases attack range and damage by 20%.',
              'ru':
                  'Уменьшает угол атаки, но увеличивает дальность и урон на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_7.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Continuous Attack',
            'description': {
              'en':
                  'Changes the attack to a 3 hit attack. Last hit attack is increased by 50%.',
              'ru': 'Добавляется 3 атака, урон которой увеличен на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_40.webp',
          },
          {
            'name': 'Exposed Dark',
            'description': {
              'en':
                  '[Shadow] Increases 40% critical hit rate and 50% of critical damage for 5s.',
              'ru':
                  '[Тьма] Увеличивает шанс критического удара на 40% и критический урон на 50% течение 5 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_49.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Mysterious Rush',
    'class': {
      'en': 'Arcana',
      'ru': 'Арканолог',
    },
    'description': {
      'en':
          'Jump to the left dealing 113 damage and then move back dealing 138 damage.',
      'ru':
          'Персонаж прыгает влево, нанося 113 урона, после чего возвращается обратно, нанося 138 урона.'
    },
    'type': 'Combo',
    'cooldown': 14,
    'iconUrl': 'assets/icons/arcana/c11s03.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Mental Fortification',
            'description': {
              'en': 'Mana consumption reduced by 50%.',
              'ru': 'Потребление маны уменьшено на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_34.webp',
          },
          {
            'name': 'Penetration Enhance',
            'description': {
              'en': 'Increases penetration rate by 1.',
              'ru': 'Уровень пробивания увеличен на 1.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_21.webp',
          },
          {
            'name': 'Quick Draw',
            'description': {
              'en': '10% chance to draw a card each hit.',
              'ru': 'Вероятность получить карту при успешной атаке равна 10%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_66.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Escape Master',
            'description': {
              'en': 'Increases evasion rate by 30% during cast.',
              'ru': '30% уклонения во время использования умения.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_26.webp',
          },
          {
            'name': 'Rush Concentration',
            'description': {
              'en': 'As combo progresses, increases damage by 20%.',
              'ru': 'Увеличивает урон на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_58.webp',
          },
          {
            'name': 'Mobility Weakness',
            'description': {
              'en': 'Reduces enemy movement speeds hit by 50% for 3s.',
              'ru':
                  'Снижение скорости перемещения противника на 50% в течение 3 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_9.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Mysterious Retreat',
            'description': {
              'en': 'Can be used 2 times.',
              'ru': 'Позволяет использовать умение дважды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_83.webp',
          },
          {
            'name': 'Continuous Attack',
            'description': {
              'en':
                  'Increases number of attacks to 3, last hit pushes enemies back.',
              'ru':
                  'Увеличивает количество ударов до 3, последний отталкивает врагов.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_8.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Evoke',
    'class': {
      'en': 'Arcana',
      'ru': 'Арканолог',
    },
    'description': {
      'en':
          'Places a spell in a specified area for 10s that explodes, dealing 727 damage and knocking up, when the skill is used again.',
      'ru':
          'Устанавливает в указанном месте магический круг на 10 секунд, при повторном использовании умения наносит 727 урона, подбрасывая врагов.'
    },
    'type': 'Chain',
    'cooldown': 24,
    'iconUrl': 'assets/icons/arcana/c11s04.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Quick Preparation',
            'description': {
              'en': 'Cooldown reduced by 3s.',
              'ru': 'Время восстановления уменьшено на 3 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.webp',
          },
          {
            'name': 'Mental Fortification',
            'description': {
              'en': 'Mana consumption reduced by 50%.',
              'ru': 'Потребление маны уменьшено на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_34.webp',
          },
          {
            'name': 'Quick Draw',
            'description': {
              'en': '20% chance to draw a card each hit.',
              'ru': 'Вероятность получить карту увеличена на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_66.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Link Magic',
            'description': {
              'en': 'Damage to enemies increases by 25%.',
              'ru': 'Урон увеличен на 25%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_1.webp',
          },
          {
            'name': 'Mana Poisoning',
            'description': {
              'en':
                  'Damage reduced by 30% and no longer knocks up. Reduces movement speed by 40% and deals 15% continuous poison damage each second for 3s.',
              'ru':
                  'Урон уменьшен на 30%, не подбрасывает. Снижает скорость перемещения врагов на 40% и наносит 15% урона ядом в течение 3 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_45.webp',
          },
          {
            'name': 'Sharp Strike',
            'description': {
              'en': 'critical hit rate increases by 30%.',
              'ru': 'Шанс критического удара увеличен на 30%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_4.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Split Magic',
            'description': {
              'en':
                  'You can cast the skill twice within 3s. It will automatically detonate after 6s.',
              'ru':
                  'Позволяет использовать умение дважды в течение 3 секунд. Круги взрываются через 6 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_54.webp',
          },
          {
            'name': 'Nested Circle',
            'description': {
              'en':
                  'The number of attacks increases by 3, but the damage and attack range of the second attack is 50%, third attack damage and attack range is reduced by 75%.',
              'ru':
                  'Позволяет взрывать круг 3 раза. Радиус действия и урон второго взрыва уменьшен на 50%. Третьего на 75%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_8.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Quadra Accelerate',
    'class': {
      'en': 'Arcana',
      'ru': 'Арканолог',
    },
    'description': {
      'en':
          'Throws 4 straight-line cards, inflicting 62 damage each in the specified direction. Movement speed is increased during casting.',
      'ru':
          'Бросает карты в указанном направлении. Всего 4 заряда, каждый наносит по 62 урона. Позволяет перемещаться с увеличенной скоростью.'
    },
    'type': 'Normal',
    'cooldown': 8,
    'iconUrl': 'assets/icons/arcana/c11s05.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Penetration Enhance',
            'description': {
              'en': 'Increases penetration rate by 1.',
              'ru': 'Уровень пробивания увеличен на 1.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_21.webp',
          },
          {
            'name': 'Sleek Motion',
            'description': {
              'en': 'Attack speed increases by 20%.',
              'ru': 'Скорость атаки умения увеличена на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_41.webp',
          },
          {
            'name': 'Sharp Strike',
            'description': {
              'en':
                  'Attack hit increases the critical hit rate of party members by 15% for 8s.',
              'ru':
                  'Атака увеличивает шанс критического удара группы на 15% в течение 8 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_4.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Swift Movement',
            'description': {
              'en': 'Increases movement speed by 10%.',
              'ru': 'Скорость движения увеличена на 10%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_48.webp',
          },
          {
            'name': 'Ignore Collision',
            'description': {
              'en': 'No unit collision during the cast.',
              'ru':
                  'Позволяет проходить сквозь врагов во время использования умения.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_26.webp',
          },
          {
            'name': 'Increase Card',
            'description': {
              'en':
                  '5% chance to deal 20% additional damage and instantly apply 4 stacked cards.',
              'ru':
                  '5% шанс нанести 20% дополнительного урона и моментально добавляет 4 карты в цель.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_67.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Hexagon Enhancement',
            'description': {
              'en':
                  'Increases skill duration by 1s and cards fired from 4 to 6.',
              'ru':
                  'Длительность умения увеличена на 1 секунду, а количество атак увеличено с 4 до 6.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_54.webp',
          },
          {
            'name': 'Accelerate Concentration',
            'description': {
              'en': 'Increases damage by 30% to 90% per hit.',
              'ru': 'Увеличивает урон от 30% до 90% за каждый последующий удар.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_58.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Scratch Dealers',
    'class': {
      'en': 'Arcana',
      'ru': 'Арканолог',
    },
    'description': {
      'en':
          'You move 6m in a given direction and inflict 71 damage. If the skill is used again deals 106 damage and you knockdowns enemy.',
      'ru':
          'Прыгает вперед на 6 метров, нанося противнику 71 урона. При повторном использовании совершает финальный удар сверху вниз нанося 106 урона и опрокидывая противника.'
    },
    'type': 'Combo',
    'cooldown': 10,
    'iconUrl': 'assets/icons/arcana/c11s06.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Excellent Mobility',
            'description': {
              'en': 'Travel distance increased by 2m.',
              'ru': 'Дальность прыжка увеличена на 2 метра.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_10.webp',
          },
          {
            'name': 'Barely Exposed',
            'description': {
              'en':
                  'Increases the critical hit rate of your target and party members by 15% for 10s.',
              'ru':
                  'Повышает вероятность критического удара членам группы на 15% в течение 10 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_4.webp',
          },
          {
            'name': 'Muscle Spasm',
            'description': {
              'en': 'Increases fall down condition by 0.5s.',
              'ru': 'Увеличивает время опрокидывания на 0.5 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_9.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Sharp Blow',
            'description': {
              'en': 'Critical damage increases by 100%.',
              'ru': 'Увеличивает критический урон на 100%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_4.webp',
          },
          {
            'name': 'First Scratch',
            'description': {
              'en': 'Increases the damage done by 40% to enemes by first hit.',
              'ru': 'Урон от первого удара увеличен на 40%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_1.webp',
          },
          {
            'name': 'Identified Weakness',
            'description': {
              'en':
                  'Increases damage done to enemies immune to control effects by 40%.',
              'ru':
                  'Увеличен урон на 40% по врагам невосприимчивым эффектам контроля.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_33.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Squall',
            'description': {
              'en':
                  'Combo increases by 3 attack, second and last attack increase damage done to the enemy in the air by 50%.',
              'ru':
                  'Количество атак увеличено до 3, вторая и третья наносят на 50% больше урона по целям в воздухе.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_40.webp',
          },
          {
            'name': 'Safety Device',
            'description': {
              'en':
                  'Increases the combo by 3 and uses the last combo to move 7m backward, increasing attack speed by 10% and moving speed by 20% for 3 sec.',
              'ru':
                  'При 3 использовании отпрыгивает назад на 7 метров, увеличивая скорость атаки на 10% и скорость передвижения на 20% в течение 3 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_26.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Spiral Edge',
    'class': {
      'en': 'Arcana',
      'ru': 'Арканолог',
    },
    'description': {
      'en': 'Charge on 7m and throw cards around you. Deals 126 damage.',
      'ru':
          'Совершает прыжок в заданном направлении на 7 метров, нанося при приземлении 126 урона.'
    },
    'type': 'Chain',
    'cooldown': 14,
    'iconUrl': 'assets/icons/arcana/c11s07.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Mental Fortification',
            'description': {
              'en': 'Mana consumption reduced by 50%.',
              'ru': 'Потребление маны уменьшено на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_34.webp',
          },
          {
            'name': 'Quick Preparation',
            'description': {
              'en': 'Cooldown time decreases by 2s.',
              'ru': 'Время восстановления умения сокращено на 2 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.webp',
          },
          {
            'name': 'Excellent Mobility',
            'description': {
              'en': 'Travel distance increased by 1.4m.',
              'ru': 'Дистанция прыжка увеличена на 1.4 метра.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_10.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Stronger',
            'description': {
              'en': 'Spiral Edge during use, is immune to control effects.',
              'ru':
                  'Невосприимчивость к эффектам контроля во время использования.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_23.webp',
          },
          {
            'name': 'Ruthless Shot',
            'description': {
              'en':
                  'Reduces damage by 40% but adds an extra attack around the caster.',
              'ru':
                  'Уменьшает урон на 40% за атаку, но добавляет дополнительную атаку.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_8.webp',
          },
          {
            'name': 'Sharp Blow',
            'description': {
              'en':
                  'Increases critical strike damage taken by you for 3s by 50%.',
              'ru': 'Критический урон увеличен на 50% в течение 3 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_4.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Card Amplification',
            'description': {
              'en':
                  'Deals an 100% additional damage on landing to enemies within 4 meters of player.',
              'ru':
                  'Наносит 100% дополнительного урона при приземлении вокруг в радиусе 4 метров.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_54.webp',
          },
          {
            'name': 'Light Step',
            'description': {
              'en':
                  'After using the skill, movement speed increased by 40% and no collision for 2s.',
              'ru':
                  'Скорость перемещения увеличена на 40%, позволяет проходить сквозь врагов в течение 2 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_48.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Flower Dance',
    'class': {
      'en': 'Arcana',
      'ru': 'Арканолог',
    },
    'description': {
      'en':
          'You move 11m in a given direction while throwing cards around you, dealing 51 damage to enemies. By using the skill a second time, you return to your starting position dealing 202 damage.',
      'ru':
          'Двигается в указанном направлении на 11 метров, нанося всем вокруг периодический урон равным 51, в конце наносит 202 урона. При повторном нажатии в любой момент перемещает персонажа обратно.'
    },
    'type': 'Combo',
    'cooldown': 20,
    'iconUrl': 'assets/icons/arcana/c11s08.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'critical hit rate',
            'description': {
              'en':
                  'Critical hit rate increases by 5%, up to 50% depending on skill duration.',
              'ru':
                  'Шанс критического удара увеличивается на от 5% до 50% в зависимости от длительности умения.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_4.webp',
          },
          {
            'name': 'Damage Increased',
            'description': {
              'en': 'Damage increased by 20%.',
              'ru': 'Урон умением увеличен на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_1.webp',
          },
          {
            'name': 'Light Step',
            'description': {
              'en':
                  'Using teleportation increases movement speed by 20% for 3s.',
              'ru':
                  'Конечный возврат на исходную точку увеличивает скорость передвижения на 20% в течение 3 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_11.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Wide Attack',
            'description': {
              'en': 'Radius increases by 25%.',
              'ru': 'Радиус атаки увеличен на 25%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_4.webp',
          },
          {
            'name': 'Exhilarating Dance',
            'description': {
              'en':
                  '[Lighting] Causing a 30% chance to electrify enemies for 3s.',
              'ru':
                  '[Молния] Шанс электролизовать врагов увеличен на 30% в течение 3 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_17.webp',
          },
          {
            'name': 'Blooming Flower',
            'description': {
              'en': '[Shadow] Critical damage increases by 75%.',
              'ru': '[Тьма] Критический урон увеличен на 75%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_19.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Aggressive Visibility',
            'description': {
              'en': 'Reduces number of attacks by 4, increases damage by 60%.',
              'ru': 'Количество атак уменьшено на 4, увеличивает урон на 60%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_41.webp',
          },
          {
            'name': 'Fatal Visibility',
            'description': {
              'en':
                  '100% damage explosion at destination when teleporting back.',
              'ru':
                  'При возврате на исходную позицию наносит на 100% больше урона.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_54.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Checkmate',
    'class': {
      'en': 'Arcana',
      'ru': 'Арканолог',
    },
    'description': {
      'en':
          'Quickly launch a card in the direction of the mouse for 5s inflicting 55 damage.',
      'ru':
          'Бросает множество карт в указанном направлении на протяжении 5 секунд, нанося 55 урона.'
    },
    'type': 'Hold',
    'cooldown': 24,
    'iconUrl': 'assets/icons/arcana/c11s09.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Piercing Strike',
            'description': {
              'en':
                  'Each time you hit a Strike Strike card, the damage it inflicts on the enemy increases by 5%.',
              'ru':
                  'Каждая следующая брошенная карта наносит на 5% больше урона.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_58.webp',
          },
          {
            'name': 'Sharp Strike',
            'description': {
              'en': 'Increases critical hit rate by 15%.',
              'ru': 'Шанс критического удара увеличен на 15%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_4.webp',
          },
          {
            'name': 'Card Increase',
            'description': {
              'en': 'Increases maximum number of card stacks from 3 to 4.',
              'ru':
                  'Увеличивает максимально возможное количество наложенных карт умением с 3 до 4.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_67.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Thundermate',
            'description': {
              'en':
                  '[Lighting] Increasing the attack speed by 30%, and causing it to electrify enemies for 3 seconds with a 30% chance.',
              'ru':
                  '[Молния] Увеличивает скорость атаки на 30% и с вероятностью 30% электризует врагов на 3 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_17.webp',
          },
          {
            'name': 'Concentrated Darkness',
            'description': {
              'en':
                  '[Shadow] Increases the damage done by the Checkmate by 10% for 5s, maximum up to 100%.',
              'ru':
                  '[Тьма] Увеличивает урон умением на 10% в течение 5 секунд. Суммируется до 10 раз.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_19.webp',
          },
          {
            'name': 'Identified Weakness',
            'description': {
              'en':
                  'Increases the Incapacitate level by 1 and increases damage done to enemies immune to control effects by 50%.',
              'ru':
                  'Увеличивает ослабляющий эффект на 1 и урон по врагам невосприимчивым к эффектам контроля на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_33.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Wave of Cards',
            'description': {
              'en': 'Fans out attacks in a four-directional cone fan.',
              'ru': 'Бросает по 4 карты веером.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_54.webp',
          },
          {
            'name': 'Deadline',
            'description': {
              'en':
                  'When holding the skill for longer than 0.5s you throw explosive cards inflict 600% damage and knocks targets down.',
              'ru':
                  'При удерживании умения дольше 0.5 секунды выпущенная карта наносит 600% и сбивает с ног врага.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_40.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Stream of Edge',
    'class': {
      'en': 'Arcana',
      'ru': 'Арканолог',
    },
    'description': {
      'en':
          'Open 2 portals at desired location for 5s, periodically inflicts 21 damage.',
      'ru':
          'Создает 2 портала в указанной области на 5 секунд, наносящие суммарно 21 периодического урона противникам.'
    },
    'type': 'Point',
    'cooldown': 24,
    'iconUrl': 'assets/icons/arcana/c11s10.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Card Increase',
            'description': {
              'en':
                  'Increases Floating Cards stacks from one cast from 2 to 3.',
              'ru':
                  'Увеличивает максимально возможное количество наложенных карт умением с 2 до 3.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_67.webp',
          },
          {
            'name': 'Movement Speed',
            'description': {
              'en': 'Your movement speed increases by 20% for 3s.',
              'ru':
                  'Увеличивает скорость перемещения на 20% в течение 3 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_11.webp',
          },
          {
            'name': 'Edge Night',
            'description': {
              'en': 'Final strike explodes, causing additional damage.',
              'ru':
                  'Последняя атака вызывает взрыв и наносит дополнительный урон.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_78.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Deathwheel',
            'description': {
              'en': 'Deals 25% more damage to enemies.',
              'ru': 'Наносимый урон увеличен на 25%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_81.webp',
          },
          {
            'name': 'Thunder Stream',
            'description': {
              'en':
                  '[Lighting] Electric shock state for 3 seconds when hit 4 times in a short time.',
              'ru': '[Молния] Электризует на 3 секунды и наносит 4 удара.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_17.webp',
          },
          {
            'name': 'Darkness Edge',
            'description': {
              'en':
                  '[Shadow] Each attack increases critical hit rate by 3% for 3s, up to 15%.',
              'ru':
                  '[Тьма] Каждая атака увеличивает шанс критического удара на 3% в течение 3 секунд, суммарно до 15%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_19.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Stream Wave',
            'description': {
              'en':
                  'Skill slowly travels forward and increases damage by 150%.',
              'ru': 'Портал перемещается вперед с увеличенным уроном на 150%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_52.webp',
          },
          {
            'name': 'Perfect Stream',
            'description': {
              'en': 'Portal shape is changed into a triangle form.',
              'ru': 'Создает треугольник из порталов.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_54.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Infinity Rain',
    'class': {
      'en': 'Arcana',
      'ru': 'Арканолог',
    },
    'description': {
      'en': 'Throwing cards at the target location dealing 98-136-192 damage.',
      'ru': 'Совершает 3 броска карт по 98-136-192 урона соответственно.'
    },
    'type': 'Combo',
    'cooldown': 20,
    'iconUrl': 'assets/icons/arcana/c11s11.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Quick Preparation',
            'description': {
              'en': 'Cooldown reduced by 4s.',
              'ru': 'Время восстановления уменьшено на 4 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.webp',
          },
          {
            'name': 'Card Increase',
            'description': {
              'en': 'Increases maximum number of card stacks from 1 to 2.',
              'ru':
                  'Увеличивает максимально возможное количество наложенных карт умением с 1 до 2.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_67.webp',
          },
          {
            'name': 'Sharp Strike',
            'description': {
              'en': 'Increases critical hit rate by 15%.',
              'ru': 'Шанс критического удара увеличен на 15%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_4.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Master of Evasion',
            'description': {
              'en': 'Increases evasion rate by 30% while using skill.',
              'ru': '30% уклонения во время использования умения.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_26.webp',
          },
          {
            'name': 'Uniform Attack',
            'description': {
              'en': 'All attacks deal damage by 75% of first hit.',
              'ru':
                  'Все три атаки наносят одинаковый урон равный 75% от первой атаки.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_50.webp',
          },
          {
            'name': 'Defenseless Targets',
            'description': {
              'en': 'Increases damage done to a knocked down targets by 40%.',
              'ru':
                  'Все атаки по опрокинутому противнику наносят на 40% больше урона.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_29.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Last Infinite',
            'description': {
              'en':
                  'Increased damage by 60%. Fallen enemies struck will remain fallen.',
              'ru':
                  'Урон увеличен на 60% по целям, имеющим иммунитет к контролю. Не дает опрокинутому ранее противнику подняться.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_9.webp',
          },
          {
            'name': 'Infinite Maneuver',
            'description': {
              'en': 'Reduces number of hits to 1 and increases damage by 200%.',
              'ru': 'Совершает 1 атаку вместо 3, увеличивает урон на 200%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_53.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Celestial Rain',
    'class': {
      'en': 'Arcana',
      'ru': 'Арканолог',
    },
    'description': {
      'en':
          'The card explodes at the target location inflicting 174 damage. Inflicts 71 additional damage to knock-up enemies by bringing them back to the ground. Inflicts an additional neutralization effect.',
      'ru':
          'Бросает в указанное место карты, нанося 174 урона. Если в зоне находились цели, подкинутые в воздух, то им наносится дополнительно 71 урона. Накладывает ослабляющий эффект.'
    },
    'type': 'Point',
    'cooldown': 9,
    'iconUrl': 'assets/icons/arcana/c11s12.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Sleek Motion',
            'description': {
              'en': 'Attack speed increases by 15%.',
              'ru': 'Скорость атаки повышена на 15%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_41.webp',
          },
          {
            'name': 'Sharp Strike',
            'description': {
              'en': 'Increases critical hit rate by 20%.',
              'ru': 'Шанс критического удара увеличен на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_4.webp',
          },
          {
            'name': 'Quick Preparation',
            'description': {
              'en': '50% chance to reset cooldown on cast.',
              'ru': 'С вероятностью 50% не потребляет ману..'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_34.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Destroyer Card',
            'description': {
              'en': 'Critical damage increased by 20% to 80%.',
              'ru': 'Критический урон увеличен от 20% до 80%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_5.webp',
          },
          {
            'name': 'Sharp Card',
            'description': {
              'en':
                  'In addition to the existing effect if target has 4 stacks, damage increases by 20% for 4 seconds.',
              'ru':
                  'Урон увеличен на 20% в течение 4 секунд по целям с 4 наложенными картами.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_68.webp',
          },
          {
            'name': 'Strengthened Strike',
            'description': {
              'en': 'Damage dealt increased by 25%.',
              'ru': 'Урон увеличен на 25%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_1.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Heavy Rain',
            'description': {
              'en':
                  'Adds another hit with 100% additional damage. This hit deals 50% more damage if the enemies are knocked down.',
              'ru':
                  'Дополнительная атака наносит 100% урона. Урон увеличивается еще на 50% по сбитыми с ног врагам.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_54.webp',
          },
          {
            'name': 'Detect Weakness',
            'description': {
              'en':
                  'Damage increases by 25% to 100% per Floating Cards stack against a target immune to control effects. Increases cooldown by 8s.',
              'ru':
                  'Урон увеличен от 25% до 100% в зависимости от суммарных эффектов от умения по целям, невосприимчивым к эффектам контроля. Время восстановления увеличено на 8 секунд.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_33.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Four Cards',
    'class': {
      'en': 'Arcana',
      'ru': 'Арканолог',
    },
    'description': {
      'en':
          'Quickly launch 4 cards, dealing 126 damage in the specified direction. Adds an additional neutralization effect.',
      'ru':
          'Бросает в указанном направлении 4 карты, нанося 126 урона. Накладывает ослабляющий эффект.'
    },
    'type': 'Normal',
    'cooldown': 12,
    'iconUrl': 'assets/icons/arcana/c11s13.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Quick Preparation',
            'description': {
              'en': '44% chance to reset cooldown on cast.',
              'ru': '44% шанс моментально восстановить умение.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.webp',
          },
          {
            'name': 'Mental Fortification',
            'description': {
              'en': 'Mana consumption reduced by 44%.',
              'ru': 'Снижает потребление маны на 44%..'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_34.webp',
          },
          {
            'name': 'Penetration Enhance',
            'description': {
              'en': 'Increases penetration rate by 1.',
              'ru': 'Эффект пробивания увеличен на 1.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_21.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Four Stack',
            'description': {
              'en':
                  'Damage dealt by player is increased by 44% for 4s every time the skill is cast 4 times.',
              'ru':
                  'Урон увеличивается на 44% в течение 4 секунд после 4 использования умения.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_50.webp',
          },
          {
            'name': 'Strength',
            'description': {
              'en': 'Become immune to control effects during skill use.',
              'ru': 'Невосприимчивость эффектам контроля.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_23.webp',
          },
          {
            'name': 'Card Enhancement',
            'description': {
              'en': 'Damage dealt increased by 44%.',
              'ru': 'Урон увеличен на 44%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_1.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Delayed Shock',
            'description': {
              'en':
                  'Reduces damage to 44% and places a debuff on the target. 4s later, it deals 444% more damage.',
              'ru':
                  'Наносит 44% урона и дополнительно 444% урона через 4 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_78.webp',
          },
          {
            'name': 'Continuous Attack',
            'description': {
              'en':
                  'Skill becomes a combo, allowing a 2nd hit by holding down the key.',
              'ru': 'Позволяет использовать умение дважды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_38.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Serendipity',
    'class': {
      'en': 'Arcana',
      'ru': 'Арканолог',
    },
    'description': {
      'en':
          'You surround yourself with cards, dealing 71 damage to nearby enemies, and throw them in the desired direction for 107 damage. Adds neutralization effect.',
      'ru':
          'Наносит 71 урон картами и дополнительно 107 урона при выбранном направлении. Накладывает ослабляющий эффект.'
    },
    'type': 'Normal',
    'cooldown': 16,
    'iconUrl': 'assets/icons/arcana/c11s14.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Piercing Strike',
            'description': {
              'en': '50% chance to ignore 50% of enemy’s magic defense.',
              'ru': '50% шанс игнорировать 50% магической защиты противника.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_3.webp',
          },
          {
            'name': 'Quickdraw',
            'description': {
              'en': '10% chance that a skill does not consume stacks.',
              'ru': 'С вероятностью 10% не сбивает наложенный эффект с цели.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_66.webp',
          },
          {
            'name': 'Mental Fortification',
            'description': {
              'en': '50% chance to not consume MP.',
              'ru': 'Снижает потребление маны на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_34.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Accidental Blow',
            'description': {
              'en':
                  'Has a 20% chance to increase the critical damage by 200% per Floating Cards stack.',
              'ru': 'Критический урон может быть увеличен на 200% с шансом 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_68.webp',
          },
          {
            'name': 'Accidental Bang',
            'description': {
              'en':
                  'Increases the attack speed by 30% and stuns for 3 seconds with a 20% chance per stack. No longer knocks down.',
              'ru':
                  'Увеличивает скорость атаки на 30% и оглушает на 3 секунда с вероятностью 20% за каждую карту. Не сбивает с ног.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_44.webp',
          },
          {
            'name': 'Strengthened Strike',
            'description': {
              'en': 'Increases damage done by Serendipity to enemies by 100%.',
              'ru': 'Урон умения увеличен на 100%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_1.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Continuous Attack',
            'description': {
              'en':
                  '[Shadow] Skill is changed to combo damage to the enemy is increased by 40%.',
              'ru': '[Тьма] Урон увеличен на 40%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_40.webp',
          },
          {
            'name': 'Designed Luck',
            'description': {
              'en':
                  'Increases the odds of other Tripod talents within this skill activating by 20%.',
              'ru': 'Увеличивает вероятность выбранных улучшений умения на 20%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_36.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Dark Resurrection',
    'class': {
      'en': 'Arcana',
      'ru': 'Арканолог',
    },
    'description': {
      'en':
          'Throw a card at the indicated location and summon a demon that deals 45-45-365 damage for 3s. Adds neutralization effect and fear.',
      'ru':
          'Бросает карту в указанную область, вызывая демона, который наносит 45-45-365 урона в течение 3 секунд. Накладывает ослабляющий эффект и вызывает страх.'
    },
    'type': 'Point',
    'cooldown': 36,
    'iconUrl': 'assets/icons/arcana/c11s15.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Sleek Motion',
            'description': {
              'en': 'Attack speed increases by 10%.',
              'ru': 'Скорость атаки умения повышена на 10%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_41.webp',
          },
          {
            'name': 'Piercing Strike',
            'description': {
              'en': 'Ignores 30% of enemy’s magic defense.',
              'ru': 'Игнорирует 30% магической защиты противника.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_3.webp',
          },
          {
            'name': 'Mental Fortification',
            'description': {
              'en': 'Mana Consumption reduced by 50%.',
              'ru': 'Потребление маны уменьшено на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_34.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Quickdraw',
            'description': {
              'en': '15% chance to draw a Tarot card on last hit.',
              'ru': 'Вероятность 15% получать карту при последнем ударе.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_66.webp',
          },
          {
            'name': 'Fatal Card',
            'description': {
              'en':
                  'Increases critical chance by 15% to 60% depending on Floating Cards.',
              'ru':
                  'Шанс критического удара увеличен от 15% до 60% в зависимости от суммарных эффектов умения.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_4.webp',
          },
          {
            'name': 'Intense Card',
            'description': {
              'en':
                  'Increases damage by 10% to 40% depending on Floating Cards.',
              'ru':
                  'Увеличивает урон от 10% до 40% в зависимости от суммарных эффектов умения.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_1.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Fear of Death',
            'description': {
              'en':
                  'Causes enemies hit by the last attack to be poisoned for 3s and reduces casting animation time for this skill.',
              'ru':
                  'Увеличивает скорость подготовки умения и отравляет цель на 3 секунды последней атакой.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_45.webp',
          },
          {
            'name': 'Anger Strike',
            'description': {
              'en':
                  'Critical damage increased by 50%, and the last attack strikes the ground, pushing enemies into the middle, causing 30% more damage. Not fear any more.',
              'ru':
                  'Критической урон увеличен на 50%. Последняя атака стягивает врагов, нанося 30% урона. Эффект страха не накладывается.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_53.webp',
          },
        ]
      }
    ],
  },
  {
    'name': 'Secret Garden',
    'class': {
      'en': 'Arcana',
      'ru': 'Арканолог',
    },
    'description': {
      'en':
          'Instantly deals 75 damage to nearby enemies and knocks down with 4 stack of Floating Card. Adds an neutralization effect.',
      'ru':
          'Наносит 75 урона и сбивает с ног, если суммарный эффект умением достигает 4. Накладывает ослабляющий эффект.'
    },
    'type': 'Normal',
    'cooldown': 8,
    'iconUrl': 'assets/icons/arcana/c11s16.webp',
    'tripod': [
      {
        'tier': 1,
        'skills': [
          {
            'name': 'Quick Preparation',
            'description': {
              'en': 'Cooldown time is reduced by 4.',
              'ru': 'Время восстановления умения сокращено на 4 секунды.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_56.webp',
          },
          {
            'name': 'Mental Fortification',
            'description': {
              'en': 'Mana consumption reduced by 50%.',
              'ru': 'Потребление маны уменьшено на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_34.webp',
          },
          {
            'name': 'Sharp Strike',
            'description': {
              'en': 'Increases critical hit rate by 15%',
              'ru': 'Шанс критического удара увеличен на 15%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_4.webp',
          },
        ]
      },
      {
        'tier': 2,
        'skills': [
          {
            'name': 'Perfect Secret',
            'description': {
              'en': '40% additional damage to enemies with 4 card stacks.',
              'ru': 'Урон увеличен на 40% при 4 суммарном эффекте умения.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_68.webp',
          },
          {
            'name': 'Down Attack',
            'description': {
              'en':
                  '[Lighting] Damage reduced by 30%, however knocks down enemies if they have Floating Cards stacks.',
              'ru':
                  '[Молния] Урон уменьшен на 30%, сбивает с ног врагов с любым количеством эффекта от умения.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_9.webp',
          },
          {
            'name': 'Darkness Garden',
            'description': {
              'en': '[Shadow] Increases critical damage by 100%.',
              'ru': '[Тьма] Критический урон увеличен на 100%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_49.webp',
          },
        ]
      },
      {
        'tier': 3,
        'skills': [
          {
            'name': 'Secret Chance',
            'description': {
              'en': 'Increases Floating Cards detonation damage by 50%.',
              'ru': 'Урон умением увеличен на 50%.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_50.webp',
          },
          {
            'name': 'Trained Performance',
            'description': {
              'en': 'Attack range increased by 2 meters.',
              'ru': 'Радиус действия увеличен на 2 метра.'
            },
            'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_7.webp',
          },
        ]
      }
    ],
  },
  // {
  //   'name': 'Degeneration',
  //   'class': 'Lance Master',
  //   'description': {'en':'Swinging a spear twice',
  //   'type': 'Normal',
  //   'cooldown': 6,
  //   'iconUrl': 'assets/icons/lancemaster/c12s00.webp',
  //   'tripod': [
  //     {
  //       'tier': 1,
  //       'skills': [
  //         {
  //           'name': 'Flame Cutting',
  //           'description': {'en':'[Fire] Inflicts a burn for 5s.',
  //           'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_13.webp',
  //         },
  //         {
  //           'name': 'Ice',
  //           'description': {'en':'Reduce the target 30% movement speed for 5 second.',
  //           'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_14.webp',
  //         },
  //         {
  //           'name': 'Earth',
  //           'description':
  //               'Increase 20% more dmg for down enemy or enemy being stuck from the change of environment',
  //           'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_15.webp',
  //         },
  //       ]
  //     },
  //     {
  //       'tier': 2,
  //       'skills': [
  //         {
  //           'name': 'Airbound',
  //           'description': {'en':'Increase damage and launch the enemy into the air.',
  //           'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_9.webp',
  //         },
  //         {
  //           'name': 'Last Judgment',
  //           'description':
  //               'Consume 10% of the crescent blade (Identity) to boost 40% dmg, if your gauge less than 10% then it won’t apply.',
  //           'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_91.webp',
  //         },
  //         {
  //           'name': 'Specialization',
  //           'description':
  //               'Increase dmg for single target 30% / +5% for more than 2 / +10% for more than 5 / +20% for more than 10 enemies.',
  //           'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_90.webp',
  //         },
  //       ]
  //     },
  //     {
  //       'tier': 3,
  //       'skills': [
  //         {
  //           'name': 'Space Cutter',
  //           'description':
  //               'Increase 20% range of the skill + dealing 50% dmg for the last target it hit, the last hit will be 100% critical.',
  //           'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_88.webp',
  //         },
  //         {
  //           'name': 'Trackpot',
  //           'description':
  //               'Increase 60% dmg but can’t move freely while using the skill, increase 100% effect for Flame / Ice / Earth effect from tripod 1 + Increase the Destructive level by 1 (Medium).',
  //           'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_77.webp',
  //         },
  //       ]
  //     }
  //   ],
  // },
  // {
  //   'name': 'Wind Hammer',
  //   'class': 'Lance Master',
  //   'description':
  //       'Swinging the spear in all directions and collects the enemy in front.',
  //   'type': 'Normal',
  //   'cooldown': 12,
  //   'iconUrl': 'assets/icons/lancemaster/c12s01.webp',
  //   'tripod': [
  //     {
  //       'tier': 1,
  //       'skills': [
  //         {
  //           'name': 'Mana Control',
  //           'description': {'en':'Mana consumption reduced by 50%.',
  //           'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_34.webp',
  //         },
  //         {
  //           'name': 'Concussion',
  //           'description': {'en':'Increases the Incapacitate effect.',
  //           'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_69.webp',
  //         },
  //         {
  //           'name': 'Bounding',
  //           'description': {'en':'Reduces enemy movement speed by 50% for 2s.',
  //           'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_47.webp',
  //         },
  //       ]
  //     },
  //     {
  //       'tier': 2,
  //       'skills': [
  //         {
  //           'name': 'Specialization',
  //           'description':
  //               'Increase dmg for single target 30% / +5% for more than 2 / +10% for more than 5 / +20% for more than 10 enemies.',
  //           'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_90.webp',
  //         },
  //         {
  //           'name': 'Rage',
  //           'description': {'en':'Increase damage by 30% for bosses.',
  //           'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_33.webp',
  //         },
  //         {
  //           'name': 'Last Judgment',
  //           'description':
  //               'Consume 10% of the crescent blade (Identity) to boost 40% dmg, if your gauge less than 10% then it won’t apply.',
  //           'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_91.webp',
  //         },
  //       ]
  //     },
  //     {
  //       'tier': 3,
  //       'skills': [
  //         {
  //           'name': 'Face Me',
  //           'description':
  //               'Change the skill to 2 time step, dealing 100% damage.',
  //           'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_88.webp',
  //         },
  //         {
  //           'name': 'Quick Access',
  //           'description':
  //               'Change the skill to a slam attack, dealing 50% dmg and 100% crit damage.',
  //           'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_77.webp',
  //         },
  //       ]
  //     }
  //   ],
  // },
  // {
  //   'name': 'Heat',
  //   'class': 'Lance Master',
  //   'description':
  //       'Moves 4 meters forward, dealing 3 hits and throw opponents in the air.',
  //   'type': 'Normal',
  //   'cooldown': 10,
  //   'iconUrl': 'assets/icons/lancemaster/c12s02.webp',
  //   'tripod': [
  //     {
  //       'tier': 1,
  //       'skills': [
  //         {
  //           'name': 'Quick Hand',
  //           'description': {'en':'Attack speed increases by 15%.',
  //           'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_41.webp',
  //         },
  //         {
  //           'name': 'Quick Hit',
  //           'description': {'en':'Increases critical hit rate by 15%.',
  //           'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_4.webp',
  //         },
  //         {
  //           'name': 'Specialization',
  //           'description':
  //               'Increase dmg for single target 30% / +3% for more than 2 / +7% for more than 5 / +15% for more than 10 enemies.',
  //           'iconUrl': 'assets/icons/tripod/Tripod_Tier_1_90.webp',
  //         },
  //       ]
  //     },
  //     {
  //       'tier': 2,
  //       'skills': [
  //         {
  //           'name': 'Flame',
  //           'description':
  //               'Burn the target for 5 second, can stack up to 5 stack.',
  //           'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_13.webp',
  //         },
  //         {
  //           'name': 'Ice',
  //           'description':
  //               'Reduce the target 10% movement speed for 5 second, when reaching 5 stack, the enemy will be stun for 3 second.',
  //           'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_14.webp',
  //         },
  //         {
  //           'name': 'Enhanced Blow',
  //           'description': {'en':'Damage increases by 25%.',
  //           'iconUrl': 'assets/icons/tripod/Tripod_Tier_2_0.webp',
  //         },
  //       ]
  //     },
  //     {
  //       'tier': 3,
  //       'skills': [
  //         {
  //           'name': 'Spin',
  //           'description':
  //               'Increase the attack up to 2 time, increase the range for 2m but reduce the number of hit down to 3, increase the dmg up to 50%.',
  //           'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_40.webp',
  //         },
  //         {
  //           'name': 'Rotation',
  //           'description':
  //               'Increases the number of strikes by 7 and increases the damage done by the enemy by 80%.',
  //           'iconUrl': 'assets/icons/tripod/Tripod_Tier_3_39.webp',
  //         },
  //       ]
  //     }
  //   ],
  // },
];

// {
//   'name': '',
//   'class': '',
//   'description': {'en':'',
//   'type': 'Normal',
//   'cooldown': 1,
//   'iconUrl': 'assets/icons/',
//   'tripod': [
//     {
//       'tier': 1,
//
//       'skills': [
//         {
//           'name': '',
//           'description': {'en':'',
//           'iconUrl': 'assets/icons/tripod/',
//         },
//         {
//           'name': '',
//           'description': {'en':'',
//           'iconUrl': 'assets/icons/tripod/',
//         },
//         {
//           'name': '',
//           'description': {'en':'',
//           'iconUrl': 'assets/icons/tripod/',
//         },
//       ]
//     },
//     {
//       'tier': 2,
//
//       'skills': [
//         {
//           'name': '',
//           'description': {'en':'',
//           'iconUrl': 'assets/icons/tripod/',
//         },
//         {
//           'name': '',
//           'description': {'en':'',
//           'iconUrl': 'assets/icons/tripod/',
//         },
//         {
//           'name': '',
//           'description': {'en':'',
//           'iconUrl': 'assets/icons/tripod/',
//         },
//       ]
//     },
//     {
//       'tier': 3,
//
//       'skills': [
//         {
//           'name': '',
//           'description': {'en':'',
//           'iconUrl': 'assets/icons/tripod/',
//         },
//         {
//           'name': '',
//           'description': {'en':'',
//           'iconUrl': 'assets/icons/tripod/',
//         },
//       ]
//     }
//   ],
// },
