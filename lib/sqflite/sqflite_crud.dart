

import 'package:flutter/material.dart';
import 'package:flutter_project_oct/sqflite/db%20operations.dart';

void main(){
  runApp(MaterialApp(
    home: SqfliteCrud(),
  ));
}

class SqfliteCrud extends StatefulWidget {

  @override
  State<SqfliteCrud> createState() => _SqfliteCrudState();
}
class _SqfliteCrudState extends State<SqfliteCrud> {

  final name_ctrl = TextEditingController();
  final phone_ctrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('CONTACT'),
      ),
      floatingActionButton: FloatingActionButton(onPressed: ()=>showsheet(null) ,
          child: Icon(Icons.add)),
    );
  }
}

 showsheet(int? id) {
  if (id != null) // to update contact
      {}


 showModalBottomSheet(
     elevation: 5,
     isScrollControlled: true,
     context:context,builder: (context) {
    return Container(
      padding: EdgeInsets.only(
        top: 15,
        left: 15,
        right: 15,
        bottom: MediaQuery.of(context).viewInsets.bottom+100
      ),
      child: Column(
        children: [
          TextField(
            controller:,
            decoration: InputDecoration(hintText: 'Name'),
          ),
          TextField(
            controller: ,
            decoration: InputDecoration(hintText: 'phone number'),
          ),
          ElevatedButton(onPressed: ()async{
            if(id ==null) {
              // await create_contact();
            }
            else if(id !=null) {
              // await update_contact();
            }
             }, child: Text(id == null ? 'create' : 'update'))
        ],

      ),
    );
  });
}

Future<void> create_contact() async{
  await SQLHelper.createcontact();
}