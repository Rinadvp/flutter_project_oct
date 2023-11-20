import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: listview_custom(),
  ));
}

class listview_custom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('listview_custom'),
        ),
        body: ListView.custom(
          //     [
          //   Card(child: Center(child: Text('hello'),),),
          //   Card(child: Center(child: Text('hello'),),),
          //   Card(child: Center(child: Text('hello'),),),
          //   Card(child: Center(child: Text('hello'),),),
          // ]
          //  List.generate(10, (index) => const Card(child: Center(child: Text('hello'),),),)
          childrenDelegate: SliverChildBuilderDelegate(
              childCount: 10,
              (context, index) => Card(
                color: Colors.grey,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset('assets/image/peach.png',width: 50),
                        const Column(

                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Text('Name     : grapes'),
                            Text('Quantity : 2kg'),
                            Text('price    : \$100/kg'),
                          ],
                        ),
                        MaterialButton(
                          onPressed: () {},
                          shape: const StadiumBorder(),
                          color: Colors.red,
                          minWidth: 120,
                          height: 40,
                          child: const Text(
                            'add to cart',
                            style: TextStyle(color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  )),
        ));
  }
}
