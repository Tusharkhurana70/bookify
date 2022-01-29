// @dart=2.9
import 'package:bookifyy/course.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'authentication/welcomescreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  FlutterError.onError=FirebaseCrashlytics.instance.recordFlutterError;
  FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(true);
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/':(context)=>Welcomebook(),
      '/course':(context) =>Course(),
      '/welcome':(context) => WelcomeScreen(),
    },
  ));
}

class Welcomebook extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splashIconSize: 500,
      backgroundColor: Color(0xFFF7C080),
      splash: Image.asset('images/welcomebook2.gif'),
      nextScreen:FutureB(),
    );
  }
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
