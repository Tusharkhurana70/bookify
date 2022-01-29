import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class OS extends StatefulWidget {
  @override
  _OSState createState() => _OSState();
}

class _OSState extends State<OS> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    var padding = MediaQuery.of(context).viewPadding;
    double height1 = height - padding.top - padding.bottom;
    return Scaffold(
      backgroundColor: Color(0xFFEFF5FA),
      appBar: AppBar(backgroundColor: Color(0xFFEFF5FA),title: Text('Operating System',style: TextStyle(color: Colors.black),),
        leading: Builder(builder: (context) {
          return IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.keyboard_backspace,color: Colors.black,),
          );
        },),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: height1*0.1),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    TextButton(
                      onPressed: () {
                        launch('https://docs.google.com/document/d/1i0o1kDFpnMZKCtYRy9lc3qUqFY6ZJq_V/edit?usp=sharing&ouid=107269545129995846346&rtpof=true&sd=true');
                      },
                      child: Image.asset('images/prevppr.png'),
                    ),
                    Text('Basics',style: TextStyle(color: Colors.black,fontSize: 17))
                  ],
                ),
                Column(
                  children: [
                    TextButton(
                      onPressed: () {
                        launch('https://drive.google.com/drive/folders/1TtLBXzweHixP6sql5Ef5TtklE-G3xNFN?usp=sharing');
                      },
                      child: Image.asset('images/books.png'),
                    ),
                    Text('Combined Notes',style: TextStyle(color: Colors.black,fontSize: 16))
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
