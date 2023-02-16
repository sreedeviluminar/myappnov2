import 'package:flutter/cupertino.dart';
import 'package:sqflite/sqflite.dart' as sql;

class SqlHelper {
  static Future<void> createTable(sql.Database database) async {
    await database.execute("""CREATE TABLE items(
        id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
        title TEXT,
        description TEXT,
        createdAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
      )""");
  }

  static Future<sql.Database> db() async {
    return sql.openDatabase("mydatabase.db", version: 1,
        onCreate: (sql.Database database, int version) async {
      await createTable(database);
    });
  }

  static Future<List<Map<String, dynamic>>> getItems() async {
    final db = await SqlHelper.db();
    return db.query('items', orderBy: 'id');
  }

  static Future<int> create_item(String title, String description) async {
    final db = await SqlHelper.db();
    final data = {'title': title, 'description': description};
    final id = await db.insert('items', data,
        conflictAlgorithm: sql.ConflictAlgorithm.replace);
    return id;
  }

  static Future<void> deleteItem(int id) async {
    final db = await SqlHelper.db();
    try {
      await db.delete("items", where: "id = ?", whereArgs: [id]);
    } catch (e) {
      debugPrint("Something went wrong $e");
    }
  }

  static Future<int> updateItem(
      int id, String title, String description) async {
    final db = await SqlHelper.db();
    final newdata = {
      'title': title,
      'description': description,
      'createdAt': DateTime.now().toString()
    };
    final result =
        await db.update("items", newdata, where: "id  = ?", whereArgs: [id]);
    return result;
  }
}
