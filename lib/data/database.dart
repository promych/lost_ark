import 'dart:async';
import 'dart:io';

import 'package:path/path.dart';
import 'package:sembast/sembast.dart';
import 'package:sembast/sembast_io.dart';
import 'package:path_provider/path_provider.dart';

class AppDatabase {
  AppDatabase._();

  static final AppDatabase instance = AppDatabase._();

  static Database _db;

  Future<Database> get database async {
    if (_db != null) return _db;
    _db = await _openDatabase();
    return _db;
  }

  Future<Database> _openDatabase() async {
    print('open db');
    Directory dir = await getApplicationDocumentsDirectory();
    String path = join(dir.path, 'notes.db');
    Database database = await databaseFactoryIo.openDatabase(path);
    return database;
  }
}
