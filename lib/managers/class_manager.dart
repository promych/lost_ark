import 'package:flutter/foundation.dart';

import '../models/class.dart';
import '../helpers/lost_ark_icons.dart';

class ClassManager extends ChangeNotifier {
  List<CharacterClass> _classList;

  ClassManager.instance()
      : _classList =
            _classData.map((item) => CharacterClass.fromJson(item)).toList();

  List<String> get getArchetypes => [
        'Warrior',
        'Fighter',
        'Hunter',
        'Magician',
      ];

  List<CharacterClass> get getAllClasses => _classList;

  List<CharacterClass> getClassesByArchetype(String archetype) =>
      _classList.where((item) => item.archetype == archetype).toList();

  CharacterClass getClassByName(String name) =>
      _classList.where((item) => item.name == name).first;
}

const List<Map<String, dynamic>> _classData = [
  {
    'name': 'Arcana',
    'nameRU': 'Арканолог',
    'archetype': 'Magician',
    'archetypeRU': 'Маг',
    'description':
        'The Arcana uses cards as medium of powerful spells. She can cast cards chosen by a roulette wheel that spins according to special conditions.',
    'descriptionRU':
        'Этот магический персонаж вооружен колодой карт. С помощью мощных и разнообразных заклинаний он наносит урон по врагу.',
    'weapon': 'Tarot Card',
    'stats': {
      'control': 5,
      'speed': 60,
      'defense': 10,
      'attack': 90,
      'range': 50,
      'support': 30,
    },
    'icon': LostArk.class_arcana,
  },
  {
    'name': 'Bard',
    'nameRU': 'Менестрель',
    'archetype': 'Magician',
    'archetypeRU': 'Маг',
    'description': 'Bard makes doot doots that help everyone!',
    'descriptionRU': 'Использует мелодии для поддержки сопартицев.',
    'weapon': 'Liana Harp',
    'stats': {
      'control': 1,
      'speed': 20,
      'defense': 40,
      'attack': 30,
      'range': 60,
      'support': 90,
    },
    'icon': LostArk.class_bard,
  },
  {
    'name': 'Summoner',
    'nameRU': 'Призывательница',
    'archetype': 'Magician',
    'archetypeRU': 'Маг',
    'description':
        'The Summoner can command beasts by interacting with spirits. The power of the Ancient Spirits are especially immense.',
    'descriptionRU': 'Может призывать зверей и управлять древними духами.',
    'weapon': 'Staff',
    'stats': {
      'control': 3,
      'speed': 30,
      'defense': 20,
      'attack': 60,
      'range': 80,
      'support': 50,
    },
    'icon': LostArk.class_summoner,
  },
  {
    'name': 'Devil Hunter',
    'nameRU': 'Охотник на демонов',
    'archetype': 'Hunter',
    'archetypeRU': 'Стрелок',
    'description':
        'The Devil Hunter is one hell of a gun-slinger. He makes use of three different stances.',
    'descriptionRU':
        'Стрелок может использовать в своем вооружении огнестрельное оружие. На выбор парные пистолеты, винтовки и дробовики при смене оружия, у него меняются умения.',
    'weapon': 'Gun',
    'stats': {
      'control': 5,
      'speed': 50,
      'defense': 40,
      'attack': 70,
      'range': 60,
      'support': 20,
    },
    'icon': LostArk.class_devilhunter,
  },
  {
    'name': 'Blaster',
    'nameRU': 'Механист',
    'archetype': 'Hunter',
    'archetypeRU': 'Стрелок',
    'description': 'Blaster, character who blasts!',
    'descriptionRU': 'Человек-арсенал!',
    'weapon': 'Launcher',
    'stats': {
      'control': 3,
      'speed': 10,
      'defense': 50,
      'attack': 80,
      'range': 80,
      'support': 40,
    },
    'icon': LostArk.class_blaster,
  },
  {
    'name': 'Hawk Eye',
    'nameRU': 'Рейнджер',
    'archetype': 'Hunter',
    'archetypeRU': 'Стрелок',
    'description':
        'Moves agile and attacks enemies with machine bows, special arrows and Silver Hawk.',
    'descriptionRU':
        'Проворный стрелок, использующий лук и механического сокола.',
    'weapon': 'Mechanical Bow',
    'stats': {
      'control': 4,
      'speed': 80,
      'defense': 40,
      'attack': 60,
      'range': 30,
      'support': 30,
    },
    'icon': LostArk.class_hawkeye,
  },
  {
    'name': 'Battle Master',
    'nameRU': 'Аватар',
    'archetype': 'Fighter',
    'archetypeRU': 'Монах',
    'description':
        'The battle master is a martial art class that attacks enemies like lightning stones. It is equipped with various exercises for quick movement, so you can hit the enemy in a flash and continue the colorful air combo. You can also use the powerful elemental skills to reverse the battlefield.',
    'descriptionRU':
        'Носит легкие кастеты перчатки, которыми наносит урон. ДД  у которого очень высокая скорость и ловкость. Дополнения ко всему много комбо-атак.',
    'weapon': 'Light Gauntlet',
    'stats': {
      'control': 4,
      'speed': 90,
      'defense': 40,
      'attack': 80,
      'range': 20,
      'support': 10,
    },
    'icon': LostArk.class_battlemaster,
  },
  {
    'name': 'Infighter',
    'nameRU': 'Дуалист',
    'archetype': 'Fighter',
    'archetypeRU': 'Монах',
    'description':
        'The Infighter is a heavy handed martial artist. Her attacks explode with pent up energy and deal terrifying amounts of damage. Enemies who are stuck may become pulverized, or are blown away by the impact.',
    'descriptionRU': 'Использует тяжелые силовые перчатки.',
    'weapon': 'Heavy Gauntlet',
    'stats': {
      'control': 3,
      'speed': 60,
      'defense': 50,
      'attack': 80,
      'range': 30,
      'support': 20,
    },
    'icon': LostArk.class_infighter,
  },
  {
    'name': 'Soul Master',
    'nameRU': 'Ки-мастер',
    'archetype': 'Fighter',
    'archetypeRU': 'Монах',
    'description':
        'Medium-range class that can use a variety of melee and ranged attacks.',
    'descriptionRU':
        'Владеет уникальными техниками боевых искусств. Подчинив себе потоки энергии, может атаковать противников как вблизи, так и на расстоянии.',
    'weapon': 'Ductile Gauntlet',
    'stats': {
      'control': 2,
      'speed': 20,
      'defense': 60,
      'attack': 50,
      'range': 50,
      'support': 60,
    },
    'icon': LostArk.class_soulmaster,
  },
  {
    'name': 'Warlord',
    'nameRU': 'Полководец',
    'archetype': 'Warrior',
    'archetypeRU': 'Воин',
    'description':
        'The Warlord is a knight with strong armor. Even while soaking damage he has a number of attacks with his lance and shield.',
    'descriptionRU':
        'Полководец всегда первым врывается в бой. Самых дерзких противников остудит сталь его щита, а беглецов добьет залп пулебарды – копья со встроенной винтовкой.',
    'weapon': 'Gunlance',
    'stats': {
      'control': 3,
      'speed': 20,
      'defense': 90,
      'attack': 60,
      'range': 20,
      'support': 70,
    },
    'icon': LostArk.class_warlord,
  },
  {
    'name': 'Destroyer',
    'nameRU': 'Сокрушитель',
    'archetype': 'Warrior',
    'archetypeRU': 'В��ин',
    'description': 'Destroyer, destroys his enemies!',
    'descriptionRU':
        'В руках сок����шителя огромный молот, заряженный энергией молний. Пусть это�� воин кажется непово��отливым, зато одного его удара достаточно, чтобы сровнять противника с землей.',
    'weapon': 'Hammer',
    'stats': {
      'control': 2,
      'speed': 10,
      'defense': 70,
      'attack': 90,
      'range': 60,
      'support': 30,
    },
    'icon': LostArk.class_destroyer,
  },
  {
    'name': 'Berserker',
    'nameRU': 'Берсерк',
    'archetype': 'Warrior',
    'archetypeRU': 'Воин',
    'description':
        'The Berserker is a warrior that wields a huge two-handed sword in battle. He is able to enter a frenzied state, and while in it can crush any enemy with his strength.',
    'descriptionRU': '',
    'weapon': 'Sword',
    'stats': {
      'control': 1,
      'speed': 40,
      'defense': 60,
      'attack': 80,
      'range': 60,
      'support': 20,
    },
    'icon': LostArk.class_berserker,
  },
];
