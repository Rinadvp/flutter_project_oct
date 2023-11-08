
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main() {

runApp(MaterialApp(home: Home(),));

}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MY CONTACTS'),
      ),
      body: ListView(
        children:const [
          Card(
        child:  ListTile(
          title : Text('RL'),
            subtitle: Text('3652985632'),
            leading: CircleAvatar(
              backgroundColor: Colors.green,
              child: Icon(Icons.person),
            ),
            trailing: Icon(Icons.phone),
          ),
          ),

          ListTile(
            title : Text('MAT'),
            subtitle: Text('3652985632'),
            leading: CircleAvatar(
              backgroundImage: NetworkImage('https://imageio.forbes.com/specials-images/imageserve/64ad5f3668d3f32dcae9bcfd/FC-Barcelona-could-extend-Marc-Andre-ter-Stegen-until-2028-/960x0.jpg?format=jpg&width=960'),

            ),
            trailing: Icon(Icons.phone),
          ),
    ListTile(
      title: Text('JK'),
      subtitle: Text('6985743625'),
      leading: CircleAvatar(
        backgroundImage: NetworkImage('https://www.fcbarcelona.com/photo-resources/2023/10/03/ee46d3b6-addc-4329-a8e7-42f19c5fe308/mini_23-JULES_KOUNDE.png?width=670&height=790'),
      ),
      trailing: Icon(Icons.message),
    ),
    ListTile(
    title : Text('RA'),
    subtitle:Row(
      children: [
        Icon(Icons.done_all,color: Colors.blue,),
        Text('Hi r u there')
      ],
    ),
    leading: CircleAvatar(
    backgroundImage: NetworkImage('https://store.fcbarcelona.com/cdn/shop/files/ronald_araujo_02_A.jpg?v=1695977428&width=1946'),

    ),

    trailing: Text('11.59 PM'),
    ),
ListTile(
  title: Text('JC'),
  subtitle:Text('1236589785'),
  leading: CircleAvatar(
    backgroundImage: NetworkImage('https://akhbarkora.com/temp/resized/medium_2023-09-12-9064af30a5.jpg'),
  ),
  trailing: Icon(Icons.message),
),


          ListTile(
            title : Text('AB'),
            subtitle:Row(
              children: [
                Icon(Icons.done_all),
                Text('Hi r u there'),
              ],
            ),
            leading: CircleAvatar(
              backgroundImage: NetworkImage('https://t0.gstatic.com/images?q=tbn:ANd9GcSFeY99jwFyjOXIEFPSu4Qmd6-DkfoDEsVTImFvkdOX0yIcO_A4gwKJNb6zf42LZVUHJKuDfw'),

            ),

            trailing: Column(
              children: [
                Text('yesterday'),
                CircleAvatar(
                  radius: 10,

backgroundColor:Colors.greenAccent,
                child: Text('2'),
                )
              ],
            ),
          ),


            ListTile(
              title: Text('FDJ'),
              subtitle:Text('989865789865'),
              leading: CircleAvatar(
                backgroundImage: NetworkImage('https://oneftbl-cms.imgix.net/https%3A%2F%2Fimages2.minutemediacdn.com%2Fimage%2Fupload%2Fc_crop%2Cw_3310%2Ch_1861%2Cx_357%2Cy_60%2Fc_fill%2Cw_1440%2Car_16%3A9%2Cf_auto%2Cq_auto%2Cg_auto%2Fimages%2FGettyImages%2Fmmsport%2F90min_en_international_web%2F01hcypkxr81b6zqjxwhd.jpg?auto=format%2Ccompress&crop=faces&dpr=2&fit=crop&h=210&q=25&w=280&s=5a544d10c57d85043cf1b28320624a16'),
              ),
              trailing: Icon(Icons.video_call),
            ),


          Padding(
            padding: EdgeInsets.only( top: 100),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                FaIcon(FontAwesomeIcons.google),
                FaIcon(FontAwesomeIcons.facebook),
                FaIcon(FontAwesomeIcons.x),
                FaIcon(FontAwesomeIcons.instagram)

              ],
            ),
          ),



        ],
      ),
    );
  }

}

