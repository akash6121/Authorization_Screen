import 'package:flutter/material.dart';
import 'package:screen_auth/auth_screen2/log_screen2.dart';
import 'package:screen_auth/auth_screen2/signup_screen2.dart';
class WelcomeTwo extends StatefulWidget {
  const WelcomeTwo({Key? key}) : super(key: key);

  @override
  State<WelcomeTwo> createState() => _WelcomeTwoState();
}

class _WelcomeTwoState extends State<WelcomeTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset("assets/backgroundimg.jpg",fit: BoxFit.fill,),
          SafeArea(child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(10, 50, 0, 0),
                child: Text("HELLO,",style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 60,
                ),),
              ),
              Text("Welcome to our app. Please login or register for getting access",style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),),
              SizedBox(height: 400,),
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
                      onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => const LoginTwo()));
                      },
                    ),
                  ],
                ),
              ),
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

            ],
          ),
          ),
        ],
      )
    );
  }
}
