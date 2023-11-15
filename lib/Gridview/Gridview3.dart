
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: gridview3(),
  ));
}

class gridview3 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(crossAxisCount: 4,
        children: List.generate(20, (index) => Card(
          child:
          Column(
            children: [
              Expanded(child: Image.asset('assets/image/London.png',fit: BoxFit.fill,)),
              Expanded(child: Text('Nature',style: TextStyle(color: Colors.black),))
            ],
          ),
        )),

    ),

    );
  
}
}