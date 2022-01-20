// @dart=2.9
import 'package:bookifyy/course.dart';
import 'package:flutter/material.dart';
import 'forgotpassword.dart';
import 'signup.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

bool tushar = true;
final storage= FlutterSecureStorage();
class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  String email;
  String password;
  bool showSpinner=false;
  @override
  Widget build(BuildContext context) {

    final height = MediaQuery.of(context).size.height;
    var padding = MediaQuery.of(context).viewPadding;
    double height1 = height - padding.top - padding.bottom;
    final player = new AudioCache();
    return Scaffold(
      body: ModalProgressHUD(
        progressIndicator: RefreshProgressIndicator(),
        color: Colors.lightBlueAccent,
        inAsyncCall: showSpinner,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  child: Image.asset('images/half circle.png',),
                ),
                Column(
                  children: [
                    SizedBox(height: height1*0.06),
                    Padding(padding:EdgeInsets.only(left: 20),child: Text('Welcome Back,',style: TextStyle(color: Color(0xFF182B4C),fontSize: 30,fontWeight: FontWeight.bold),)),
                    SizedBox(height: height1*0.03,),
                    Padding(padding:EdgeInsets.only(left: 20),child: Text('Sign in to continue',style: TextStyle(color: Colors.black54),)),
                    SizedBox(height: height1*0.03,),
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: ClipOval(
                        child: Image.asset('images/user4.png',height: 80,width: 80,),
                      ),
                    ),
                    SizedBox(height: height1*0.02,),
                    Padding(
                      padding: EdgeInsets.all(height1*0.03),
                      child: TextField(
                        textAlign: TextAlign.start,
                        onChanged: (value) {
                          email = value;
                        },
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.account_circle_outlined),
                          hintText: 'Enter your email',hintStyle: TextStyle(color: Color(0xFFA7ADBA),fontSize: 20),
                        ),
                        style: TextStyle(color: Colors.black,fontSize: 20),
                        keyboardType: TextInputType.emailAddress,
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(height1*0.03),
                      child: TextField(
                          textAlign: TextAlign.start,
                          onChanged: (value) {
                            password = value;
                          },
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.lock_outline_rounded),
                            suffixIcon: IconButton(icon: Icon(Icons.remove_red_eye),onPressed: () {
                              setState(() {
                                tushar = !tushar;
                              });
                            },),
                            hintText: 'Enter your password',hintStyle: TextStyle(color: Color(0xFFA7ADBA),fontSize: 20),
                          ),
                          style: TextStyle(color: Colors.black,fontSize: 20),
                          obscureText: tushar
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 220),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) {
                            return ForgotPassword();
                          }));
                        },
                        child: Text('Forgot Password?',style: TextStyle(color: Color(0xFF626E82)),),
                      ),
                    ),
                    SizedBox(height: height1*0.02,),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Material(
                        borderRadius: BorderRadius.circular(28),
                        elevation: 5,
                        shadowColor: Colors.lightBlueAccent,
                        child: TextButton(
                          style: ButtonStyle(fixedSize: MaterialStateProperty.all(Size(290, 61)),backgroundColor: MaterialStateProperty.all(Color(0xFF00C2EE)),shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(28.0)))),
                          onPressed: ()async{
                            setState(() {
                              showSpinner=true;
                            });
                            try{
                              UserCredential userCredential=await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);
                              await storage.write(key: "uid", value: userCredential.user?.uid);
                                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                                  return Course();
                                }));
                              setState(() {
                                showSpinner=false;
                                player.play('Audio c.mp3');
                              });
                            } on FirebaseAuthException catch (error) {
                              Fluttertoast.showToast(msg: error.message,gravity: ToastGravity.TOP);
                              setState(() {
                                showSpinner=false;
                              });
                            }
                          },
                          child: Text('Sign In',style: TextStyle(color: Colors.white,fontSize: 18),),
                        ),
                      ),
                    ),
                    SizedBox(height: height1*0.03,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Dont have an account?',style: TextStyle(color: Colors.black54),),
                        TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                              return SignUp();
                            }));
                          },
                          child: Text('Create Now',style: TextStyle(color: Color(0xFF00C2EE)),),
                        )
                      ],
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

