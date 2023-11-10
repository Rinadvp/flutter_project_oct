import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: cities(),
  ));
}

class cities extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      appBar: AppBar(
        title: const Text(
          'Cities Around the world',style: TextStyle(
          fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white,
        ),),backgroundColor: Colors.red,

      ),
      body: ListView(
        children: List.generate(1,
                  (index) => ListTile(
                    tileColor: Colors.orange,


                    leading:  Padding(
                      padding: const EdgeInsets.only(left: 2,right:2),
                      child: Image(//width: 300,height: 350,
                        image: AssetImage('assets/image/Delhi.png',),
                      ),
                    ),
                   title:   Text('Delhi'//   'india') ,
                    ),
                    subtitle: Text(   'india'),

                  )

      ),
      ));
  }

}