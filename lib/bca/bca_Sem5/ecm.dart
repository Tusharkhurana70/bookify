import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ECM extends StatefulWidget {
  @override
  _ECMState createState() => _ECMState();
}

class _ECMState extends State<ECM> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    var padding = MediaQuery.of(context).viewPadding;
    double height1 = height - padding.top - padding.bottom;
    return Scaffold(
      backgroundColor: Color(0xFFEFF5FA),
      appBar: AppBar(backgroundColor: Color(0xFFEFF5FA),title: Text('E Commerce',style: TextStyle(color: Colors.black),),
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
                        launch('https://drive.google.com/drive/folders/1XTeHf0DON2HsoBubYy6phbehE2PNWKO9?usp=sharing');
                      },
                      child: Image.asset('images/books.png'),
                    ),
                    Text('Combined Notes',style: TextStyle(color: Colors.black,fontSize: 17))
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
