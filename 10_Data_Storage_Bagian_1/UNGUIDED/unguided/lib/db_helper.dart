import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static final DatabaseHelper instance = DatabaseHelper._init();
  static Database? _database;

  DatabaseHelper._init();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB('biodata.db');
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);

    return await openDatabase(
      path,
      version: 1,
      onCreate: _createDB,
    );
  }

  Future _createDB(Database db, int version) async {
    await db.execute('''
      CREATE TABLE biodata (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        nama TEXT NOT NULL,
        nim TEXT NOT NULL,
        alamat TEXT NOT NULL,
        hobi TEXT NOT NULL
      )
    ''');
  }

  Future<int> insertData(Map<String, dynamic> data) async {
    final db = await instance.database;
    return await db.insert('biodata', data);
  }

  Future<List<Map<String, dynamic>>> fetchData() async {
    final db = await instance.database;
    return await db.query('biodata');
  }

  Future<void> deleteData(int id) async {
    final db = await database;
    await db.delete(
      'biodata', 
      where: 'id = ?',
      whereArgs: [id],
    );
  }
}
