import 'package:flutter/material.dart';
import 'package:screen_auth/auth_screen4/login_screen4.dart';
class Forgetfour extends StatefulWidget {
  const Forgetfour({Key? key}) : super(key: key);

  @override
  State<Forgetfour> createState() => _ForgetfourState();
}

class _ForgetfourState extends State<Forgetfour> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                              'Password Retriever',
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
                              "Just give me your email and if we have got you on our record. I will retrieve your password",
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
                    padding: const EdgeInsets.fromLTRB(50, 50, 50, 0),
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
                  Container(
                    margin: const EdgeInsets.only(right: 50,top: 10),
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Check',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.lightBlueAccent,
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                 
                ]
            ),
          ),
        )
    );
  }
}
