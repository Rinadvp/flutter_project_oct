import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_oct/home.dart';
void main(){
  runApp(MaterialApp(
    home: Stateful_Login(),
  ));
}

class Stateful_Login extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=>  _Stateful_Loginstate();

}

class _Stateful_Loginstate extends State<Stateful_Login>{
  final validkey = GlobalKey<FormState>(); // key for the

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text('LOGIN PAGE'),
     ),

     body: Center(
       child: Padding(
         padding: const EdgeInsets.all(15),
         child: Form(
           key: validkey,
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               const Text(
                 'Login page',
                 style:TextStyle(fontSize: 35) ,
               ),
               TextFormField(
                 validator:(email){
                   if(email!.isEmpty || !email.contains('@') || !email.contains('gmail.com')){
                     return 'invalid email';
                   }
                 },
                 decoration: const InputDecoration(
                   border: OutlineInputBorder(),
                   hintText: 'username'),
               ),
               const SizedBox(
                 height: 15,
               ),
               TextFormField(
                 validator: (password){
                   if(password!.isEmpty || !password.contains('@') || !password.contains('gmail.com')) {
                     return 'password must not be empty or length should be greater than 6';
                   }
                 },
                 decoration: const InputDecoration(
                   border: OutlineInputBorder(),
                   hintText: 'password'),
               ),
               const SizedBox(
                 height: 15,
               ),
               MaterialButton(
                   onPressed: (){
                     final valid = validkey.currentState!.validate();
                     if(valid == true){
                       Navigator.push(context,
                           MaterialPageRoute(builder: (context) => Home()));
                     }else{
                       ScaffoldMessenger.of(context).showSnackBar(
                         const SnackBar(
                             backgroundColor: Colors.red,
                         content: Text('invalid Email/password')));

                     }
                   },
                 color: Colors.green,
                 shape: const StadiumBorder(),
                 child: const Text('Login'),
               ),
               TextButton(
                   onPressed: (){},
                   child: const Text('Not a user? Register here!!'))
             ],
           ),
         ),
       )
     ),
   );


  }
}