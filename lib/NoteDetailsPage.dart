import 'package:flutter/material.dart';
class NoteDetailsPage extends StatefulWidget {
  const NoteDetailsPage({Key? key}) : super(key: key);

  @override
  State<NoteDetailsPage> createState() => _NoteDetailsPageState();
}

class _NoteDetailsPageState extends State<NoteDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
        title: Text('Note App',style: TextStyle(color: Colors.white)), // Set text colorfontWeight: FontWeight.bold,),
    centerTitle: true,
    backgroundColor: Colors.blue[800],),


    body: Padding(
      padding: const EdgeInsets.all(25.0),
      child: Center(
        child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20) ,color: Colors.blue[500])
         ,
          padding: EdgeInsets.all(16.0),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('5/4/2023  3:17',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.normal ),),
                  SizedBox(height: 80.0),
                  Text('Today',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold ),),
                  SizedBox(height: 60.0),
                  Text('Today must do the important tasks.',style:TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.normal )),
                  SizedBox(height: 100.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: Icon(Icons.edit),
                        color: Colors.white,
                        iconSize: 30,
                        onPressed: () {
                          // Add your delete button functionality here
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.delete),
                        color: Colors.white,
                        iconSize: 30,
                        onPressed: () {
                          // Add your delete button functionality here
                        },
                      ),
                    ],
                  ),


                ],
              ),
            ),
          ),
        ),



            ),
          ),

      );





  }
}
