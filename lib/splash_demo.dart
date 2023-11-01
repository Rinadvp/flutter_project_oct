import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Splash(),));
}

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image:AssetImage ('assets/icons/imo icon.png')),
            Text('imo',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold ,color: Colors.blueAccent),)
          ],
        ),
      ),
    );

  }
  
}