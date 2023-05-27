import 'package:flutter/material.dart';

import 'db_Helper.dart';
import 'Notes.dart';


class DbProvider extends ChangeNotifier {
  DbProvider() {
    getAllNotes();
  }
  List<NotesModel> notes = [];

  bool isLoading = false;
  flipIsLoading() {
    isLoading = !isLoading;
    notifyListeners();
  }

  getAllNotes() async {
    flipIsLoading();
    notes = await DbHelper.dbHelper.getAllNotes();
    flipIsLoading();
  }

  fillList(List<NotesModel> note){
    notes = note;
    notifyListeners();
  }

  TextEditingController nameController = TextEditingController();
  TextEditingController detailsController = TextEditingController();

 addNoteToList(NotesModel notesModel) {
   notes.add(notesModel);
   fillList(notes);
 }

  createNewNote(NotesModel notesModel) async {
    await DbHelper.dbHelper.insertNewNote(notesModel);
    addNoteToList(notesModel);
  }

  getAllNote() async {
   flipIsLoading();
   notes = await DbHelper.dbHelper.getAllNotes();
   flipIsLoading();
   notifyListeners();

  }

  deleteNote(int id) async {
   await DbHelper.dbHelper.deleteNote(id!);
   notes.removeWhere((element) => element.id==id);
   notifyListeners();
   getAllNote();
  }

  updateNote(String query_update) async {
   await DbHelper.dbHelper.updateNote(query_update);
   getAllNote();
   notifyListeners();

  }
}

