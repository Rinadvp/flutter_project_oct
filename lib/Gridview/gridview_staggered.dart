import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main(){
  runApp(MaterialApp(
    home: gridview_staggered(),
  ));
}

class gridview_staggered extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.blue,
     ),
     body: SingleChildScrollView(
       child: StaggeredGrid.count(crossAxisCount: 3,
       children: [
         StaggeredGridTile.count(
             crossAxisCellCount: 2,
             mainAxisCellCount: 2,
             child:Container(
               decoration: const BoxDecoration(color: Colors.black,image: DecorationImage(
                   image: AssetImage('assets/image/banana.png'),
                   fit: BoxFit.fill)),)),

         StaggeredGridTile.count(
             crossAxisCellCount: 2,
             mainAxisCellCount: 2,
             child:Container(
               decoration: const BoxDecoration(color:Colors.red,image: DecorationImage(
                   image: AssetImage('assets/image/mango.png'),
                   fit: BoxFit.fill)),) ),

         StaggeredGridTile.count(
             crossAxisCellCount: 2,
             mainAxisCellCount: 1,
             child:Container(
               decoration: const BoxDecoration(color:Colors.blueGrey,image: DecorationImage(
                   image: AssetImage('assets/image/-Strawberry.256.png'),
                   fit: BoxFit.fill)),) )
       ],),
     ),


   );

  }

}