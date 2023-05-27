
import 'package:flutter/material.dart';
import 'package:flutterproject/Notes.dart';
import 'package:provider/provider.dart';

import 'db_provider.dart';

class UpdateNote extends StatefulWidget {
  final id;
  final title;
  final details;
  const UpdateNote(   {Key? key   ,this.id,this.title,this.details}   ) : super(key: key);

  @override
  State<UpdateNote> createState () => _UpdateNote();
}

class _UpdateNote extends State<UpdateNote> {
  late TextEditingController titlee ;
  late TextEditingController detailss ;




  @override
  void initState() {
    titlee=TextEditingController();
    detailss=TextEditingController();

    titlee.text=widget.title;
    detailss.text=widget.details;


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
                  'update Your  Note ',
                  style: TextStyle(
                    fontSize: 35.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue[800],
                  ),
                ),
                SizedBox(height: 30.0),
                TextField(
                  controller: titlee,

                  decoration: InputDecoration(
                    labelText: 'Enter Your Note Address',

                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 30.0),
                TextField(
                  controller: detailss,
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
                    Provider.of<DbProvider>(context,listen: false).updateNote(('''UPDATE "notes" SET name= "${titlee.text}" , details= "${detailss.text}" 
                    WHERE id="${widget.id}"
                    
                      '''));

                     Navigator.of(context).pop();
                  },
                  child: Text('Update Note'),


                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
