import 'dart:convert';

import 'package:flutter/services.dart';

import '../models/skill.dart';

class SkillRepo {
  Future<List<Skill>> fetchSkills({String lang = 'en'}) async {
    final data = await rootBundle.loadString('assets/data/skill_list.json');
    final List<Map<String, dynamic>> _skillJson =
        List.from(json.decode(data) as Iterable);
    return _skillJson.map((json) => Skill.fromJson(json, lang: lang)).toList();
  }
}
