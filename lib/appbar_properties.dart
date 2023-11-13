import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: appbarproperties(),
  ));
}

class appbarproperties extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Appbar',),
        leading: Icon(Icons.menu),
        actions: [
          Icon(CupertinoIcons.camera),
          SizedBox(width: 15,),
          Icon(Icons.search),
          PopupMenuButton(itemBuilder: (context){
            return [
              PopupMenuItem(child: Text('New Group')),
              PopupMenuItem(child: Text('Setting')),
              PopupMenuItem(child: Text('New Broadcast')),
              PopupMenuItem(child: Text('Linked device')),
            ];
          })
        ],
      ),
    );
  }

}