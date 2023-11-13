import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: fruits(),
  ));
}
class fruits extends StatelessWidget {

  var Fruits =['assets/image/apple.png',
    'assets/image/mango.png',
    'assets/image/banana.png',
    'assets/image/Grape-Flat.512.png',
    'assets/image/Watermelon-cuts.512.png',
    'assets/image/-Strawberry.256.png',
    'assets/image/orange.png',
    'assets/image/peach.png',];
  var name = ['Apple','Mango','Banana','Grape','Watermelon','Strawberry','Orange','Peach',];
  var unit = ['KG','DOZ','DOZ','KG','KG','PCS','KG','PCS',];
  var price =['rs 150','rs 60','rs 50','rs 80','rs 25','rs 100','rs 90','rs 200',];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar:  AppBar(
          actions: [
           Badge(
              child:  Icon(Icons.shopping_cart,size: 30),

            )
          ],
          centerTitle: true,
          title:const  Text(

              'Product List', style: TextStyle(
            fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white,
          )), backgroundColor: Colors.blue,
        ),

            body: ListView.custom(
                childrenDelegate: SliverChildBuilderDelegate(
                  childCount: 8,
                        (context, index) => Card(
                       color: Colors.grey,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [

                         Image(image:AssetImage(Fruits[index]),width: 50,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(name[index],style: TextStyle(
                                  fontSize: 15,fontWeight: FontWeight.bold,),),
                              Text(unit[index]),
                              Text(price[index]),
                            ],
                          ),
                              MaterialButton(
                                  onPressed:() {},
                              shape: StadiumBorder(),
                              color: Colors.black,
                              minWidth: 120,
                              height: 40,
                              child: Text('add to cart',style: TextStyle(color: Colors.white,),),

                              )

                            ],
                          ),
                        ))),
        );

  }
}

