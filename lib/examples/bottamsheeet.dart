import 'package:flutter/material.dart';

class bottomsheeet extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: GestureDetector(
          onTap: () {

          },
          child: Image(image: AssetImage('assets/image/London.png'),color: Colors.black),
        ),
      ),
    );
  }

}