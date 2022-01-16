import 'package:bookifyy/bca/bca_Sem3/maths3.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'poa.dart';
import 'ca.dart';
import 'oops.dart';
import 'vb.dart';

class Sem3Bca extends StatefulWidget {
  @override
  _Sem3BcaState createState() => _Sem3BcaState();
}

class _Sem3BcaState extends State<Sem3Bca> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    var padding = MediaQuery.of(context).viewPadding;
    double height1 = height - padding.top - padding.bottom;
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white,title: Text('Select Your Subjects',style: TextStyle(color: Colors.black,),),),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: height1 * 0.1),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return CA();
                        }));
                      },
                      child: Image.asset('images/ca.png',),
                    ),
                    Text('C.A.',style: TextStyle(color: Colors.black,fontSize: 20),)
                  ],
                ),
                Column(
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return Poa();
                        }));
                      },
                      child: Image.asset('images/poa.png',),
                    ),
                    Text('POA',style: TextStyle(color: Colors.black,fontSize: 20))
                  ],
                )
              ],
            ),
            SizedBox(height: height1 * 0.12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return Maths3();
                        }));
                      },
                      child: Image.asset('images/math3.png',),
                    ),
                    Text('Maths',style: TextStyle(color: Colors.black,fontSize: 20))
                  ],
                ),
                Column(
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return VB();
                        }));
                      },
                      child: Image.asset('images/vb.png',),
                    ),
                    Text('VB.Net',style: TextStyle(color: Colors.black,fontSize: 20))
                  ],
                )
              ],
            ),
            SizedBox(height: height1 * 0.12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return OOPS();
                        }));
                      },
                      child: Image.asset('images/oop.png',),
                    ),
                    Text('OOPS',style: TextStyle(color: Colors.black,fontSize: 20))
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
