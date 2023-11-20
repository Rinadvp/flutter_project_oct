

import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: heart_shaker(),
  ));
}

class heart_shaker extends StatelessWidget{

  var icons= [ Icons.home,
  Icons.add_alert,
  Icons.linked_camera,
  Icons.star_rate_sharp,
  Icons.align_vertical_center,
  Icons.book_sharp,
  Icons.call,
  Icons.mail,
  Icons.check_box_outline_blank,
  Icons.rectangle,
  Icons.mic_off,
  Icons.filter_9_plus];

  var colors = [Colors.blueAccent,Colors.orange,Colors.green,Colors.pinkAccent,
  Colors.redAccent,Colors.blue,Colors.purple,Colors.green,Colors.yellow,Colors.deepOrangeAccent,
  Colors.pinkAccent,Colors.lightGreen];
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text('Gridview',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
       centerTitle: true,
       backgroundColor: Colors.blue,
     ),
body: GridView.builder(
  itemCount:12,
    gridDelegate:
SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2,
     mainAxisExtent: 100,
    crossAxisSpacing: 20,
  mainAxisSpacing: 20),
    itemBuilder: (context, index) =>
    Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      color: colors[index],
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(icons[index]),
            const SizedBox (
              width: 8-0,
              child: Text('Heart Shaker',maxLines:2,style: TextStyle(

                  color: Colors.black,fontSize: 20,fontWeight:  FontWeight.bold),
              ),
            )
          ],
        ),
      ),



    ),
    )
   );
  }

}