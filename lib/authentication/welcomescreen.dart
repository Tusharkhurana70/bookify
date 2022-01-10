import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(image: AssetImage('images/signin.png'),),
          Text('Enroll & get free Handwritten Notes \n                 available for you!',style: TextStyle(color: Color(0xFF182C4E),fontSize: 15)),
          Material(
            borderRadius: BorderRadius.circular(28),
            elevation: 5,
            shadowColor: Colors.lightBlueAccent,
            child: TextButton(
              style: ButtonStyle(fixedSize: MaterialStateProperty.all(Size(290, 61)),backgroundColor: MaterialStateProperty.all(Color(0xFF00C2EE)),shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(28.0)))),
              onPressed: (){
                Navigator.pushNamed(context, 'signup');
              },
              child: Text('Create Account',style: TextStyle(color: Colors.white,fontSize: 18),),
            ),
          ),
          Text('Already have an account?',style: TextStyle(color: Color(0xFF69778D),fontSize: 18),),
          TextButton(
            style: ButtonStyle(fixedSize: MaterialStateProperty.all(Size(290, 61)),shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(28.0),side: BorderSide(color: Color(0xFF00C2EE))))),
            onPressed: () {
              Navigator.pushNamed(context, 'signin');
            },
            child: Text('Sign In',style: TextStyle(color: Color(0xFF00C2EE),fontSize: 18),),
          ),
          RichText(
            text: TextSpan(
                children: [
                  TextSpan(text: 'By creating an account, you are agreeing \n               to our',style: TextStyle(color: Color(0xFFA1A7B0),fontSize: 13)),
                  TextSpan(text: ' Terms of Service',style: TextStyle(color: Color(0xFF243249),fontSize: 15,fontWeight: FontWeight.w600)),
                ]
            ),
          )
        ],
      ),
    );
  }
}
