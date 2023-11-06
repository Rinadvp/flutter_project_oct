import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_oct/home.dart';
import 'package:flutter_project_oct/sign%20up.dart';
import 'package:google_fonts/google_fonts.dart';

class Loginpage extends StatelessWidget{
  String username ='rinad';
  String password ='rinad123';

  final user_controller = TextEditingController();
  final pass_controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.white,
       leading: IconButton(onPressed: (){

       }, icon: Icon(Icons.arrow_back_ios,)),
       elevation : 0,
     ),
     body: Center(
       child: Column(
         //mainAxis
         children: [
           Text(


             'Login',
             style: GoogleFonts.satisfy(
               fontSize: 20, fontWeight: FontWeight.bold),
           ),
           Text(
             'Welcome back! Login with your Credentials!!',
             style: GoogleFonts.satisfy(
               fontSize: 20,fontWeight: FontWeight.bold),
           ),
           Padding(
             padding:  EdgeInsets.all(15.0),
             child: TextField(
               controller: user_controller,
               decoration: InputDecoration(
                 labelText: 'user name',
                   prefixIcon: Icon(Icons.person),
                   hintText: 'username',
                   border: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(40)
                   )),
             ),
           ),

           Padding(
             padding:  EdgeInsets.only(bottom: 15.0,left: 15,right: 15,),
            child: TextField(
              obscureText: true,
              controller: pass_controller,
              decoration: InputDecoration(
                labelText: 'password',
                prefixIcon: Icon(Icons.password),
                hintText: 'password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40)
                )
              ),
            ),
           ),
           MaterialButton(
             height: 50,
             minWidth: 170,
             onPressed: (){
               if(username == user_controller.text && password == pass_controller.text){
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
               }
               user_controller.text ='';
               pass_controller.text='';
             },
             color: Colors.green,
             shape: const StadiumBorder(),
             child: const Text('Login'),
           ),
           TextButton(
               onPressed: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>Signup()));
               },
               // child: Text('Dont Have a Account? signup!')
             child: RichText(
               text: const TextSpan(
                 style: TextStyle(color: Colors.black,fontSize: 15),
                 children: [
                   TextSpan(text: 'Dont have a acoount?'),
                   TextSpan(
                     text: 'sign up !!',
                     style: TextStyle(
                       fontWeight: FontWeight.bold
                     )
                   )
                 ]
               )
               ),
             )
         ],

       ),
     ),
   );
  }
}
  
