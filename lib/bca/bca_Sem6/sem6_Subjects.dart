import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Sem6Bca extends StatefulWidget {
  @override
  _Sem6BcaState createState() => _Sem6BcaState();
}

class _Sem6BcaState extends State<Sem6Bca> {
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
                      },
                      child: Image.asset('images/mc.png',),
                    ),
                    Text('M.C.',style: TextStyle(color: Colors.black,fontSize: 20),)
                  ],
                ),
                Column(
                  children: [
                    TextButton(
                      onPressed: () {
                      },
                      child: Image.asset('images/ns.png',),
                    ),
                    Text('N.S.',style: TextStyle(color: Colors.black,fontSize: 20))
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
                      },
                      child: Image.asset('images/dm.png',),
                    ),
                    Text('D.M.',style: TextStyle(color: Colors.black,fontSize: 20))
                  ],
                ),
                Column(
                  children: [
                    TextButton(
                      onPressed: () {
                      },
                      child: Image.asset('images/linux.png',),
                    ),
                    Text('Linux',style: TextStyle(color: Colors.black,fontSize: 20))
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
