
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: gridview1(),
  ));
}

class gridview1 extends StatelessWidget{
  @override
  Widget build(Object context) {
   return Scaffold(
     appBar: AppBar(

     ),
     body:
     // GridView(
     //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
     // children: List.generate(20, (index) => Card(
     //   child: Image.asset('assets/image/banana.png'),
     // ))),

     GridView(gridDelegate:
     SliverGridDelegateWithMaxCrossAxisExtent(
         maxCrossAxisExtent: 50,crossAxisSpacing: 40,mainAxisSpacing: 10),
    children: List.generate(20, (index) => Container(color: Colors.black,
    child: Image.asset('assets/image/banana.png',width: 40,height: 20),
    )),
     ));
  }

}