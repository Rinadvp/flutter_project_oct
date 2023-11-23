

import 'package:flutter/material.dart';
import 'package:flutter_project_oct/Gridview/Gridview3.dart';

void main(){
  runApp(MaterialApp(
    home: tabbar(),
  ));
}

class tabbar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title:  Text('Tabbar'),
          bottom:  TabBar(tabs: [Text('Chat'),Text('Call'),Text('Status')]),
        ),
      body: TabBarView(
          children: [gridview3(),
            Center(child: Text('call'),),
            Icon(Icons.person)
          ]),
      ),
    );
  }

}