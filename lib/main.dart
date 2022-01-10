// @dart=2.9
import 'package:flutter/material.dart';
import 'authentication/welcomescreen.dart';
import 'authentication/signin.dart';
import 'authentication/signup.dart';
import 'package:firebase_core/firebase_core.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/' : (context) => WelcomeScreen(),
      'signin' : (context)=> SignIn(),
      'signup' : (context)=> SignUp(),
    },
  ));
}