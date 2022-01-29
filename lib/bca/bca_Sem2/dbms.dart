import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Dbms extends StatefulWidget {
  @override
  _DbmsState createState() => _DbmsState();
}
class _DbmsState extends State<Dbms> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    var padding = MediaQuery.of(context).viewPadding;
    double height1 = height - padding.top - padding.bottom;
    return Scaffold(
      backgroundColor: Color(0xFFEFF5FA),
      appBar: AppBar(backgroundColor: Color(0xFFEFF5FA),title: Text('DBMS',style: TextStyle(color: Colors.black),),
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
                        launch('https://docs.google.com/document/d/1RX5cHSSaQkGm6zwzhxTg9g2k8hRv6rL5/edit?usp=sharing&ouid=107269545129995846346&rtpof=true&sd=true');
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
                        launch('https://drive.google.com/file/d/1Vd6q-9oprjPu_IOseK_XIPPZ24QHsUGQ/view?usp=sharing');
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
                        launch('https://drive.google.com/file/d/1veyhAHXZVHFeLD-QNV6U0tgI8TK8Ptjn/view?usp=sharing');
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
                        launch('https://drive.google.com/file/d/1JU0lIUbdGvFSw4atvk43KluCUtC3WtYz/view?usp=sharing');
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
                        launch('https://drive.google.com/file/d/1pp5VDFINa_LQlTOZ7igdrkiOUze2_F9j/view?usp=sharing');
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
                        launch('https://drive.google.com/file/d/1iEl38jMjv1ge0cb1LaSwI2WgrJiad31W/view?usp=sharing');
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
