import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: carousel(),
  ));
}

class carousel extends StatelessWidget{
  var image =[ 'assets/icons/noon.webp','assets/icons/top secret.png','assets/icons/noon.webp',];
var text = ['hi','how are you','welcome'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body:  Center(
        child: CarouselSlider(items: List.generate(3, (index) => Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(image[index]),
            fit: BoxFit.fill),
          ),
            child:Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 30,bottom: 150),
                  child: Text(text[index],style:
                  TextStyle (color: Colors.black,fontWeight:  FontWeight.bold,fontSize: 30)),
                ),
              ],
            ) ),


            ),


         options: CarouselOptions(
          aspectRatio: 16/9,
          viewportFraction: 1,
          initialPage: 1,
          enableInfiniteScroll: true,
          autoPlay: true,
          autoPlayCurve: Curves.fastEaseInToSlowEaseOut,
          autoPlayInterval: Duration(seconds: 3),
          pauseAutoPlayOnTouch: true,
        )),
      ));
  }

}