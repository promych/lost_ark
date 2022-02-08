import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sembast/sembast.dart';
import 'package:sembast/sembast_io.dart';

class AppDatabase {
  AppDatabase._();

  static final AppDatabase instance = AppDatabase._();

  static Database? _db;

  Future<Database> get database async {
    if (_db != null) return _db!;
    _db = await _openDatabase();
    return _db!;
  }

  Future<Database> _openDatabase() async {
    debugPrint('open db');
    final dir = await getApplicationDocumentsDirectory();
    final path = join(dir.path, 'lacalc.db');
    final database = await databaseFactoryIo.openDatabase(path);
    return database;
  }
}
