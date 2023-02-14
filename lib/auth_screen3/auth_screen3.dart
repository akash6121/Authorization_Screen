import 'package:flutter/material.dart';
import 'package:screen_auth/auth_screen3/signin_screen3.dart';
import 'package:screen_auth/auth_screen3/signup_screen3.dart';
class Auththree extends StatelessWidget {
  int selpage;
  Auththree(this.selpage, {super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: selpage,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black54,
          title: const Text("Welcome"),
          centerTitle: true,
          bottom: const TabBar(
            indicator: BoxDecoration(
              color: Colors.orangeAccent,
            ),
            indicatorColor: Colors.white,
            tabs: [
              Tab(text: "Sign In",),
              Tab(text: "Sign Up",),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Signinthree(),
            Signupthree(),
          ],
        ),
      ),
    );
  }
}
