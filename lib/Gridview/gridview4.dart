

import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: gridview4(),
  ));
}

class gridview4 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body:
     GridView.count(crossAxisCount: 4,children:
       List.generate(20, (index) => Column(
         children: [
           Expanded(child: Image.asset('assets/image/Watermelon-cuts.512.png',fit: BoxFit.fill,)),
           Expanded(child: Text('Watermelon')),
         ],
       )),),
   );
  }

}