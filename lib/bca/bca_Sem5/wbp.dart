import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class WBP extends StatefulWidget {
  @override
  _WBPState createState() => _WBPState();
}

class _WBPState extends State<WBP> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    var padding = MediaQuery.of(context).viewPadding;
    double height1 = height - padding.top - padding.bottom;
    return Scaffold(
      backgroundColor: Color(0xFFEFF5FA),
      appBar: AppBar(backgroundColor: Color(0xFFEFF5FA),title: Text('Web Based Programming',style: TextStyle(color: Colors.black),),
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
                        launch('https://drive.google.com/file/d/1N7PBjPuQy3XTUl8h27u0hAUNhRdM9yq1/view?usp=sharing');
                      },
                      child: Image.asset('images/syllabus.png'),
                    ),
                    Text('Syllabus',style: TextStyle(color: Colors.black,fontSize: 17))
                  ],
                ),
                Column(
                  children: [
                    TextButton(
                      onPressed: () {
                        launch('https://drive.google.com/drive/folders/1tpCyEn-ryo2YnFeFwvdodxzVrUPmAZXf?usp=sharing');
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
