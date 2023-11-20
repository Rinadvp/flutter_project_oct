import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: listview3(),
  ));
}
class listview3 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: Text('Listview builder'),),
   body: ListView.builder(
     itemCount: 5,
       itemBuilder: (context,index) => Card(
     child: Center(
       child: Text(
         'Helloo',
         style: TextStyle(fontSize: 20),
       ),
     ),
   )),
   );
  }

}