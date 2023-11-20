

// void main(){
//   MaterialApp app = MaterialApp(
//     title: 'hmmmmmmmm',
//     home: Scaffold(
//       body: Container(
//         child: Center(
//           child: Text(
//             'hmmmmmmm',style: TextStyle(color: Colors.black),
//           ),
//         ),
//       ),
//     ),
//   );
//   runApp(app);
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: hmmm(),
  ));
}
class hmmm extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text('hmmmmm',style: TextStyle(fontSize: 50,color: Colors.black),),
        ),
      ),
    );
  }

}
