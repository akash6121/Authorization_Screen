import 'package:flutter/material.dart';
import 'package:screen_auth/auth_screen5/login_screen5.dart';
import 'package:screen_auth/auth_screen5/register_screen5.dart';
import 'package:screen_auth/webview_page.dart';
class Welcomefive extends StatefulWidget {
  const Welcomefive({Key? key}) : super(key: key);

  @override
  State<Welcomefive> createState() => _WelcomefiveState();
}

class _WelcomefiveState extends State<Welcomefive> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height=size.height;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xfffbb448), Color(0xffe46b10)],
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => const Loginfive()));
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.symmetric(vertical: 13),
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    color: Colors.white),
                child: const Text(
                  'Login',
                  style: TextStyle(fontSize: 20, color: Color(0xfff7892b)),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => const RegisterFive()));
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.symmetric(vertical: 13),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(5)),
                  border: Border.all(color: Colors.white, width: 2),
                ),
                child: const Text(
                  'Register now',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: height/5,),
            const Text(
              'Quick login with Facebook',
              style: TextStyle(color: Colors.white, fontSize: 17),
            ),
            MaterialButton(
              minWidth: 35.0,
              height: 36,
              elevation: 2,
              color: const Color(0xFFFFFFFF),
              onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => WebViewPage(
                        "https://www.facebook.com/login/",
                        'Quick Login',
                      ),
                    ));
              },
              shape: ButtonTheme.of(context).shape,
              child: _getButtonChild(context),
            )
          ],
        ),
      ),
    );
  }
}

 Widget _getButtonChild(BuildContext context)
{
  return Container(
    constraints: const BoxConstraints(
      maxWidth:  220,
    ),
    child: Center(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const <Widget>[
          Padding(
            padding:  EdgeInsets.symmetric(
                  horizontal: 13,
                ),
            child: Icon(Icons.facebook),
          ),
          Text(
            'Sign in with Facebook',
            style: TextStyle(
              color: Color.fromRGBO(0, 0, 0, 0.54),
              fontSize: 14,
              backgroundColor: Color.fromRGBO(0, 0, 0, 0),
            ),
          ),
        ],
      ),
    ),
  );
}
