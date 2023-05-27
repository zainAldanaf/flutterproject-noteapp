import 'dart:developer';
import 'package:sqflite/sqflite.dart';
import 'Notes.dart';

class DbHelper {
  DbHelper._();
  static DbHelper dbHelper = DbHelper._();
  late Database database;
  initDatabase() async {
    String appPath = await getDatabasesPath();
    String dbPath = appPath + '/flutter_course.db';
    database = await openDatabase(dbPath, version: 2, onCreate: (db, v) {
      db.execute(
          'CREATE TABLE notes (id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, details Text)');
    });
  }

  insertNewNote(NotesModel note) async {
    try {
      int rowNumber = await database.insert('notes', note.toMap());
      log(rowNumber.toString());
    } catch (e) {
      log("row has not been inserted");
    }
  }

  Future<List<NotesModel>> getAllNotes() async {
    await Future.delayed(const Duration(seconds: 1));
    List<Map> results = await database.query('notes');
    List<NotesModel> notes = results.map((e) => NotesModel.fromMap(e)).toList();
    print(results);
    return notes;
  }

  Future<NotesModel> getNoteById(int id) async {
    List<Map> results = await database.query('notes', where: 'id=$id');
    return NotesModel.fromMap(results.first);
  }

  deleteNote(int id) async {
    await database.delete('notes', where: 'id=$id');
  }

  updateNote(String quer_update) async {

    Database? query = await database;
    int result=await query.rawUpdate(quer_update);
    getAllNotes();
    return result;
  }
}