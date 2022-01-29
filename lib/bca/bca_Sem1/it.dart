import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class IT extends StatefulWidget {
  @override
  _ITState createState() => _ITState();
}

class _ITState extends State<IT> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    var padding = MediaQuery.of(context).viewPadding;
    double height1 = height - padding.top - padding.bottom;
    return Scaffold(
      backgroundColor: Color(0xFFEFF5FA),
      appBar: AppBar(backgroundColor: Color(0xFFEFF5FA),title: Text('Information Technology',style: TextStyle(color: Colors.black),),
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
                        launch('https://docs.google.com/document/d/1tBp11glPyu8xsVbM2sA-eNBJhki6CTTG/edit?usp=sharing&ouid=107269545129995846346&rtpof=true&sd=true');
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
                        launch('https://drive.google.com/file/d/1gWiqpO1mfubRdcxc91OCV4ofvrebz_YX/view?usp=sharing');
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
                        launch('https://drive.google.com/file/d/1cI8erTwVnfTY9DRftMm1EB15yWPoFJZo/view?usp=sharing');
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
                        launch('https://drive.google.com/file/d/1-8ZJuiTHq7rMIcL2r0yiz0ND69VHhN8s/view?usp=sharing');
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
                        launch('https://drive.google.com/file/d/1uYK3lk_adJ6V1oW9Juj8BLYWRV--SX09/view?usp=sharing');
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
                        launch('https://drive.google.com/file/d/1vtADZcQj4gv07BAnytTKYPYviLsiUb6z/view?usp=sharing');
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
