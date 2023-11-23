import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: drawerEx(),
    theme: ThemeData(primarySwatch: Colors.green),
  ));
}

class drawerEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Drawer'),
      ),
      drawer: Drawer(
        backgroundColor: Colors.blueGrey,
        child: ListView (
          children: const [
            UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/image/London.png'),
                        fit: BoxFit.cover)),

                otherAccountsPictures: [
                  // Text(
                  //     style: TextStyle(
                  //       fontWeight: FontWeight.bold,
                  //     ),
                  //     'Welcome '),
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/image/-Strawberry.256.png'),
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/image/mango.png'),
                  )
                ],
                otherAccountsPicturesSize: Size(50,50),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('assets/image/banana.png'),
                ),
                accountName: Text('Whoo'),
                accountEmail: Text('who123@gmail.com')),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Person'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}
