import 'dart:convert';

import 'package:flutter/services.dart';

import '../models/class.dart';

class ClassRepo {
  Future<List<CharacterClass>> fetchClassList({String lang = 'en'}) async {
    String data = await rootBundle.loadString('assets/data/class_list.json');
    List<Map<String, dynamic>> _classJson = List.from(json.decode(data));
    return _classJson
        .map((json) => CharacterClass.fromJson(json, lang: lang))
        .toList();
  }
}
