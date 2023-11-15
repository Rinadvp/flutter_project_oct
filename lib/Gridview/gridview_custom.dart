
import 'package:flutter/material.dart';

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
     GridView.custom(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
         childrenDelegate: SliverChildBuilderDelegate((context, index) => Container(
           child:  Image.asset('assets/image/Grape-Flat.512.png',fit: BoxFit.fill,))),
         ),
   );
  }

}