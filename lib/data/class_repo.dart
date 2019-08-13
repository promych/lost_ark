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
          'Warlord is a knight with strong armor. Even while soaking damage he has a number of attacks with his lance and shield.',
      'ru':
          'Полководец всегда первым врывается в бой. Благодаря щиту имеет высокий показатель защиты, а для атаки использует пулебарду – копье со встроенной винтовкой.',
    },
    'weapon': {
      'en': 'Gunlance',
      'ru': 'Копье-винтовка',
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
    'video': 'Y99s5b-hYkU',
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
      'en':
          'Slow Destroyer with the help of a huge hammer, charged with the energy of lightning, is able to easily immobilize a more agile enemy.',
      'ru':
          'Неповоротлиый Сокрушитель с помощью огромного молота, заряженного энергией молний, способен с легкостью обездвижить более проворного противника.',
    },
    'weapon': {
      'en': 'Hammer',
      'ru': 'Молот',
    },
    'stats': {
      'control': 2,
      'speed': 10,
      'defense': 90,
      'attack': 90,
      'range': 30,
      'support': 30,
    },
    'icon': LostArk.class_destroyer,
    'video': 'w_JzbFzckPQ',
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
          'Berserker is a warrior that wields a huge two-handed sword in battle. He is able to enter a frenzied state, and while in it can crush any enemy with his strength.',
      'ru':
          'Берсерк - воин, вооруженный двуручным мечом, с помощью которого, накопив достаточно ярости, наносит врагам сокуршительный урон.',
    },
    'weapon': {
      'en': 'Sword',
      'ru': 'Меч',
    },
    'stats': {
      'control': 1,
      'speed': 40,
      'defense': 80,
      'attack': 80,
      'range': 40,
      'support': 40,
    },
    'icon': LostArk.class_berserker,
    'video': 'tNHbBENXysE',
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
          'Battle Master, possessing high speed and mobility, inflicts combo attacks using light brass knuckles.',
      'ru':
          'Аватар, обладая высокой скоростью и ловкостью, наносит противникам комбо-атаки с помощью легких кастетов.',
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
      'support': 20,
    },
    'icon': LostArk.class_battlemaster,
    'video': 'nWAYIM1fXDU',
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
          'Infighter is a heavy handed martial artist. Her attacks explode with pent up energy and deal terrifying amounts of damage.',
      'ru':
          'Дуалист использует тяжелые силовые перчатки и комбинирует умения для нанесения урона противникам.',
    },
    'weapon': {
      'en': 'Heavy Gauntlet',
      'ru': 'Тяжелые кастеты',
    },
    'stats': {
      'control': 3,
      'speed': 60,
      'defense': 50,
      'attack': 90,
      'range': 30,
      'support': 20,
    },
    'icon': LostArk.class_infighter,
    'video': 'gHkOUHdC2Pg',
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
          'Soul Master is medium-range class that can use a variety of melee and ranged attacks.',
      'ru':
          'Владеет уникальными техниками боевых искусств. Подчинив себе потоки энергии, может атаковать противников как вблизи, так и на расстоянии.',
    },
    'weapon': {
      'en': 'Gauntlet',
      'ru': 'Талисман',
    },
    'stats': {
      'control': 2,
      'speed': 50,
      'defense': 40,
      'attack': 60,
      'range': 50,
      'support': 50,
    },
    'icon': LostArk.class_soulmaster,
    'video': 'TXRigZrbGw4',
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
          'Devil Hunter can use firearms in his armament - paired pistols, rifles and shotguns.',
      'ru':
          'Охотник на демонов может использовать в своем вооружении огнестрельное оружие - парные пистолеты, винтовки и дробовики.',
    },
    'weapon': {
      'en': 'Guns',
      'ru': 'Огнестрельное оружие',
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
    'video': 'XGEmZGSP1ck',
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
      'en':
          'Blaster with the help of a rocket launcher, which can also be a flamethrower and a machine gun, accumulates firepower to activate the turret mode.',
      'ru':
          'Механист с помощью ракетницы, которая может быть также огнеметом и пулеметом, накапливает огневую мощь для активации режима турели.',
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
    'video': '9Kwh1RgOWzE',
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
          'Hawk Eye moves agile and attacks enemies with machine bows, special arrows and Silver Hawk.',
      'ru':
          'Проворный стрелок, использует лук и специальные стрелы. Может призвать на помощь механического сокола.',
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
      'range': 70,
      'support': 30,
    },
    'icon': LostArk.class_hawkeye,
    'video': 'MqWy2135ukk',
  },
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
          'Arcana uses cards as medium of powerful spells. She can cast cards chosen by a roulette wheel that spins according to special conditions.',
      'ru':
          'Магический персонаж, способный быстро передвигаться, при этом нанося урон и получая усиления с помощью карт-заклинаний.',
    },
    'weapon': {
      'en': 'Cards',
      'ru': 'Колода карт',
    },
    'stats': {
      'control': 5,
      'speed': 70,
      'defense': 20,
      'attack': 90,
      'range': 40,
      'support': 30,
    },
    'icon': LostArk.class_arcana,
    'video': '2ecCZO-837E',
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
      'en':
          'Bard uses harp melodies to support party members, as well as inflicting damage to enemies.',
      'ru':
          'Менестрель использует мелодии арфы для поддержки сопартицев, а так же нанесения урона противникам.',
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
    'video': '_tAQ8tIpznk',
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
          'Summoner can command beasts by interacting with spirits. The power of the Ancient Spirits are especially immense.',
      'ru':
          'Призывательница может призывать зверей, управлять древними духами и вызывать иллюзии.',
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
    'video': 'CFjrpbee7VM',
  },
];
