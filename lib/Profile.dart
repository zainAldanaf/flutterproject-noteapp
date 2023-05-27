import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePage createState() => _ProfilePage();

}

class _ProfilePage extends State<ProfilePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          const SizedBox(height: 40,),
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('asset/Images/person.png'),
          ),
          const SizedBox(height: 30,),
          Container(
         decoration: BoxDecoration(
           color: Colors.white,
           borderRadius:  BorderRadius.circular(10),
           boxShadow :[
             BoxShadow(
               offset: Offset(0,5),
               color: Colors.blue.withOpacity(.2),
               spreadRadius: 2,
               blurRadius: 10
             )
           ]
         ) ,
         child: ListTile(
            title: const Text('Name'),
            subtitle: const Text('Sara Ahmed'),
            leading: Icon(CupertinoIcons.person),
            trailing: Icon(Icons.arrow_forward,color: Colors.grey),
            tileColor: Colors.white,
          )
          ),
          const SizedBox(height: 30,),
          Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:  BorderRadius.circular(10),
                  boxShadow :[
                    BoxShadow(
                        offset: Offset(0,5),
                        color: Colors.blue.withOpacity(.2),
                        spreadRadius: 2,
                        blurRadius: 10
                    )
                  ]
              ) ,
              child: ListTile(
                title: const Text('Email'),
                subtitle: const Text('SaraAhmed2@gmail.com'),
                leading: Icon(CupertinoIcons.person),
                trailing: Icon(Icons.arrow_forward,color: Colors.grey),
                tileColor: Colors.white,
              )
          ),
          const SizedBox(height: 30,),
          Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:  BorderRadius.circular(10),
                  boxShadow :[
                    BoxShadow(
                        offset: Offset(0,5),
                        color: Colors.blue.withOpacity(.2),
                        spreadRadius: 2,
                        blurRadius: 10
                    )
                  ]
              ) ,
              child: ListTile(
                title: const Text('phone'),
                subtitle: const Text('05497585'),
                leading: Icon(CupertinoIcons.person),
                trailing: Icon(Icons.arrow_forward,color: Colors.grey),
                tileColor: Colors.white,
              )
          ),
          const SizedBox(height: 30,),
          Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:  BorderRadius.circular(10),
                  boxShadow :[
                    BoxShadow(
                        offset: Offset(0,5),
                        color: Colors.blue.withOpacity(.2),
                        spreadRadius: 2,
                        blurRadius: 10
                    )
                  ]
              ) ,
              child: ListTile(
                title: const Text('Address'),
                subtitle: const Text('Gaza City'),
                leading: Icon(CupertinoIcons.person),
                trailing: Icon(Icons.arrow_forward,color: Colors.grey),
                tileColor: Colors.white,
              )
          ),
        ],
      )
      )
    );
   }
  }