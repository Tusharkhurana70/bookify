import 'package:flutter/material.dart';
import 'bca_Sem1/sem1_Subjects.dart';

class BcaSem extends StatefulWidget {
  @override
  _BcaSemState createState() => _BcaSemState();
}

class _BcaSemState extends State<BcaSem> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    var padding = MediaQuery.of(context).viewPadding;
    double height1 = height - padding.top - padding.bottom;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(shadowColor: Colors.blueAccent,backgroundColor: Colors.white,title: Text('Select your Semester',style: TextStyle(color: Colors.black),),),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: height1 * 0.1),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return Sem1Bca();
                    }));
                  },
                  child: Image.asset('images/sem1.png')
                ),
                TextButton(
                    onPressed: () {
                    },
                    child: Image.asset('images/sem2.png')
                )
              ],
            ),
            SizedBox(height: height * 0.1),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                    onPressed: () {
                    },
                    child: Image.asset('images/sem3.png')
                ),
                TextButton(
                    onPressed: () {
                    },
                    child: Image.asset('images/sem4.png')
                )
              ],
            ),
            SizedBox(height: height * 0.1),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                    onPressed: () {
                    },
                    child: Image.asset('images/sem5.png')
                ),
                TextButton(
                    onPressed: () {
                    },
                    child: Image.asset('images/sem6.png')
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
