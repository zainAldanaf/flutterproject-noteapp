import 'package:flutter/material.dart';
import 'package:flutterproject/Notes.dart';
import 'package:provider/provider.dart';

import 'db_provider.dart';

class AddNotePage extends StatefulWidget {
  const AddNotePage({Key? key}) : super(key: key);

  @override
  State<AddNotePage> createState () => _AddNotePageState();
}

class _AddNotePageState extends State<AddNotePage> {
 late TextEditingController title ;
 late TextEditingController details ;

  @override
  void initState() {
    title=TextEditingController();
    details=TextEditingController();
    super.initState();
  }

  String det = "";
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Note App',style: TextStyle(color: Colors.white)), // Set text colorfontWeight: FontWeight.bold,),
        centerTitle: true,
        backgroundColor: Colors.blue[800],),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(

            color: Colors.grey[50],
            padding: EdgeInsets.all(16.0),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Add Your New Note ',
                  style: TextStyle(
                    fontSize: 35.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue[800],
                  ),
                ),
                SizedBox(height: 30.0),
                TextField(
                  controller: title,

                  decoration: InputDecoration(
                    labelText: 'Enter Your Note Address',

                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 30.0),
                TextField(
                  controller: details,
                  decoration: InputDecoration(
                    labelText: 'What is your your note!',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20.0),
                ElevatedButton(
                  style:
                  ElevatedButton.styleFrom(
                    primary: Colors.blue[800], // set the background color to blue
                    minimumSize: Size(415, 50), // set the minimum width and height
                  ),
                  onPressed: () async {
                    NotesModel noteModel = NotesModel(name: title.text, details: details.text);
                    await Provider.of<DbProvider>(context, listen: false)
                    .createNewNote(noteModel);
                    Navigator.of(context).pop();
                  },
                  child: Text('Add Note'),


                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
