import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_project_oct/loginpage.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(MaterialApp(
    home: Splash2(),
  ));
}

class Splash2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Splash2State();
}

class _Splash2State extends State<Splash2> {

  @override
  void initState() {
    Timer(Duration(seconds: 4), () {
      Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => Loginpage() ));
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child:
            // Lottie.asset('assets/animation/Animation -.json'),
            Lottie.network(
                'https://lottie.host/66434171-1e5f-4daa-a915-8a271e665acd/B0Gmqeijoq.json',
            width: 350),
      ),
    );
  }
}

