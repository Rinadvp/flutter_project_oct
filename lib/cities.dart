import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: cities(),
  ));
}

class cities extends StatelessWidget{
  var image = ['assets/image/Delhi.png', 'assets/image/Finland.png',
               'assets/image/London.png', 'assets/image/vancouver.png'];
  var city = ['Delhi','Finland','London','vancouver'];
  var country = ['India','Europe','Uk','Canada'];
  var population = [32.9, 5.54,8.8, 2.6 ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      appBar: AppBar(
        title: const Text(
          'Cities Around the world',style: TextStyle(
          fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white,
        ),),backgroundColor: Colors.red,
elevation: 0,
      ),
      body: ListView(
        children: List.generate(4,
                  (index) => Card(
                    color: Colors.orange,
               shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
               child: Container(
    padding: EdgeInsets.only(left: 10),
                 child: Row(
            mainAxisSize: MainAxisSize.min,
                   children: [
                     Image(image: AssetImage(image[index]),
                     fit:BoxFit.fill,
                 height: 100,
                 width: 150,
                     ),
                     Container(
                       padding: EdgeInsets.only(left: 20),
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text(city[index],style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                           const SizedBox(
                             height: 15,
                           ),
                           Text(
                             country[index],
                             style: const TextStyle(
                               fontSize: 13,
                               fontWeight: FontWeight.bold,
                               color: Colors.black),
                             ),
                           Text(
                            'population = ${population[index]} mill',
                             style: TextStyle(fontSize: 11,color: Colors.black),
                           ),
                         ],
                       ),
                     ),
                   ],
                   ),
               ),
             )),
      )   );
  }
}