import 'package:pemesanan/models/itembrg.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:async';
import 'dart:io';
import 'package:path_provider/path_provider.dart';

class DbHelper{
  static DbHelper _dbHelper;
  static Database _database;
  DbHelper._createObject();

  Future<Database> initDb() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String path = directory.path + 'penyewaan.db';

    var penyewaanDatabase = openDatabase(path, version: 4, onCreate: _createDb);

    //mengembalikan nilai object sebagai hasil dari fungsinya
    return penyewaanDatabase;
  }

  void _createDb(Database db, int version) async{
    await db.execute('''
      CREATE TABLE itembrg(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        nama TEXT,
        harga INTEGER,
        stok INTEGER,
        deskripsi TEXT
      )
    ''');
  }

  Future<List<Map<String, dynamic>>> selectBrg() async {
    Database db = await this.initDb();
    var mapList = await db.query('itembrg', orderBy: 'nama');
    return mapList;
  }

  Future<int> insertBrg(Itembrg object) async {
    Database db = await this.initDb();
    int count = await db.insert('itembrg', object.toMap());
    return count;
  }

  Future<int> updateBrg(Itembrg object) async {
    Database db = await this.initDb();
    int count = await db.update('itembrg', object.toMap(), where: 'id=?', whereArgs: [object.id]);
    return count;
  }

  Future<int> deleteBrg(int id) async {
    Database db = await this.initDb();
    int count = await db.delete('itembrg', where: 'id=?', whereArgs: [id]);
    return count;
  }

  Future<List<Itembrg>> getItemBrgList() async {
    var itemBrgMapList = await selectBrg();
    int count = itemBrgMapList.length;
    //list table itemhp
    List<Itembrg> itemBrgList = List<Itembrg>();
    //perulangan untuk menambahkan data ke map 
    for (int i = 0; i < count; i++) {
      //proses menambahkan data ke maplist
      itemBrgList.add(Itembrg.fromMap(itemBrgMapList[i]));
    }
    //mengembalikan nilai itemHplist
    return itemBrgList;
  }
  factory DbHelper() {
    if (_dbHelper == null) {
      _dbHelper = DbHelper._createObject();
    }
    return _dbHelper;
  }
  Future<Database> get database async {
    if (_database == null) {
      _database = await initDb();
    }
    return _database;
  }
}
