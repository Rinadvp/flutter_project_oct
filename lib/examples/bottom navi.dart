import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: bottomnavi(),
  ));
}

class bottomnavi extends StatelessWidget {
  const bottomnavi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('App'),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: [BottomNavigationBarItem(icon: Icon(Icons.person),
              backgroundColor: Colors.black,label: 'person'),
          BottomNavigationBarItem(icon: Icon(Icons.chat),label: 'chat'),
          BottomNavigationBarItem(icon: Icon(Icons.call),label: 'call')]),
    );
  }
}
