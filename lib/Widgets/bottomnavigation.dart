import 'package:flutter/material.dart';
import 'package:flutter_project_oct/Listview/Listview4.dart';
import 'package:flutter_project_oct/Listview/list_view3.dart';
import 'package:flutter_project_oct/Listview/listview2.dart';
import 'package:flutter_project_oct/Listview/listview_custom.dart';

void main(){
  runApp(MaterialApp(
    home: bottomnavigation(),
  ));
}

class bottomnavigation extends StatefulWidget{

  @override
  State<bottomnavigation> createState() => _bottomnavigationState();
}

class _bottomnavigationState extends State<bottomnavigation> {

  int index =0;
  var list = [listview3(),listview4(),listview_custom(),Listview2()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('bottom navigation bar'),
      ),
      bottomNavigationBar:BottomNavigationBar(
        type: BottomNavigationBarType.fixed,

          onTap: (tapindex) {
            setState(() {
              index=tapindex;
            });
          },
          currentIndex: index,
          selectedItemColor: Colors.yellow,

          items:[BottomNavigationBarItem(

          icon:Icon(Icons.home),label: 'Home', ),

        BottomNavigationBarItem(
            icon:Icon(Icons.person),label: 'person', ),

            BottomNavigationBarItem(
                icon: Icon(Icons.search),label: 'Search',),

            BottomNavigationBarItem(
                icon: Icon(Icons.chat),label: 'Chat',),
      ]),
      body:list[index] ,
    );
  }
}