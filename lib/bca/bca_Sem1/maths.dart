import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Maths extends StatefulWidget {
  @override
  _MathsState createState() => _MathsState();
}

class _MathsState extends State<Maths> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    var padding = MediaQuery.of(context).viewPadding;
    double height1 = height - padding.top - padding.bottom;
    return Scaffold(
      backgroundColor: Color(0xFFFF7376),
      appBar: AppBar(backgroundColor: Color(0xFFFF7376),title: Text('Maths',style: TextStyle(color: Colors.white),),),
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
                    Text('Syllabus',style: TextStyle(color: Colors.white,fontSize: 17))
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
                    Text('Prev Year PPR',style: TextStyle(color: Colors.white,fontSize: 16))
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
                        launch('https://drive.google.com/file/d/1NEGWntsFV9qLmyEGxzMfucMd6iVJWe9k/view?usp=sharing');
                      },
                      child: Image.asset('images/unit1.png'),
                    ),
                    Text('Unit',style: TextStyle(color: Colors.white,fontSize: 17))
                  ],
                ),
                Column(
                  children: [
                    TextButton(
                      onPressed: () {
                        launch('https://drive.google.com/file/d/1DNE8zu04hv6RWFlXjN15GQnWDs5g9xPa/view?usp=sharing');
                      },
                      child: Image.asset('images/unit2.png'),
                    ),
                    Text('Unit',style: TextStyle(color: Colors.white,fontSize: 17))
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
                        launch('https://drive.google.com/file/d/1NEGWntsFV9qLmyEGxzMfucMd6iVJWe9k/view?usp=sharing');
                      },
                      child: Image.asset('images/unit3.png'),
                    ),
                    Text('Unit',style: TextStyle(color: Colors.white,fontSize: 17))
                  ],
                ),
                Column(
                  children: [
                    TextButton(
                      onPressed: () {
                        launch('https://drive.google.com/file/d/1DNE8zu04hv6RWFlXjN15GQnWDs5g9xPa/view?usp=sharing');
                      },
                      child: Image.asset('images/unit4.png'),
                    ),
                    Text('Unit',style: TextStyle(color: Colors.white,fontSize: 17))
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
