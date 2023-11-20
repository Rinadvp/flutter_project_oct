
import 'package:flutter/material.dart';
import 'package:flutter_project_oct/Gridview/my%20widget.dart';

void main(){
  runApp(MaterialApp(
    home: gridview_custom(),
  ));
}

class gridview_custom extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body:
     GridView.custom(gridDelegate:
     SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
         childrenDelegate: SliverChildBuilderDelegate(
                 childCount: 20,
         //         (context, index) => Container(
         //   child:  Image.asset('assets/image/Grape-Flat.512.png',fit: BoxFit.fill,))),
         // ),
         (context, index ) => mywidget(Colors.cyan, label: Text('Hola'), onpressed: () {

         },)
    ),)
   );
  }

}