import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_oct/assignment/Home_assai.dart';
import 'package:flutter_project_oct/assignment/login_assai.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Home()));
          },
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.black,
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Text(
                'Sign up',
                style: GoogleFonts.satisfy(
                    fontSize: 50, fontWeight: FontWeight.bold),
              ),
              Text(
                'Create an account its free',
                style: GoogleFonts.satisfy(
                    fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: EdgeInsets.all(15.0),
                child: TextField(
                  decoration: InputDecoration(
                      labelText: "Email",
                      prefixIcon: Icon(Icons.person),
                      hintText: "Email",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40))),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 15.0, left: 15, right: 15),
                child: TextField(
                  decoration: InputDecoration(
                      labelText: 'PassWord',
                      prefixIcon: Icon(Icons.password),
                      hintText: "Password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40))),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 15.0, left: 15, right: 15),
                child: TextField(
                  decoration: InputDecoration(
                      labelText: 'Confirm PassWord',
                      prefixIcon: Icon(Icons.password),
                      hintText: "Confirm Password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40))),
                ),
              ),
              MaterialButton(
                height: 50,
                minWidth: 170,
                onPressed: () {},
                color: Colors.red,
                shape: const StadiumBorder(),
                child: const Text('Login'),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                  child: RichText(
                      text: const TextSpan(
                          style: TextStyle(color: Colors.black, fontSize: 15),
                          children: [
                        TextSpan(text: "Already Have an Account?? "),
                        TextSpan(
                            text: "Login!!",
                            style: TextStyle(fontWeight: FontWeight.bold))
                      ])))
            ],
          ),
        ),
      ),
    );
  }
}
