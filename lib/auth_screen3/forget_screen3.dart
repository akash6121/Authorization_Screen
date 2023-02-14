import 'package:flutter/material.dart';
import 'package:screen_auth/auth_screen3/auth_screen3.dart';
class Forgetthree extends StatefulWidget {
  const Forgetthree({Key? key}) : super(key: key);

  @override
  State<Forgetthree> createState() => _ForgetthreeState();
}

class _ForgetthreeState extends State<Forgetthree> {
  final TextEditingController _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black54,
        title: const Text("Forgot Password"),
      ),
      body: Column(
        children: [
          const SizedBox(height: 20,),
          const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text("Don't worry enter your registered email address below.",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18
                ),)
          ),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text("We Will Send you a Password Reset Link to your email address",style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18
            ),
            ),
          ),
          Card(
            margin: const EdgeInsets.all(20),
            color: Colors.white70,
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: TextFormField(
                controller: _emailController,
                key: const ValueKey('email'),
                validator: (value) {
                  if (value!.isEmpty || !value.contains('@')) {
                    return 'Please enter valid email';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: "Email*",
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Remember Password?"),
              TextButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  Auththree(0)));
              }, child: const Text("Log In")),
            ],
          ),
          Card(
            margin: const EdgeInsets.all(20),
            color: Colors.blue.shade900,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextButton(
                  child: const Text('SEND',style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  ),),
                  onPressed: (){
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            alignment: Alignment.center,
                            title: const Text('Sent',textAlign: TextAlign.center,),
                            content: const Text('Please Check your Email'),
                            actions: <Widget>[
                              ElevatedButton(
                                child: const Text('Ok',),
                                onPressed: () {
                                  Navigator.pop(context);
                                },

                              ),
                            ],
                          );
                        });
                  },
                ),
              ],
            ),

          ),
        ],
      ),
    );
  }
}
