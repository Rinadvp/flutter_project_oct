import 'package:flutter/material.dart';

class mywidget extends StatelessWidget{
  final Color? bgcolor;
  final Image? image;
  final Widget? label;
  VoidCallback? onpressed;

  mywidget(this.bgcolor,{this.image,required this.label,required this.onpressed});

  @override
  Widget build(BuildContext context) {
   return
       Card(
         color: bgcolor,
         child: Column(children: [
           Container(
             child: image,
           ),
           ElevatedButton(onPressed: onpressed, child: label)
         ],),
       );
  }

}