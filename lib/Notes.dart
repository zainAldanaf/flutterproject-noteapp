import 'package:flutter/cupertino.dart';
import 'db_Helper.dart';

class NotesModel {
  int? id;
  String? name;
  String? details;

  NotesModel({
    required this.name,
    this.details
  });
    NotesModel.fromMap(Map map) {
      id = map['id'];
      name = map['name'];
      details = map['details'];
    }
  Map<String, dynamic> toMap() {

      return {"name": name, "details": details};
    }
}