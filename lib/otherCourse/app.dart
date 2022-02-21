import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AppDevelopment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0,title: Text('Android Development',style: TextStyle(color: Colors.black),),backgroundColor: Colors.transparent,
        leading: Builder(builder: (context) {
          return IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.keyboard_backspace,color: Colors.black,),
          );
        },),
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 15,),
            Padding(padding: EdgeInsets.all(15),child: Text('Here we are advising you for free open course',style: TextStyle(fontSize: 17),)),
            IconButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text('Please Note'),
                    content: Text('It will redirect you to your browser'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text('Cancel'),
                      ),
                      TextButton(
                        onPressed: () {
                          launch('https://www.udacity.com/course/new-android-fundamentals--ud851');
                        },
                        child: Text('Ok'),
                      )
                    ],
                  ),
                );
              },
              iconSize: 120,
              icon: Image.asset('images/udacity.png',height: 150,),
            ),
            Padding(padding: EdgeInsets.all(20),child: Text('App development course by Udacity blends theory and practice to help you build great apps the right way. In this course, you will work with instructors step-by-step to build a cloud-connected Android app, and learn best practices of mobile development, and Android development in particular.',style: TextStyle(fontSize: 17),),)
          ],
        ),
      ),
    );
  }
}