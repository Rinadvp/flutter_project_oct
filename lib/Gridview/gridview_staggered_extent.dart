import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main(){
  runApp(MaterialApp(
    home: gridview_staggered_extent(),
  ));
}

class gridview_staggered_extent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: StaggeredGrid.extent(maxCrossAxisExtent: 2000,
        children: [
          StaggeredGridTile.extent(
              crossAxisCellCount: 400,
              mainAxisExtent: 200,
              child: Container(
                decoration: BoxDecoration(color: Colors.blue,image: DecorationImage(
                  image: AssetImage('assets/image/Grape-Flat.512.png'),
                    fit: BoxFit.fill
                )),
              )),

          StaggeredGridTile.extent(
              crossAxisCellCount: 150,
              mainAxisExtent: 300,
              child: Container(
                decoration: BoxDecoration(color: Colors.yellow,image: DecorationImage(
                    image: AssetImage('assets/image/orange.png'),
                    fit: BoxFit.fill
                )),
              )),

          StaggeredGridTile.extent(
              crossAxisCellCount: 30,
              mainAxisExtent: 50,
              child: Container(
                decoration: BoxDecoration(color: Colors.blue,image: DecorationImage(
                    image: AssetImage('assets/image/peach.png'),
                    fit: BoxFit.fill
                )),
              ))
            ]),
      ),
    );
  }

}