import 'package:flutter/material.dart';
import 'package:screen_auth/auth_screen4/login_screen4.dart';
class Registerfour extends StatefulWidget {
  const Registerfour({Key? key}) : super(key: key);

  @override
  State<Registerfour> createState() => _RegisterfourState();
}

class _RegisterfourState extends State<Registerfour> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Colors.green, Colors.lightBlueAccent]),
        ),
        child: SafeArea(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
          Row(
          children: [
          const Padding(
          padding: EdgeInsets.only(top: 50, left: 10),
          child: RotatedBox(
              quarterTurns: -1,
              child: Text(
                'Sign up',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                ),
              )),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30.0, left: 10.0),
          child: Container(
            //color: Colors.green,
            height: 200,
            width: 300,
            child: const Center(
              child: Text(
                "It's not too late to register just go for it and explore the world of possibilities",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        )
        ],
      ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(50, 30, 50, 0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child:  TextField(
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 30
                      ),
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                                color: Colors.white,
                                width: 3
                            )
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                                color: Colors.white,
                                width: 3
                            )
                        ),
                        labelText: 'Name',
                        labelStyle: const TextStyle(
                            color: Colors.white70,
                            fontWeight: FontWeight.bold,
                            fontSize: 20
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 10),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child:  TextField(
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 30
                      ),
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                                color: Colors.white,
                                width: 3
                            )
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                                color: Colors.white,
                                width: 3
                            )
                        ),
                        labelText: 'Email',
                        labelStyle: const TextStyle(
                            color: Colors.white70,
                            fontWeight: FontWeight.bold,
                            fontSize: 20
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 10),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child:  TextField(
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 30
                      ),
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                                color: Colors.white,
                                width: 3
                            )
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                                color: Colors.white,
                                width: 3
                            )
                        ),
                        labelText: 'Password',
                        labelStyle: const TextStyle(
                            color: Colors.white70,
                            fontWeight: FontWeight.bold,
                            fontSize: 20
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 50),
                  alignment: Alignment.bottomRight,
                  height: 50,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Text(
                          'OK',
                          style: TextStyle(
                            color: Colors.lightBlueAccent,
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const Icon(
                          Icons.arrow_forward,
                          color: Colors.lightBlueAccent,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 100,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text("Have we met before?",style: TextStyle(
                          color: Colors.white70,
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                      ),),
                    ),
                    TextButton(onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Loginfour()),);
                    }, child: const Text("Sign in",style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),),)
                  ],
                )
    ]
    ),
      ),
    )
    );
  }
}
