import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main(){
  runApp(MaterialApp(
    home: Splash00(),
  ));
}

class Splash00 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _Splash00State();

  }

class _Splash00State  extends State<Splash00>{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: Colors.grey,
     body: Center(
       child:
       Lottie.asset('assets/animation/Animation -.json',
       ),
     )
   ) ;
  }
}







