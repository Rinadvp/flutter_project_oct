import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home: Listview2(),
  ));
}
class Listview2 extends StatelessWidget{

  var name=['mark','ronald','jules','frankie','pablo','gonzalez','yamine','robert','felix','fermin'];
  var message=['good','good morning','ok','good night','hello','hi','where are you','are you ok','gracias','hola'];
 var date_time=['10.00 AM','10.15 AM','YESTERDAY','YESTERDAY','TUESDAY','12.00 PM','1.00 PM','SUNDAY','9.00 PM','4.00 PM'];
 var icons = [Icon(Icons.done_all,color: Colors.blue,), Icon(Icons.done),Icon(Icons.done_all),Icon(Icons.done_all,color: Colors.blue,),Icon(Icons.done),Icon(Icons.access_time_filled_outlined),Icon(Icons.done_all),Icon(Icons.done_all),Icon(Icons.done),Icon(Icons.done_all,color: Colors.blue,)];
 var mes_num= ['2','5','4','1','5','2','2','3','2','1'];
 var images =['https://pbs.twimg.com/profile_images/1691175878053466112/nz_s4LnE_400x400.jpg',
             'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQb61NZa-UUfSUhkXMC_TSkA-QTqpcsRW-h3A&usqp=CAU',
  'https://www.fcbarcelona.com/photo-resources/2023/10/03/ee46d3b6-addc-4329-a8e7-42f19c5fe308/mini_23-JULES_KOUNDE.png?width=670&height=790',
  'https://www.fcbarcelona.com/photo-resources/2023/10/03/d2214796-ebc8-4b1c-bb5d-37f2ce5883c7/21-FRENKIE_DE_JONG.jpg?width=1200&height=750',
  'https://www.fcbarcelona.com/photo-resources/2023/10/04/d78dbb69-390a-4540-9d0b-be36b46534f3/mini_30-GAVI.png?width=670&height=790',
  'https://www.fcbarcelona.com/photo-resources/2023/10/03/4b341216-a50a-4d80-95ff-5ca2e5dcf640/08-PEDRI.jpg?width=1200&height=750',
  'https://media.cnn.com/api/v1/images/stellar/prod/231009122612-01-lamine-yamal-wand-of-god.jpg?c=original',
  'https://store.fcbarcelona.com/cdn/shop/files/WhatsApp_Image_2023-09-19_at_21.33.25_ff8aa164-875a-461d-8d7a-ab0a7170c44d.jpg?v=1696331169&width=800',
  'https://cdn.vox-cdn.com/thumbor/5kzZBP3CMsQWNAAS_IFUnEnPcso=/1400x1400/filters:format(jpeg)/cdn.vox-cdn.com/uploads/chorus_asset/file/24936004/1691179353.jpg',
 'https://www.mykhel.com/img/2023/07/fermin-lopez-s-1690812738.jpg'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview2'),
      ),
      body: ListView(
        children: List.generate(10,
                (index) => ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(images[index]),
           //  backgroundColor: Colors.primaries[Random().nextInt(Colors.primaries.length)],
           // child: Icon(Icons.person),
          ),
          title: Text(name[index]),
                  subtitle: Row(
                    children: [
                     // Icon(Icons[index]),
                      icons[index],
                      Text(message[index]),
                    ],
                  ),
                  trailing: Column(
                    children: [

                      Text(date_time[index]),
                    SizedBox(height: 10,),
                      CircleAvatar(
                        child: Text(mes_num[index]),
                      radius: 10,
                      backgroundColor: Colors.blue,

                             )

                  ],
                  )
        )),
      ),
    );
  }

}