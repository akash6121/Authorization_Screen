import 'package:flutter/material.dart';
class Forgetone extends StatefulWidget {
  const Forgetone({Key? key}) : super(key: key);

  @override
  State<Forgetone> createState() => _ForgetoneState();
}

class _ForgetoneState extends State<Forgetone> {
  int flag=0;
  final TextEditingController _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: (flag==0)?const Text("Forgot Password"):const Text("OTP Verification"),
      ),
      body: Column(
        children: [
          const SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text((flag==0)?"Don't worry enter your registered email address below.":"Please enter the OTP received on your registered email.",
              style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18
            ),)
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: (flag==0)?const Text("We Will Send you a One Time Password(OTP) to your email address",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18
            ),
            ):const Text(""),
          ),
          Card(
            margin: const EdgeInsets.all(20),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
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
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: (flag==0)?"Email*":"Enter OTP",
                ),
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.all(20),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            color: Colors.blue,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextButton(
                  child: Text((flag==0)?'SEND OTP':"SUBMIT",style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  ),),
                  onPressed: (){
                    setState(() {
                      flag=1;
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
