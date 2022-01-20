// @dart=2.9
import 'package:bookifyy/authentication/signin.dart';
import 'package:bookifyy/authentication/signup.dart';
import 'package:bookifyy/course.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'authentication/welcomescreen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/':(context)=>FutureB(),
      '/course':(context) =>Course(),
      '/welcome':(context) => WelcomeScreen(),
    },
  ));
}

class FutureB extends StatefulWidget {
  @override
  _FutureBState createState() => _FutureBState();
}

class _FutureBState extends State<FutureB> {
  final storage = FlutterSecureStorage();
  Future<bool> checkLoginStatus() async {
    String value =  await storage.read(key: "uid");
    if(value==null) {
      return false;
    }
    return true;
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: checkLoginStatus(),
      builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
        if(snapshot.data == false) {
          return WelcomeScreen();
        }
        if(snapshot.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator();
        }
        return Course();
      },
    );
  }
}
