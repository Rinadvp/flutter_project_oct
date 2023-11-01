
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main(){
  runApp(MaterialApp(home: Splash(),));
}
class Splash extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    //  backgroundColor: Colors.black,
      body:Container(
        decoration: const BoxDecoration(
            ///to set background image for body
          // image: DecorationImage(
         // fit: BoxFit.cover,
         //   image: NetworkImage(
          //   'https://img.freepik.com/free-vector/blur-pink-blue-abstract-gradient-background-vector_53876-174836.jpg?size=626&ext=jpg&ga=GA1.1.386372595.1698537600&semt=ais'))),
          //   child:Center(
          gradient: LinearGradient(colors: [
            Colors.black38,
            Colors.redAccent,
            Colors.deepOrange,
            Colors.yellow,
          ])),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Icon(Icons.dark_mode,size: 100,color: Colors.white,),
              Image(image: AssetImage('assets/icons/noon.webp')),
               Text('noon ', //style:TextStyle(fontSize:30,color:Colors.white,fontWeight: FontWeight.bold),)
              style: GoogleFonts.roboto(
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.bold
              )
               )
            ],
          ),
        ),
      ),

    );

  }

}