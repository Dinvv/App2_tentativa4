import 'package:web2_project/models/task.dart';
import 'package:web2_project/repository/database_helper.dart';

class TaskRepository {
  static const _tableName = 'tasks';

  static Future<int> insert(Map<String, dynamic> map) async {
    final db = await DBHelper.getInstance();
    return await db.insert(_tableName, map);
  }

  static Future<List<Task>> findAll() async {
    final db = await DBHelper.getInstance();
    final result = await db.query(_tableName);
    return result.map((item) => Task.fromMap(item)).toList();
  }

  static Future<int> update(Map<String, dynamic> map) async {
    final db = await DBHelper.getInstance();
    return await db.update(
      _tableName,
      map,
      where: 'id = ?',
      whereArgs: [map['id']],
    );
  }

  static Future<int> delete(int id) async {
    final db = await DBHelper.getInstance();
    return await db.delete(
      _tableName,
      where: 'id = ?',
      whereArgs: [id],
    );
  }
}
