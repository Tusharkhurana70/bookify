import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    var padding = MediaQuery.of(context).viewPadding;
    double height1 = height - padding.top - padding.bottom;
    return Scaffold(
      appBar: AppBar(elevation: 0,backgroundColor: Colors.transparent,title: Text('Contact Us',style: TextStyle(color: Colors.black),),
        leading: Builder(builder: (context) {
          return IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.keyboard_backspace,color: Colors.black,),
          );
        },),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              SizedBox(height: height1*0.05,),
              Image.asset('images/contactus.gif',height: height1*0.4,),
              Card(
                margin: EdgeInsets.all(25.0),
                child: TextButton(
                  onPressed: () async {
                    String email = 'tusharkhurana70@gmail.com';
                    String? encodeQueryParameters(Map<String, String> params) {
                      return params.entries
                          .map((e) => '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
                          .join('&');
                    }
                    final Uri emailLaunchUri = Uri(
                      scheme: 'mailto',
                      path: email,
                      query: encodeQueryParameters(<String, String>{
                        'subject': 'Example Subject & Symbols are allowed!'
                      }),
                    );
                    if(await canLaunch(emailLaunchUri.toString())) {
                      launch(emailLaunchUri.toString());
                    } else{
                      print('Email not supported');
                    }
                  },
                  child: ListTile(
                    leading: Icon(Icons.email,
                      color: Colors.black,
                    ),
                    title: Text('Tusharkhurana70@gmail.com',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}
