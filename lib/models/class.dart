import 'package:flutter/material.dart';

@immutable
class CharacterClass {
  final String name;
  final String archetype;
  final String description;
  final String weapon;
  final Map<String, int> stats;
  final IconData icon;
  final String imagePath;

  CharacterClass({
    @required this.name,
    @required this.archetype,
    @required this.description,
    @required this.weapon,
    @required this.stats,
    @required this.icon,
    @required this.imagePath,
  });

  factory CharacterClass.fromJson(Map<String, dynamic> json,
      {String lang = 'en'}) {
    return CharacterClass(
      name: json['name'][lang],
      archetype: json['archetype'][lang],
      description: json['description'][lang],
      weapon: json['weapon'],
      stats: json['stats'],
      icon: json['icon'],
      imagePath:
          'assets/img/class_${json['name']['en'].replaceAll(' ', '').toLowerCase()}.png',
    );
  }
}
