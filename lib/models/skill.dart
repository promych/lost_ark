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

  const Skill({
    required this.id,
    required this.name,
    required this.className,
    required this.description,
    required this.type,
    required this.cooldown,
    required this.unlockLevel,
    required this.iconUrl,
    required this.tripod,
  });

  factory Skill.fromJson(Map<String, dynamic> json, {String lang = 'en'}) {
    final icon = json['iconUrl'].toString();
    final id = json['id'];
    // icon.substring(icon.lastIndexOf('/') + 1, icon.lastIndexOf('.webp'));

    final name = json['name'] as Map<String, dynamic>;
    final classMap = json['class'] as Map<String, dynamic>;
    final description = json['description'] as Map<String, dynamic>;
    final tripod = json['tripod'] as List<dynamic>;

    return Skill(
      id: id as String,
      name: name[lang] as String,
      className: classMap[lang] as String,
      description: description[lang] as String,
      type: json['type'] as String,
      cooldown: json['cooldown'] as int,
      unlockLevel: (json['unlockLevel'] ?? 1) as int,
      iconUrl: icon,
      tripod: List<EnchancementTier>.from(
        tripod.map(
          (item) {
            return EnchancementTier.fromJson(
              item as Map<String, dynamic>,
              id,
              lang: lang,
            );
          },
        ),
      ),
    );
  }
}

@immutable
class EnchancementTier {
  final int tier;
  final List<SkillEnchancement> enchancements;

  const EnchancementTier({
    required this.tier,
    required this.enchancements,
  });

  factory EnchancementTier.fromJson(
    Map<String, dynamic> json,
    String skillId, {
    String lang = 'en',
  }) {
    final skills = json['skills'] as List<dynamic>;
    return EnchancementTier(
      tier: json['tier'] as int,
      enchancements: List<SkillEnchancement>.from(
        skills.map(
          (item) => SkillEnchancement.fromJson(
            item as Map<String, dynamic>,
            skillId,
            lang: lang,
          ),
        ),
      ),
    );
  }
}

@immutable
class SkillEnchancement {
  final String id;
  final String name;
  final String description;
  final String iconUrl;

  const SkillEnchancement({
    required this.id,
    required this.name,
    required this.description,
    required this.iconUrl,
  });

  factory SkillEnchancement.fromJson(
    Map<String, dynamic> json,
    String skillId, {
    String lang = 'en',
  }) {
    final icon = json['iconUrl'].toString();
    final id = icon.substring(icon.indexOf('Tier_') + 4, icon.lastIndexOf('.'));
    final description = json['description'] as Map<String, dynamic>;

    return SkillEnchancement(
      id: skillId + id,
      name: json['name'] as String,
      description: description[lang] as String,
      iconUrl: icon,
    );
  }
}
