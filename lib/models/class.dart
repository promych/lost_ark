import 'package:flutter/material.dart';

class CharacterClass {
  final String name;
  final String archetype;
  final String description;
  final String weapon;
  final Map<String, int> stats;
  final IconData icon;

  CharacterClass({
    @required this.name,
    @required this.archetype,
    @required this.description,
    @required this.weapon,
    @required this.stats,
    @required this.icon,
  });

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

// class CharacterStat {
//   final String name;
//   final int value;

//   CharacterStat({
//     @required this.name,
//     @required this.value,
//   });
// }
