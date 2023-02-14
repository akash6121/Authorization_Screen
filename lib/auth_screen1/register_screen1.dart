import 'package:flutter/material.dart';
class Registerone extends StatefulWidget {
  const Registerone({Key? key}) : super(key: key);

  @override
  State<Registerone> createState() => _RegisteroneState();
}

class _RegisteroneState extends State<Registerone> {
  int flag=0;
  Widget createButton(String txet){
    return Card(
      margin: const EdgeInsets.all(20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: Colors.blue,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextButton(
            child:  Text(txet,style: const TextStyle(
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
    );
  }
  Widget createField(String text){
    return Card(
      margin: const EdgeInsets.all(20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: Colors.white70,
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: TextFormField(
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: text,
          ),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text((flag==0)?"Create an Account":"Email Verification"),
      ),
      body: Column(
        children: [
          const SizedBox(height: 20,),
          Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text((flag==0)?"Welcome, Please fill the below detail in order to create an account.":"Please enter the OTP received on your email in order to confirm.",
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18
                ),)
          ),
          createField((flag==0)?"UserName":"OTP"),
          Visibility(
            visible: (flag==0)?true:false,
              child: createField("Email")),
          Visibility(
              visible: (flag==0)?true:false,
              child: createField("Re-enter Email")),
          Visibility(
              visible: (flag==0)?true:false,
              child: createField("Mobile Number")),
          createButton((flag==0)?"REGISTER":"CONFIRM"),
        ],
      ),
    );
  }
}
