import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: ExpansionTileEx(),
  ));
}

class ExpansionTileEx extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       centerTitle: true,
       title: Text('Expansion Tile'),
     ),
     body: ListView(
       children:
         List.generate(5,
                 (index) =>
         ExpansionTile(
           backgroundColor: Colors.orange,
             title: Text('tile${index + 1}'),
         children:
           List.generate(4,
                   (index) =>
                       ListTile(
                         leading: CircleAvatar(
                         backgroundColor: Colors.primaries[index % Colors.primaries.length],
                       ),


               ))),))
         ,

     );

  }

}