import 'package:flutter/material.dart';
import 'package:screen_auth/auth_screen2/forget_screen2.dart';
import 'package:screen_auth/auth_screen2/signup_screen2.dart';
import 'package:screen_auth/auth_screen2/welcome_screen2.dart';

import '../auth_screen1/forget_screen1.dart';
class LoginTwo extends StatefulWidget {
  const LoginTwo({Key? key}) : super(key: key);

  @override
  State<LoginTwo> createState() => _LoginTwoState();
}

class _LoginTwoState extends State<LoginTwo> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return Scaffold(
        body: Stack(
        fit: StackFit.expand,
        children: [
        Image.asset("assets/backgroundimg.jpg",fit: BoxFit.fill,),
          Container(
            margin: EdgeInsets.only(top: (height/4)),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
           child: Column(
             children: [
               Card(
                 margin: const EdgeInsets.fromLTRB(20, 70, 20, 20),
                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                 color: Colors.grey.shade300,
                 child: TextFormField(
                   decoration: InputDecoration(
                     border: InputBorder.none,
                     hintText: "Email",
                     contentPadding: EdgeInsets.only(left: 20)
                   ),
                 ),
               ),
               Card(
                 margin: const EdgeInsets.all(20),
                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                 color: Colors.grey.shade300,
                 child: TextFormField(
                   decoration: InputDecoration(
                     border: InputBorder.none,
                     hintText: "Password",
                     contentPadding: EdgeInsets.only(left: 20)
                   ),
                 ),
               ),
               Card(
                 margin: const EdgeInsets.all(20),
                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                 color: Colors.blue.shade900,
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.stretch,
                   children: [
                     TextButton(
                       child: const Text('Sign in',style: TextStyle(
                           color: Colors.white,
                           fontWeight: FontWeight.bold
                       ),),
                       onPressed: (){},
                     ),
                   ],
                 ),
               ),
               TextButton(onPressed: (){
                 Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ForgetTwo()),);
               }, child: const Text("Forgot Password?")),
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   const Text("Don't have an account?"),
                   TextButton(onPressed: (){
                     Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Signuptwo()));
                   }, child: const Text("Sign Up")),
                 ],
               ),
               Container(
                 padding: EdgeInsets.all(18),
                   decoration: BoxDecoration(
                     color: Colors.grey.shade200,
                     borderRadius: BorderRadius.circular(10),
                   ),
                   child: IconButton(onPressed: (){
                     Navigator.of(context).push(MaterialPageRoute(builder: (context) => const WelcomeTwo()),);
                   }, icon: Icon(Icons.home,size: 50,color: Colors.lightBlue),padding: EdgeInsets.fromLTRB(0, 0, 10, 10),))
             ],
           ),
          ),

    ]
    )
    );
  }
}
