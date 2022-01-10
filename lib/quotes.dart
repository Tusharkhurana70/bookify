import 'package:flutter/material.dart';

class Quotess extends StatelessWidget {
  Quotess(this.quot,this.style1,this.author,this.style2);
  final String quot;
  final TextStyle style1;
  final String author;
  final TextStyle style2;
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color(0xFF2EC7C0),
              Color(0xFFC2E0AE)
            ]
          ),
            color: Color(0xFF2EC7C0),
            borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: EdgeInsets.all(15),
          child: RichText(
            text: TextSpan(
                children:[
                  TextSpan(text: quot,style: style1),
                  TextSpan(text: author,style: style2)
                ]
            ),
          ),
        )
    );
  }
}