import 'package:flutter/material.dart';
import 'package:screen_auth/auth_screen2/log_screen2.dart';
import 'package:screen_auth/auth_screen2/welcome_screen2.dart';
class Signuptwo extends StatefulWidget {
  const Signuptwo({Key? key}) : super(key: key);

  @override
  State<Signuptwo> createState() => _SignuptwoState();
}

class _SignuptwoState extends State<Signuptwo> {
  Widget createFileld(String Text){
    return Card(
      margin: const EdgeInsets.all(20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      color: Colors.grey.shade300,
      child: TextFormField(
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: Text,
            contentPadding: EdgeInsets.only(left: 20)
        ),
      ),
    );
  }
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
        SizedBox(height: 50,),
        createFileld("Name"),
        createFileld("Email"),
        createFileld("Password"),
        createFileld("Confirm Password"),
        Card(
          margin: const EdgeInsets.all(20),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextButton(
                child: const Text('Sign up',style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold
                ),),
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Signuptwo()));

                },
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Already have an account?"),
            TextButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const LoginTwo()));
            }, child: const Text("Sign In")),
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
            }, icon: Icon(Icons.home,size: 50,color: Colors.lightBlue),padding: EdgeInsets.fromLTRB(0, 0, 10, 10),)),
      ],
    )
    )
    ]
    ),
    );
  }
}
