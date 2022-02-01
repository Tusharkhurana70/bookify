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
                          launch('https://www.freecodecamp.org/');
                        },
                        child: Text('Ok'),
                      )
                    ],
                  ),
                );
              },
              iconSize: 120,
              icon: Image.asset('images/freecode.png',height: 150,),
            ),
            Padding(padding: EdgeInsets.all(20),child: Text('freeCodeCamp provides a whole curriculum on web development where you can learn for free. It is an interactive learning environment where you will go through a series of challenges and build projects along the way.',style: TextStyle(fontSize: 17),),)
          ],
        ),
      ),
    );
  }
}
