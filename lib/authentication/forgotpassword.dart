// @dart=2.9
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  String email;
  bool showSpinner=false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: ModalProgressHUD(
        progressIndicator: RefreshProgressIndicator(),
        color: Colors.lightBlueAccent,
        inAsyncCall: showSpinner,
        child: SafeArea(
          child: Container(
            height: size.height,
            width: double.infinity,
            child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('images/ForgotPassword.png'),
                    Padding(padding:EdgeInsets.all(15),child: Text('Forgot \nPassword?',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),
                    Padding(padding:EdgeInsets.only(left: 15),child: Text('Dont worry! It happens. Please enter the \naddress associated with your account.',style: TextStyle(fontSize: 18),)),
                    Padding(
                      padding: EdgeInsets.all(25),
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
                    SizedBox(height: 15),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Material(
                        borderRadius: BorderRadius.circular(28),
                        elevation: 5,
                        shadowColor: Colors.lightBlueAccent,
                        child: TextButton(
                          style: ButtonStyle(shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(28.0))),fixedSize: MaterialStateProperty.all(Size(290,61)),backgroundColor: MaterialStateProperty.all(Color(0xFF00C2EE))),
                          onPressed: () async{
                            setState(() {
                              showSpinner=true;
                            });
                            try{
                              await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
                              setState(() {
                                showSpinner=false;
                                Navigator.pop(context);
                                Fluttertoast.showToast(msg: 'Check your mail for password reset link',gravity: ToastGravity.TOP);
                              });
                            } on FirebaseAuthException catch (error) {
                              Fluttertoast.showToast(msg: error.message,gravity: ToastGravity.TOP);
                              setState(() {
                                showSpinner=false;
                              });
                            }
                          },
                          child: Text('Submit',style: TextStyle(color: Colors.white,fontSize: 18),),
                        ),
                      ),
                    )
                  ],
                )
            ),
          ),
        ),
      ),
    );
  }
}
