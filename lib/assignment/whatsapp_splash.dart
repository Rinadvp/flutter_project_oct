import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: whats(),
  ));
}
class whats extends StatefulWidget {
  const whats({super.key});

  @override
  State<whats> createState() => _whatsState();
}

class _whatsState extends State<whats> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(child:
      Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top:250 ),
            child: Icon(FontAwesomeIcons.whatsapp,size: 70,),),


          Container(padding: EdgeInsets.only(bottom: 250),),

          Text(textAlign: TextAlign.center,'from'),
      Row(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(FontAwesomeIcons.meta),
          SizedBox(width: 10),
          Text('Meta',style: TextStyle(fontSize:30,color: Colors.black,fontWeight: FontWeight.bold)),

        ],
      ),
          ]
          ),


              ),

      );

  }
}
