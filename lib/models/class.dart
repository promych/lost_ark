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

  const CharacterClass({
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

  factory CharacterClass.fromJson(
    Map<String, dynamic> json, {
    String lang = 'en',
  }) {
    final name = json['name'] as Map<String, dynamic>;
    final archetype = json['archetype'] as Map<String, dynamic>;
    final description = json['description'] as Map<String, dynamic>;
    final weapon = json['weapon'] as Map<String, dynamic>;

    return CharacterClass(
      id: json['id'] as String,
      name: name[lang] as String,
      archetype: archetype[lang] as String,
      description: description[lang] as String,
      weapon: weapon[lang] as String,
      stats: Map<String, int>.from(json['stats'] as Map),
      icon: LostArk.icons[json['icon']],
      video: json['video'] as String,
      imagePath:
          'assets/img/class_${(name['en'] as String).replaceAll(' ', '').toLowerCase()}.webp',
    );
  }
}
