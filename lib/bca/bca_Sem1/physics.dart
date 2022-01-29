import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Physics extends StatefulWidget {
  @override
  _PhysicsState createState() => _PhysicsState();
}

class _PhysicsState extends State<Physics> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    var padding = MediaQuery.of(context).viewPadding;
    double height1 = height - padding.top - padding.bottom;
    return Scaffold(
      backgroundColor: Color(0xFFEFF5FA),
      appBar: AppBar(backgroundColor: Color(0xFFEFF5FA),title: Text('Physics',style: TextStyle(color: Colors.black,),),
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
                        launch('https://docs.google.com/document/d/17xVeoN70K5rn3tKZvudGVzuLj81MENfv/edit?usp=sharing&ouid=107269545129995846346&rtpof=true&sd=true');
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
                        launch('https://drive.google.com/file/d/1YNk2Fl201gndNph9h6IJxtsnkDfU7ePi/view?usp=sharing');
                      },
                      child: Image.asset('images/prevppr.png'),
                    ),
                    Text('Prev Year PPR',style: TextStyle(color: Colors.black,fontSize: 16))
                  ],
                )
              ],
            ),
            SizedBox(height: height1*0.1),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    TextButton(
                      onPressed: () {
                        launch('https://drive.google.com/file/d/1Y7ZIEOASD8EDkBMkE8SA0DDWW7I357rw/view?usp=sharing');
                      },
                      child: Image.asset('images/unit1.png'),
                    ),
                    Text('Unit',style: TextStyle(color: Colors.black,fontSize: 17))
                  ],
                ),
                Column(
                  children: [
                    TextButton(
                      onPressed: () {
                        launch('https://drive.google.com/file/d/15sicOlQ0YdRnEBTk26op9KcNA9_p66-F/view?usp=sharing');
                      },
                      child: Image.asset('images/unit2.png'),
                    ),
                    Text('Unit',style: TextStyle(color: Colors.black,fontSize: 17))
                  ],
                )
              ],
            ),
            SizedBox(height: height1*0.1),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    TextButton(
                      onPressed: () {
                        launch('https://drive.google.com/file/d/1fsTykoOOjupmiWWQo3bQ-QghAqwksnhx/view?usp=sharing');
                      },
                      child: Image.asset('images/unit3.png'),
                    ),
                    Text('Unit',style: TextStyle(color: Colors.black,fontSize: 17))
                  ],
                ),
                Column(
                  children: [
                    TextButton(
                      onPressed: () {
                        launch('https://drive.google.com/file/d/1jO9kbr7x1lcxlzuP6F-P2sg2sMyVI7bZ/view?usp=sharing');
                      },
                      child: Image.asset('images/unit4.png'),
                    ),
                    Text('Unit',style: TextStyle(color: Colors.black,fontSize: 17))
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
