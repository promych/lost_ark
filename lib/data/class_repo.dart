import '../models/class.dart';
import '../helpers/lost_ark_icons.dart';

class ClassRepo {
  Future<List<CharacterClass>> fetchClassList({String lang = 'en'}) async {
    return _classData
        .map((json) => CharacterClass.fromJson(json, lang: lang))
        .toList();
  }
}

const List<Map<String, dynamic>> _classData = [
  {
    'id': 'c11',
    'name': {
      'en': 'Arcana',
      'ru': 'Арканолог',
    },
    'archetype': {
      'en': 'Magician',
      'ru': 'Маг',
    },
    'description': {
      'en':
          'The Arcana uses cards as medium of powerful spells. She can cast cards chosen by a roulette wheel that spins according to special conditions.',
      'ru':
          'Этот магический персонаж вооружен колодой карт. С помощью мощных и разнообразных заклинаний он наносит урон по врагу.',
    },
    'weapon': {
      'en': 'Tarot Card',
      'ru': 'Карты Таро',
    },
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
    'id': 'c09',
    'name': {
      'en': 'Bard',
      'ru': 'Менестрель',
    },
    'archetype': {
      'en': 'Magician',
      'ru': 'Маг',
    },
    'description': {
      'en': 'Bard makes doot doots that help everyone!',
      'ru': 'Использует мелодии для поддержки сопартицев.',
    },
    'weapon': {
      'en': 'Harp',
      'ru': 'Арфа',
    },
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
    'id': 'c10',
    'name': {
      'en': 'Summoner',
      'ru': 'Призывательница',
    },
    'archetype': {
      'en': 'Magician',
      'ru': 'Маг',
    },
    'description': {
      'en':
          'The Summoner can command beasts by interacting with spirits. The power of the Ancient Spirits are especially immense.',
      'ru': 'Может призывать зверей и управлять древними духами.',
    },
    'weapon': {
      'en': 'Staff',
      'ru': 'Посох',
    },
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
    'id': 'c06',
    'name': {
      'en': 'Devil Hunter',
      'ru': 'Охотник на демонов',
    },
    'archetype': {
      'en': 'Hunter',
      'ru': 'Стрелок',
    },
    'description': {
      'en':
          'The Devil Hunter is one hell of a gun-slinger. He makes use of three different stances.',
      'ru':
          'Стрелок может использовать в своем вооружении огнестрельное оружие. На выбор парные пистолеты, винтовки и дробовики при смене оружия, у него меняются умения.',
    },
    'weapon': {
      'en': 'Guns',
      'ru': 'Пистолеты',
    },
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
    'id': 'c07',
    'name': {
      'en': 'Blaster',
      'ru': 'Механист',
    },
    'archetype': {
      'en': 'Hunter',
      'ru': 'Стрелок',
    },
    'description': {
      'en': 'Blaster, character who blasts!',
      'ru':
          'Накапливает огневую мощь ракетницы, которую можно перевести в режим турели.',
    },
    'weapon': {
      'en': 'Launcher',
      'ru': 'Ракетница-трансформер',
    },
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
    'id': 'c08',
    'name': {
      'en': 'Hawk Eye',
      'ru': 'Рейнджер',
    },
    'archetype': {
      'en': 'Hunter',
      'ru': 'Стрелок',
    },
    'description': {
      'en':
          'Moves agile and attacks enemies with machine bows, special arrows and Silver Hawk.',
      'ru': 'Проворный стрелок, использующий лук и механического сокола.',
    },
    'weapon': {
      'en': 'Mechanical Bow',
      'ru': 'Механический лук',
    },
    'stats': {
      'control': 4,
      'speed': 80,
      'defense': 40,
      'attack': 60,
      'range': 60,
      'support': 30,
    },
    'icon': LostArk.class_hawkeye,
  },
  {
    'id': 'c03',
    'name': {
      'en': 'Battle Master',
      'ru': 'Аватар',
    },
    'archetype': {
      'en': 'Fighter',
      'ru': 'Монах',
    },
    'description': {
      'en':
          'The battle master is a martial art class that attacks enemies like lightning stones. It is equipped with various exercises for quick movement, so you can hit the enemy in a flash and continue the colorful air combo. You can also use the powerful elemental skills to reverse the battlefield.',
      'ru':
          'Носит легкие кастеты-перчатки, которыми наносит урон. ДД  у которого очень высокая скорость и ловкость. Дополнения ко всему много комбо-атак.',
    },
    'weapon': {
      'en': 'Light Gauntlet',
      'ru': 'Легкие кастеты',
    },
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
    'id': 'c04',
    'name': {
      'en': 'Infighter',
      'ru': 'Дуалист',
    },
    'archetype': {
      'en': 'Fighter',
      'ru': 'Монах',
    },
    'description': {
      'en':
          'The Infighter is a heavy handed martial artist. Her attacks explode with pent up energy and deal terrifying amounts of damage. Enemies who are stuck may become pulverized, or are blown away by the impact.',
      'ru': 'Использует тяжелые силовые перчатки.',
    },
    'weapon': {
      'en': 'Heavy Gauntlet',
      'ru': 'Тяжелые кастеты-перчатки',
    },
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
    'id': 'c05',
    'name': {
      'en': 'Soul Master',
      'ru': 'Ки-мастер',
    },
    'archetype': {
      'en': 'Fighter',
      'ru': 'Монах',
    },
    'description': {
      'en':
          'Medium-range class that can use a variety of melee and ranged attacks.',
      'ru':
          'Владеет уникальными техниками боевых искусств. Подчинив себе потоки энергии, может атаковать противников как вблизи, так и на расстоянии.',
    },
    'weapon': {
      'en': 'Gauntlet',
      'ru': 'Кастеты',
    },
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
    'id': 'c01',
    'name': {
      'en': 'Warlord',
      'ru': 'Полководец',
    },
    'archetype': {
      'en': 'Warrior',
      'ru': 'Воин',
    },
    'description': {
      'en':
          'The Warlord is a knight with strong armor. Even while soaking damage he has a number of attacks with his lance and shield.',
      'ru':
          'Полководец всегда первым врывается в бой. Самых дерзких противников остудят сталь его щита, а беглецов добьет залп пулебарды – коппья со встроенной винтовкой.',
    },
    'weapon': {
      'en': 'Gunlance',
      'ru': 'Копье-пушка',
    },
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
    'id': 'c00',
    'name': {
      'en': 'Destroyer',
      'ru': 'Сокрушитель',
    },
    'archetype': {
      'en': 'Warrior',
      'ru': 'Воин',
    },
    'description': {
      'en': 'Destroyer, destroys his enemies!',
      'ru':
          'В руках сокрушителя огромный молот, заряженной энергией молний. Пусть этот воин кажется неповоротливым, зато одного его удара достаточно, чтобы сровнять противника с землей.',
    },
    'weapon': {
      'en': 'Hammer',
      'ru': 'Молот',
    },
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
    'id': 'c02',
    'name': {
      'en': 'Berserker',
      'ru': 'Берсерк',
    },
    'archetype': {
      'en': 'Warrior',
      'ru': 'Воин',
    },
    'description': {
      'en':
          'The Berserker is a warrior that wields a huge two-handed sword in battle. He is able to enter a frenzied state, and while in it can crush any enemy with his strength.',
      'ru': 'Накапливает ярость для сокуршительных атак.',
    },
    'weapon': {
      'en': 'Sword',
      'ru': 'Меч',
    },
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
