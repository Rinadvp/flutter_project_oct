

import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: listview4(),
  ));
}
class listview4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Listview builder'),),
        body: ListView.separated(

            itemBuilder: (context,index){
              return const ListTile(
                leading: Icon(Icons.person),
                title: Text('My Contact '),
              );
            },
            separatorBuilder: (context,index  ) {
              if (index % 3 == 0) {
                return Divider(thickness: 5, color: Colors.black,);
              } else {
                return SizedBox();
              }
            },
            itemCount: 10)
    );
  }
}