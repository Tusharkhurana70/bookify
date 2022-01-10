// @dart=2.9
import 'package:flutter/material.dart';
import 'signin.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import '../course.dart';
import 'package:audioplayers/audio_cache.dart';

bool tushar = true;
bool showSpinner=false;
class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final auth=FirebaseAuth.instance;
  String email;
  String password;
  String username;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final player = new AudioCache();
    return Scaffold(
      backgroundColor: Colors.white,
      body: ModalProgressHUD(
        progressIndicator: RefreshProgressIndicator(),
        color: Colors.lightBlueAccent,
        inAsyncCall: showSpinner,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('images/signup3.png'),
                Padding(
                  padding: EdgeInsets.all(15),
                  child: TextField(
                    textAlign: TextAlign.start,
                    onChanged: (value) {
                      username = value;
                    },
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.account_circle_outlined),
                      hintText: 'User Name',hintStyle: TextStyle(color: Color(0xFFA7ADBA),fontSize: 20),
                    ),
                    style: TextStyle(color: Colors.black,fontSize: 20),
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(15),
                  child: TextField(
                    textAlign: TextAlign.start,
                    onChanged: (value) {
                      email = value;
                    },
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.alternate_email_outlined),
                      hintText: 'Email Id',hintStyle: TextStyle(color: Color(0xFFA7ADBA),fontSize: 20),
                    ),
                    style: TextStyle(color: Colors.black,fontSize: 20),
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(15),
                  child: TextField(
                    textAlign: TextAlign.start,
                    onChanged: (value) {
                      password = value;
                    },
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock_outline_rounded),
                      hintText: 'Password      (At Least 6 Charac.)',hintStyle: TextStyle(color: Color(0xFFA7ADBA),fontSize: 20),
                    ),
                    style: TextStyle(color: Colors.black,fontSize: 20),
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Material(
                    borderRadius: BorderRadius.circular(28),
                    elevation: 5,
                    shadowColor: Colors.lightBlueAccent,
                    child: TextButton(
                      style: ButtonStyle(fixedSize: MaterialStateProperty.all(Size(290, 61)),backgroundColor: MaterialStateProperty.all(Color(0xFF00C2EE)),shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(28.0)))),
                      onPressed: () async{
                        try{
                          setState(() {
                            showSpinner=true;

                          });
                          final newUser=await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);
                          setState(() {
                            if(newUser!=null){
                              Navigator.push(context, MaterialPageRoute(builder: (context){
                                return Course();
                              }));
                            }
                          });
                          setState(() {
                            showSpinner=false;
                            player.play('Audio 2.mp3');
                          });
                        }
                        catch(e) {
                          setState(() {
                            showSpinner=false;
                          });
                          print(e);
                        }
                      },
                      child: Text('Sign Up',style: TextStyle(color: Colors.white,fontSize: 18),),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Already have an account?',style: TextStyle(color: Colors.black54),),
                    TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return SignIn();
                        }));
                      },
                      child: Text('Sign In',style: TextStyle(color: Color(0xFF00C2EE)),),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}