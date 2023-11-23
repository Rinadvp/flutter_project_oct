

import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_oct/Listview/Listview4.dart';
import 'package:flutter_project_oct/Listview/list_view3.dart';

void main(){
  runApp(MaterialApp(
    home: ConvexEx(),
  ));
}

class ConvexEx extends StatefulWidget {
  const ConvexEx({super.key});

  @override
  State<ConvexEx> createState() => _ConvexExState();
}

class _ConvexExState extends State<ConvexEx> {
  int index= 0;
  var screen= [listview3(),listview4(),Text('Hello')];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Bottom'),
      ),
      bottomNavigationBar: ConvexAppBar(
         style: TabStyle.custom,

        // backgroundColor: Colors.white,
        onTap: (Tapindex){
          setState(() {
            index=Tapindex;
          });
        },
          items:[TabItem(icon:Icon(Icons.home),title: 'Home',),
        TabItem(icon:Icon(Icons.person),title: 'Person'),
        TabItem(icon:Icon(Icons.search),title: 'Search'),
            TabItem(icon: Icon(Icons.settings),title: 'Settings')
      ]),
       body: screen[index] ,
    );
  }
}
