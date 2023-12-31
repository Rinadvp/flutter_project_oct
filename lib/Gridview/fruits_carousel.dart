import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';


void main(){
  runApp(MaterialApp(
    home: fruits_carousel(),
  ));
}

class fruits_carousel extends StatelessWidget{

  var images =['assets/image/-Strawberry.256.png',
    'assets/image/apple.png',
    'assets/image/banana.png',
    'assets/image/mango.png',
    'assets/image/orange.png',
    'assets/image/peach.png',
    'assets/image/-Strawberry.256.png',
    'assets/image/Watermelon-cuts.512.png',];

  var text=['strawberry','apple','banana','mango','orange','peach','strawberry','watermelon',];
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       centerTitle: true,
       title: Text('FRUITS',style: TextStyle(
           fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black)),
       backgroundColor: Colors.blue,
     ),
         body:
            Center(
              child: CarouselSlider(items:List.generate(8, (index) =>
                 Container(
                   decoration: BoxDecoration(
                     image:DecorationImage(image:  AssetImage(images[index]),
    fit:BoxFit.fill ),


                 ),
    child:  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 100),
          child: Column(
            children: [
              Text(text[index],style: TextStyle(
              fontWeight: FontWeight.bold,fontSize: 30,color: Colors.black)),
            ],
          ),
        ),
      ],
    ),alignment: Alignment.center,

    ),

            ),
               options: CarouselOptions(autoPlay: true,
                   autoPlayInterval: Duration(seconds: 5),
                   autoPlayAnimationDuration: Duration(seconds: 6)),
   ),
            )  );
  }

}