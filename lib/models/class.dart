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
  }) : imagePath =
            'assets/img/class_${name.replaceAll(' ', '').toLowerCase()}.png';

  factory CharacterClass.fromJson(Map<String, dynamic> json) {
    return CharacterClass(
      name: json['name'],
      archetype: json['archetype'],
      description: json['description'],
      weapon: json['weapon'],
      stats: json['stats'],
      icon: json['icon'],
    );
  }
}
