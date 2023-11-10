

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_oct/assignment/login_assai.dart';
import 'package:flutter_project_oct/assignment/signup_assai.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(

    home: Home(),
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 100,),
                child: Text('HELLO THERE !!', style: GoogleFonts.roboto(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Text('Automatic identify verification which enable'
                    'you to verify your identity', style: GoogleFonts.poppins(
                    fontWeight: FontWeight.normal,
                    fontSize: 15,
                    color: Colors.black
                ),),
              ),
              Image(image: AssetImage(
                  'assets/image/Screenshot 2023-11-08 205424.png')),
              SizedBox(height: 20,width: 10,),
              MaterialButton(
                height: 50,
                minWidth: 250,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                },
                color: Colors.blueAccent,
                shape: const StadiumBorder(),
                child: const Text('Login'),),
              SizedBox(height: 30,),
              MaterialButton(
                height: 50,
                minWidth: 250,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignUp()));
                },
                color: Colors.redAccent,
                shape: const StadiumBorder(),
                child: const Text('Sign up'),),
            ],
          ),
        ),
      ),
    );
  }
}