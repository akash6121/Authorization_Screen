import 'package:flutter/material.dart';
class Signupthree extends StatefulWidget {
  const Signupthree({Key? key}) : super(key: key);

  @override
  State<Signupthree> createState() => _SignupthreeState();
}

class _SignupthreeState extends State<Signupthree> {
  Widget createField(String text){
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 30),
      color: Colors.white,
      child: TextFormField(
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: text,
            contentPadding: const EdgeInsets.only(left: 20)
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    void showVerifyEmailSentDialog() {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          // return object of type Dialog
          return AlertDialog(
            title:  const Text("Verify your account"),
            content:
             const Text("Link to verify account has been sent to your email"),
            actions: <Widget>[
               TextButton(
                child:  const Text("Dismiss"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }
    var size = MediaQuery.of(context).size;
    var height = size.height;
    return Container(
      margin: const EdgeInsets.all(30),
      color: Colors.grey.shade300,
      height: height/2,
      child: Column(
        children: [
          const SizedBox(height: 30,),
          createField("Fullname"),
          const SizedBox(height: 20,),
          createField("Username"),
          const SizedBox(height: 20,),
          createField("Phone Number"),
          const SizedBox(height: 20,),
          createField("Email"),
          const SizedBox(height: 20,),
          createField("Password"),
          const SizedBox(height: 20,),
          createField("Confirm Password"),
          const SizedBox(height: 30,),
          Card(
            margin: const EdgeInsets.all(20),
            color: Colors.blue.shade900,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextButton(
                  child: const Text('Sign Up',style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  ),),
                  onPressed: (){
                    showVerifyEmailSentDialog();
                  },
                ),
              ],
            ),
          ),
          const Text("By clicking SignUp, you agree to our"),
          TextButton(onPressed: (){}, child: const Text("Terms and Condition"))
        ],
      ),
    );
  }
}
