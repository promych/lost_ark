import 'dart:convert';

import 'package:flutter/services.dart';

import '../models/skill.dart';

class SkillRepo {
  Future<List<Skill>> fetchSkills({String lang = 'en'}) async {
    String data = await rootBundle.loadString('assets/data/skill_list.json');
    List<Map<String, dynamic>> _skillJson = List.from(json.decode(data));
    return _skillJson.map((json) => Skill.fromJson(json, lang: lang)).toList();
  }
}