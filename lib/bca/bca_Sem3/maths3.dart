import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Maths3 extends StatefulWidget {
  @override
  _Maths3State createState() => _Maths3State();
}

class _Maths3State extends State<Maths3> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    var padding = MediaQuery.of(context).viewPadding;
    double height1 = height - padding.top - padding.bottom;
    return Scaffold(
      backgroundColor: Color(0xFFEFF5FA),
      appBar: AppBar(backgroundColor: Color(0xFFEFF5FA),title: Text('Maths',style: TextStyle(color: Colors.black),),
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
                        launch('https://docs.google.com/document/d/1wxAdou8O_xTDpgcz2Mth_pSxjZJks5x1/edit?usp=sharing&ouid=107269545129995846346&rtpof=true&sd=true');
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
                        launch('https://drive.google.com/file/d/1m8t5JTFqdpWXc1Ps4jq0wO6z77Sh6mIj/view?usp=sharing');
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
                        launch('https://drive.google.com/file/d/11WPRCqw7JB4MwfJ6Ey2ihC-CjDgUy53b/view?usp=sharing');
                      },
                      child: Image.asset('images/formulas.png'),
                    ),
                    Text('Formulas',style: TextStyle(color: Colors.black,fontSize: 17))
                  ],
                ),
                Column(
                  children: [
                    TextButton(
                      onPressed: () {
                        launch('https://drive.google.com/file/d/1gWiqpO1mfubRdcxc91OCV4ofvrebz_YX/view?usp=sharing');
                      },
                      child: Image.asset('images/books.png'),
                    ),
                    Text('Books',style: TextStyle(color: Colors.black,fontSize: 16))
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
                        launch('https://drive.google.com/file/d/1sRkafFyzJyJbEvC9ExsXrGCS9ZF42DEk/view?usp=sharing');
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
                        launch('https://drive.google.com/file/d/15esnxU37wo3siH5MhT0IyEB1rra7LBsh/view?usp=sharing');
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
                        launch('https://drive.google.com/file/d/12-XDvJDORWRFHSYpItQJ2yIMZSplNs_2/view?usp=sharing');
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
                        launch('https://drive.google.com/file/d/1Vmm0k1Q1wHYsEruHlbaiori_ord2grdG/view?usp=sharing');
                      },
                      child: Image.asset('images/unit4.png'),
                    ),
                    Text('Unit',style: TextStyle(color: Colors.black,fontSize: 17))
                  ],
                )
              ],
            ),
            SizedBox(height: height1*0.1),
          ],
        ),
      ),
    );
  }
}
