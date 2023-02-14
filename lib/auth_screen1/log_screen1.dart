import 'package:flutter/material.dart';
import 'package:screen_auth/auth_screen1/forget_screen1.dart';
import 'package:screen_auth/auth_screen1/register_screen1.dart';
class Loginone extends StatefulWidget {
  const Loginone({Key? key}) : super(key: key);

  @override
  State<Loginone> createState() => _LoginoneState();
}

class _LoginoneState extends State<Loginone> {
  bool visible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade700,
        title: const Text("LOGIN"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:  <Widget>[
          const SizedBox(width: double.infinity,),
          const Text("Enter your login Credentials",style:  TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),),
          Card(
            margin: const EdgeInsets.all(20),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            color: Colors.white12,
            child: TextFormField(textAlign: TextAlign.center,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Enter Your Email",
                suffixIcon: Icon(Icons.person,color: Colors.green.shade700,),
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.all(20),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            color: Colors.white12,
            child: TextFormField(textAlign: TextAlign.center,
              obscureText: (visible == false) ? true : false,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Enter Your Password",
                suffixIcon: IconButton(
                  color: Colors.green.shade700,
                  onPressed: () {
                    setState(() {
                      visible = !visible;
                    });
                  },
                  icon: (visible == false)
                      ? const Icon(Icons.visibility_off)
                      : const Icon(Icons.visibility),
                ),
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.all(20),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            color: Colors.green.shade700,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextButton(
                  child: const Text('LOGIN',style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  ),),
                  onPressed: (){},
                ),
              ],
            ),

          ),
          TextButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Forgetone()),);
          }, child: const Text("Forgot Password?")),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Don't have an account yet?"),
              TextButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Registerone()));
              }, child: const Text("Create one")),
            ],
          )

        ],
      ),
    );
  }
}
