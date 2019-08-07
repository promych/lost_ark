import 'package:flutter/foundation.dart';

@immutable
class Skill {
  final String id;
  final String name;
  final String className;
  final String description;
  final String type;
  final int cooldown;
  final int unlockLevel;
  final String iconUrl;
  final List<EnchancementTier> tripod;

  Skill({
    @required this.id,
    @required this.name,
    @required this.className,
    @required this.description,
    @required this.type,
    @required this.cooldown,
    @required this.unlockLevel,
    @required this.iconUrl,
    @required this.tripod,
  });

  factory Skill.fromJson(Map<String, dynamic> json, {String lang = 'en'}) {
    final icon = json['iconUrl'].toString();
    final id =
        icon.substring(icon.lastIndexOf('/') + 1, icon.lastIndexOf('.webp'));

    return Skill(
      id: id,
      name: json['name'],
      className: json['class'][lang],
      description: json['description'],
      type: json['type'],
      cooldown: json['cooldown'],
      unlockLevel: json['unlockLevel'] ?? 1,
      iconUrl: icon,
      tripod: List<EnchancementTier>.from(
          json['tripod'].map((item) => EnchancementTier.fromJson(item, id))),
    );
  }
}

@immutable
class EnchancementTier {
  final int tier;
  final List<SkillEnchancement> enchancements;

  EnchancementTier({
    @required this.tier,
    @required this.enchancements,
  });

  factory EnchancementTier.fromJson(Map<String, dynamic> json, String skillId) {
    return EnchancementTier(
      tier: json['tier'],
      enchancements: List<SkillEnchancement>.from(json['skills']
          .map((item) => SkillEnchancement.fromJson(item, skillId))),
    );
  }
}

@immutable
class SkillEnchancement {
  final String id;
  final String name;
  final String description;
  final String iconUrl;

  SkillEnchancement({
    @required this.id,
    @required this.name,
    @required this.description,
    @required this.iconUrl,
  });

  factory SkillEnchancement.fromJson(
      Map<String, dynamic> json, String skillId) {
    final icon = json['iconUrl'].toString();
    final id = icon.substring(icon.indexOf('Tier_') + 4, icon.lastIndexOf('.'));

    return SkillEnchancement(
      id: skillId + id,
      name: json['name'],
      description: json['description'],
      iconUrl: icon,
    );
  }
}
