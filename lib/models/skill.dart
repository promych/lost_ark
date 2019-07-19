import 'package:flutter/foundation.dart';

@immutable
class Skill {
  final String name;
  final String className;
  final String description;
  final String type;
  final int cooldown;
  final int unlockLevel;
  final String iconUrl;
  final List<EnchancementTier> tripod;

  Skill({
    @required this.name,
    @required this.className,
    @required this.description,
    @required this.type,
    @required this.cooldown,
    @required this.unlockLevel,
    @required this.iconUrl,
    @required this.tripod,
  });

  factory Skill.fromJson(Map<String, dynamic> json) {
    return Skill(
      name: json['name'],
      className: json['class'],
      description: json['description'],
      type: json['type'],
      cooldown: json['cooldown'],
      unlockLevel: json['unlockLevel'] ?? 1,
      iconUrl: json['iconUrl'],
      tripod: List<EnchancementTier>.from(
          json['tripod'].map((item) => EnchancementTier.fromJson(item))),
    );
  }
}

@immutable
class EnchancementTier {
  final int tier;
  final int points;
  final List<SkillEnchancement> enchancements;

  EnchancementTier({
    @required this.tier,
    @required this.points,
    @required this.enchancements,
  });

  factory EnchancementTier.fromJson(Map<String, dynamic> json) {
    return EnchancementTier(
      tier: json['tier'],
      points: json['points'],
      enchancements: List<SkillEnchancement>.from(
          json['skills'].map((item) => SkillEnchancement.fromJson(item))),
    );
  }
}

@immutable
class SkillEnchancement {
  final String name;
  final String description;
  final String iconUrl;

  SkillEnchancement({
    @required this.name,
    @required this.description,
    @required this.iconUrl,
  });

  factory SkillEnchancement.fromJson(Map<String, dynamic> json) {
    return SkillEnchancement(
      name: json['name'],
      description: json['description'],
      iconUrl: json['iconUrl'],
    );
  }
}
