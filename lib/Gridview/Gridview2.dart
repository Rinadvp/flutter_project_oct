
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: gridview_builder(),
  ));
}

class gridview_builder extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(),
     body:
   //   GridView.builder(gridDelegate:
   //   SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,mainAxisSpacing: 20,crossAxisSpacing: 20),
   //       itemBuilder:(context, index)=>
   //  Container(
   //  color: Colors.black,
   //  child: Center(child:  Text('user',style:
   //  TextStyle(color: Colors.white,fontSize: 20),)),
   //  )),
     GridView.builder(gridDelegate:
     SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 120),
         itemBuilder: (context , index)=>
    Container(
    color: Colors.red,
    child: Column(
    children: [
      Image.asset('assets/image/banana.png',width: 60),
    Text('user ${index +1}',style: TextStyle(color: Colors.white))
    ],
    ),
    )
   ));
  }

}