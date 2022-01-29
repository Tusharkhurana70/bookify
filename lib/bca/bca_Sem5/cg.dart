import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CG extends StatefulWidget {
  @override
  _CGState createState() => _CGState();
}

class _CGState extends State<CG> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    var padding = MediaQuery.of(context).viewPadding;
    double height1 = height - padding.top - padding.bottom;
    return Scaffold(
      backgroundColor: Color(0xFFEFF5FA),
      appBar: AppBar(backgroundColor: Color(0xFFEFF5FA),title: Text('Computer Graphics',style: TextStyle(color: Colors.black),),
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
                        launch('https://drive.google.com/file/d/1GoyZam9sxJ73ybFjkNHba387MoBMiSiK/view?usp=sharing');
                      },
                      child: Image.asset('images/book5.png'),
                    ),
                    Text('Book',style: TextStyle(color: Colors.black,fontSize: 17))
                  ],
                ),
                Column(
                  children: [
                    TextButton(
                      onPressed: () {
                        launch('https://drive.google.com/drive/folders/159eTtIwpWu69dPMHO50uetb1C55hPCj6?usp=sharing');
                      },
                      child: Image.asset('images/books.png'),
                    ),
                    Text('Combined Notes',style: TextStyle(color: Colors.black,fontSize: 16))
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
