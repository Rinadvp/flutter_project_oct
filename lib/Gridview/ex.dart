import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ex(),
  ));
}

class ex extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
          title: Center(
            child: Text('Staggered',style:
            TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),
            )
              ),
      ),
      body: SingleChildScrollView(
        child: StaggeredGrid.count(crossAxisCount: 3,
        children: [
          StaggeredGridTile.count(crossAxisCellCount: 2,
              mainAxisCellCount: 2,
              child: Container(
                child: Icon (Icons.ice_skating),
                decoration:  const BoxDecoration(
                  color: Colors.yellow,
                ),

             )
              ),

        StaggeredGridTile.count(crossAxisCellCount: 2,
        mainAxisCellCount: 2,
        child: Container(
          child: Icon(Icons.car_crash),
          decoration:  const BoxDecoration(
            color: Colors.red,
          ),

        )
        ),

    StaggeredGridTile.count(crossAxisCellCount: 2,
    mainAxisCellCount: 2,
    child: Container(
    child: Icon(Icons.smoke_free),
    decoration: BoxDecoration(
    color: Colors.grey,
    ),

    )),

    ],),

      ),

    );
  }


}