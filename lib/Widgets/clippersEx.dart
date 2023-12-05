import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

void main(){
  runApp(MaterialApp(
    home: clippersEx(),
  ));
}

class clippersEx extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.blue,
      appBar: AppBar(
        centerTitle: true,
        title: Text('clippers'),
      ),
      body: ListView(
        children: [
          const ClipRect(
            child: Align(heightFactor: .6,
                widthFactor: .2,
                alignment: Alignment.centerLeft,
                child: Image(image: NetworkImage('https://i.pinimg.com/originals/c1/ff/b9/c1ffb90d2b90220c61aa11028a8cef3d.jpg'))),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(150),
         child: Image(image: NetworkImage('https://i.pinimg.com/736x/bd/4c/26/bd4c268f109233cb52aafc4c08d786b2.jpg')), )
          ,ClipOval(clipBehavior: Clip.antiAlias,
            child: Image(image: NetworkImage('https://www.investopedia.com/thmb/ckPwC5ARwco1nOSCKVGE57se8MI=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/GettyImages-1245748917-99e3329a7b8147e8ab648806220ce153.jpg')),
            
          ),
          ClipPath(
            clipper: TriangleClipper(),
            child:  Image(image: NetworkImage('https://t0.gstatic.com/images?q=tbn:ANd9GcTCtby6glvvPEpms5mv6tTCvFT607iGBXk_Ko2wEGr1P9L7rvb3bWC2UCnGnQ3P7lpTHW9d'))
          ),
          ClipPath(
            clipper: MovieTicketBothSidesClipper(),
          child: Image(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT1MqFLtlCHsAqLQnx-d4ggsnIuFw_285qjKQ&usqp=CAU')),
          ),

          
        ],
      ),
    );
  }

}