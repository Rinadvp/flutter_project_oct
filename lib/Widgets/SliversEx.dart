import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: sliversEx(),
  ));
}

class sliversEx extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            centerTitle: true,
            title:Text('SLivers'),
           bottom: AppBar(
             title: Container(
               width: double.infinity,
               height: 40,
               color: Colors.white,
               child: TextField(
                   decoration: InputDecoration(
                     hintText: 'Search',
                     prefixIcon: Icon(Icons.search),
                     suffixIcon: Icon(Icons.camera_alt),
                   )),
             ),
           ),
          ),
          SliverList(delegate: SliverChildListDelegate(
              List.generate(20, (index) => ListTile(
                leading: Icon(Icons.person),
                title: Text('User $index'),

              ))))
        ],
      ),
    );
  }

}