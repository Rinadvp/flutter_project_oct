import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Advertisement(),
  ));
}

class Advertisement extends StatelessWidget {
  var  Months = ['January','February','March','April','May','June','July','August','September','October','November','December'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: ListView.separated(
            itemBuilder: (context, index) {
             return  Card(
                child: Text(Months[index] ,style: TextStyle(fontSize: 30),),
              );
            },
            separatorBuilder: (context, index) {
              if (index % 4 == 0) {
                return const Card(
                  color: Colors.red,
                  child: Text('Advertisement',style: TextStyle(fontSize: 30),),
                );
              } else {
                return SizedBox();
              }
            },
            itemCount: 12));

  }
}
