import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: Signup(),
  ));
}

class Signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true ,
          backgroundColor: Colors.white,
          title: Text('WELCOME!',style: TextStyle(color: Colors.black),),

        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Text(
                  'Email',
                  style: GoogleFonts.satisfy(
                    fontSize: 20,
                  ),
                ),
                Text(
                  'password',
                  style: GoogleFonts.satisfy(
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
