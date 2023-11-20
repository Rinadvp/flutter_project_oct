import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: bottomsheet(),
  ));
}

class bottomsheet extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(),
     body: Center(
       child: GestureDetector(
         onDoubleTap: () {
         showsheet(context) ;
         },
           child: Image.asset('assets/image/-Strawberry.256.png')),
     ),
   );
  }
}

void showsheet(BuildContext context) {
  showModalBottomSheet(
      context: context,
      builder: (context){
        return const Column(
          mainAxisSize: MainAxisSize.min,
          children: [
           //  Row(
           //    children: [Icon(Icons.share),
           //    Text('Share')],
           //  ),
           // Row(children: [Icon(Icons.share),Text('Copy')],),
           ListTile(
             leading: Icon(Icons.share),
             trailing: Text('Share'),
           ),
            ListTile(
              leading: Icon(Icons.copy),
              trailing: Text('Copy'),
            ),
          ],
        );
  });
}
