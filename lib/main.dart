import 'package:flutter/material.dart';
import 'package:screen_auth/auth_screen1/log_screen1.dart';
import 'package:screen_auth/auth_screen2/welcome_screen2.dart';
import 'package:screen_auth/auth_screen3/welcome_screen3.dart';
import 'package:screen_auth/auth_screen5/welcome_screen5.dart';

import 'auth_screen4/login_screen4.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Welcomefive(),
    );
  }
}


