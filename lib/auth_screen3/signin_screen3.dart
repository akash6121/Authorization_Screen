import 'package:flutter/material.dart';
import 'package:screen_auth/auth_screen3/forget_screen3.dart';
class Signinthree extends StatefulWidget {

  const Signinthree({Key? key}) : super(key: key);

  @override
  State<Signinthree> createState() => _SigninthreeState();
}

class _SigninthreeState extends State<Signinthree> {
  bool value=false;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Image.asset("assets/applego.jpg",height: height/3,),
        ),
        Container(
          margin: const EdgeInsets.all(20),
          height: height*0.35,
          color: Colors.grey.shade300,
          child: Column(
            children: [
              Card(
                margin: const EdgeInsets.all(30),
                color: Colors.white,
                child: TextFormField(
                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: "Email",
                      contentPadding: EdgeInsets.only(left: 20)
                  ),
                ),
              ),
              Card(
                margin: const EdgeInsets.fromLTRB(30, 10, 30, 0),
                color: Colors.white,
                child: TextFormField(
                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: "Password",
                      contentPadding: EdgeInsets.only(left: 20)
                  ),
                ),
              ),
              Row(
                children: [
                  Checkbox(value: value, onChanged: (bool? value){
                    setState(() {
                      this.value=value!;
                    });
                  }),
                  const Text("Remember me"),
                  const SizedBox(width: 100,),
                  TextButton(onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Forgetthree()));
                  }, child: const Text("Forgot Password",))
                ],
              ),
              Card(
                margin: const EdgeInsets.all(20),
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
            ],
          ),
        )
      ],
    );
  }
}
