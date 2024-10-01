import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DBHelper {
  static const _dbVersion = 1;
  static const _dbName = 'tasks_db.db';
  static const _tableName = 'tasks';

  static const _sql = '''
  CREATE TABLE $_tableName(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT NOT NULL,
    description TEXT NOT NULL,
    importance TEXT NOT NULL
  );
  ''';

  static Future<Database> getInstance() async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, _dbName);
    return openDatabase(
      path,
      version: _dbVersion,
      onCreate: (db, version) async {
        await db.execute(_sql);
      },
    );
  }
}
