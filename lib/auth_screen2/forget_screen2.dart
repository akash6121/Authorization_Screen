import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
class ForgetTwo extends StatefulWidget {
  const ForgetTwo({Key? key}) : super(key: key);

  @override
  State<ForgetTwo> createState() => _ForgetTwoState();
}

class _ForgetTwoState extends State<ForgetTwo> {
  int flag=0;
  Widget CreateButton(String text,int num){
    return Card(
      margin: const EdgeInsets.all(10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      color: flag==0?Colors.blue.shade900:Colors.grey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextButton(
            child:  Text(text,style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold
            ),),
            onPressed: (){
              setState(() {
                flag=num;
              });
            },
          ),
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
        body: Stack(
          fit: StackFit.expand,
          children: [
          Image.asset("assets/backgroundimg.jpg",fit: BoxFit.fill,),
        Container(
        margin: EdgeInsets.only(top: (height/4)),
    decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(20),
    ),
    child: Column(
      children: [
        SizedBox(height: 50,),
        Text("Forgot Password?",style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),),
        Card(
          margin: const EdgeInsets.all(20),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          color: Colors.grey.shade300,
          child: TextFormField(
            enabled: flag==0?true:false,
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Enter registered email address",
                contentPadding: EdgeInsets.only(left: 20)
            ),
          ),
        ),
        CreateButton("Submit and Verify",1),
        SizedBox(height: 19,),
        Visibility(
          visible: flag==0?false:true,
          child: Text("Enter Otp",style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),),
        ),
        SizedBox(height: 10,),
        Visibility(
          visible: flag==0?false:true,
          child: Column(
            children: [
              OtpTextField(
                margin: EdgeInsets.all(20),
                numberOfFields: 4,
                borderColor: Color(0xFF512DA8),
                //set to true to show as box or false to show as dash
                showFieldAsBox: true,
                //runs when a code is typed in
                onCodeChanged: (String code) {
                  //handle validation or checks here
                },
                //runs when every textfield is filled
                onSubmit: (String verificationCode){
                  showDialog(
                      context: context,
                      builder: (context){
                        return AlertDialog(
                          title: Text("Verification Code"),
                          content: Text('Code entered is $verificationCode'),
                        );
                      }
                  );
                }, // end onSubmit
              ),
              Card(
                margin: const EdgeInsets.all(10),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                color: Colors.blue.shade900,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    TextButton(
                      child:  Text("submit",style:  TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                      ),),
                      onPressed: (){
                      },
                    ),
                  ],
                ),
              ),
              CreateButton("Re Enter Email", 0),
            ],
          ),
        ),
      ],
    )
    )
    ]
    )
    );
  }
}
