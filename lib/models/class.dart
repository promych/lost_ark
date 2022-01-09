import 'package:flutter/material.dart';

import '../helpers/lost_ark_icons.dart';

@immutable
class CharacterClass {
  final String id;
  final String name;
  final String archetype;
  final String description;
  final String weapon;
  final Map<String, int> stats;
  final IconData? icon;
  final String imagePath;
  final String video;

  CharacterClass({
    required this.id,
    required this.name,
    required this.archetype,
    required this.description,
    required this.weapon,
    required this.stats,
    this.icon,
    required this.imagePath,
    required this.video,
  });

  factory CharacterClass.fromJson(Map<String, dynamic> json,
      {String lang = 'en'}) {
    return CharacterClass(
      id: json['id'],
      name: json['name'][lang],
      archetype: json['archetype'][lang],
      description: json['description'][lang],
      weapon: json['weapon'][lang],
      stats: Map<String, int>.from(json['stats']),
      icon: LostArk.icons[json['icon']],
      video: json['video'],
      imagePath:
          'assets/img/class_${json['name']['en'].replaceAll(' ', '').toLowerCase()}.webp',
    );
  }
}
