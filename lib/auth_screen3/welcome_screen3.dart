import 'package:flutter/material.dart';
import 'package:screen_auth/auth_screen3/auth_screen3.dart';
class Welcomethree extends StatefulWidget {
  const Welcomethree({Key? key}) : super(key: key);

  @override
  State<Welcomethree> createState() => _WelcomethreeState();
}

class _WelcomethreeState extends State<Welcomethree> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.black54,
        title: const Text("App Name"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text("Welcome to",textAlign: TextAlign.center,style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30
            ),),
            SizedBox(height: height/10,),
            const Image(image: AssetImage("assets/applego.jpg")),


          ],
        ),
      ),
      bottomNavigationBar: Row(
        children: [
          Container(
            width: width/2,
          height: height/10,
            decoration: const BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(10),)
            ),
          child: TextButton(
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => Auththree(0)));
            },
              child: const Text("Login",textAlign: TextAlign.center,style: TextStyle(
                color: Colors.white,
              ),)),
          ),
          Container(
            width: width/2,
    height: height/10,
            decoration: const BoxDecoration(
              color: Colors.greenAccent,
                borderRadius: BorderRadius.only(topRight: Radius.circular(10))

            ),
    child: TextButton(
        onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => Auththree(1)));
        },
        child: const Text("Register",textAlign: TextAlign.center,)),
    ),
    ],
      ),
    );
  }
}
