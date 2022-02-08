import 'dart:convert';

import 'package:flutter/services.dart';

import '../models/class.dart';

class ClassRepo {
  Future<List<CharacterClass>> fetchClassList({String lang = 'en'}) async {
    final data = await rootBundle.loadString('assets/data/class_list.json');
    final List<Map<String, dynamic>> _classJson =
        List.from(json.decode(data) as Iterable);
    return _classJson
        .map((json) => CharacterClass.fromJson(json, lang: lang))
        .toList();
  }
}
