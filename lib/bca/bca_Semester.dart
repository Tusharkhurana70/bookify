import 'package:flutter/material.dart';
import 'bca_Sem1/sem1_Subjects.dart';
import 'bca_Sem2/sem2_Subjects.dart';
import 'bca_Sem3/sem3_Subjects.dart';
import 'bca_Sem4/sem4_Subjects.dart';
import 'bca_Sem5/sem5_Subjects.dart';
import 'bca_Sem6/sem6_Subjects.dart';

class BcaSem extends StatefulWidget {
  @override
  _BcaSemState createState() => _BcaSemState();
}

class _BcaSemState extends State<BcaSem> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    var padding = MediaQuery.of(context).viewPadding;
    double height1 = height - padding.top - padding.bottom;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(shadowColor: Colors.blueAccent,backgroundColor: Colors.white,title: Text('Select your Semester',style: TextStyle(color: Colors.black),),),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: height1 * 0.12),
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
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return Sem2Bca();
                      }));
                    },
                    child: Image.asset('images/sem2.png')
                )
              ],
            ),
            SizedBox(height: height * 0.12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return Sem3Bca();
                      }));
                    },
                    child: Image.asset('images/sem3.png')
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return Sem4Bca();
                      }));
                    },
                    child: Image.asset('images/sem4.png')
                )
              ],
            ),
            SizedBox(height: height * 0.12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return Sem5Bca();
                      }));
                    },
                    child: Image.asset('images/sem5.png')
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return Sem6Bca();
                      }));
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
