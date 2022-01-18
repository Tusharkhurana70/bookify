import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'cg.dart';
import 'ecm.dart';
import 'os.dart';
import 'wbp.dart';

class Sem5Bca extends StatefulWidget {
  @override
  _Sem5BcaState createState() => _Sem5BcaState();
}

class _Sem5BcaState extends State<Sem5Bca> {
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
            SizedBox(height: height1 * 0.13),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return ECM();
                        }));
                      },
                      child: Image.asset('images/ec.png',),
                    ),
                    Text('E Comm.',style: TextStyle(color: Colors.black,fontSize: 20),)
                  ],
                ),
                Column(
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return CG();
                        }));
                      },
                      child: Image.asset('images/cg.png',),
                    ),
                    Text('C.G.',style: TextStyle(color: Colors.black,fontSize: 20))
                  ],
                )
              ],
            ),
            SizedBox(height: height1 * 0.22),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return OS();
                        }));
                      },
                      child: Image.asset('images/os.png',),
                    ),
                    Text('O.S.',style: TextStyle(color: Colors.black,fontSize: 20))
                  ],
                ),
                Column(
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return WBP();
                        }));
                      },
                      child: Image.asset('images/php.png',),
                    ),
                    Text('W.B.P.',style: TextStyle(color: Colors.black,fontSize: 20))
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
