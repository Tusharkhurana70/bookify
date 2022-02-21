import 'package:bookifyy/otherCourse/app.dart';
import 'package:flutter/material.dart';
import 'quotes.dart';
import 'bca/bca_Semester.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'authentication/signin.dart';
import 'otherCourse/web.dart';

SignIn sign1= SignIn();

class Course extends StatefulWidget {
  @override
  _CourseState createState() => _CourseState();
}

class _CourseState extends State<Course> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    var padding = MediaQuery.of(context).viewPadding;
    double height1 = height - padding.top - padding.bottom;
    final player = new AudioCache();
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: height1*0.06,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(width: 10,),
                Quotess('The man who does not read books\n has no advantage over the one who \n cannot read them.', TextStyle(color: Colors.white,fontSize: 15), '\n — Mark Twain', TextStyle(color: Colors.white,fontSize: 18)),
                SizedBox(width: 15,),
                Quotess('The beautiful thing about learning is \n that no one can take it away from \n you.', TextStyle(color: Colors.white,fontSize: 15), '\n — B.B. King', TextStyle(color: Colors.white,fontSize: 18)),
                SizedBox(width: 15,),
                Quotess('Education is the most powerful\nweapon you can use to change the \nworld.\n', TextStyle(color:  Colors.white,fontSize: 15), '— B.B. King', TextStyle(color:  Colors.white,fontSize: 18)),
                SizedBox(width: 15,),
                Quotess(' Learning is never done \n without errors and \n defeat.', TextStyle(color:  Colors.white,fontSize: 15), '\n– Vladimir Lenin', TextStyle(color:  Colors.white,fontSize: 18)),
                SizedBox(width: 15,),
                Quotess('Never let the fear of striking out \nstop you from playing the \ngame.', TextStyle(color:  Colors.white,fontSize: 15), ' \n— Babe Ruth', TextStyle(color:  Colors.white,fontSize: 18)),
                SizedBox(width: 15,),
                Quotess('You don’t have to be great to start,\n but you have to start to be\n great.', TextStyle(color:  Colors.white,fontSize: 15), '\n– Zig Ziglar', TextStyle(color:  Colors.white,fontSize: 18))
              ],
            ),
          ),
          SizedBox(height: height1*0.08,),
          Text('Select Your Course',style: TextStyle(fontSize: 25),),
          SizedBox(height: height1*0.03),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.orangeAccent,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          Navigator.push(context, MaterialPageRoute(builder: (context) {
                            return BcaSem();
                          }));
                          player.play('Audio b.mp3');
                        });
                      },
                      child: Text('BCA',style: TextStyle(color: Colors.white,fontSize: 20),),
                    ),
                  ),
                ),
              ),
              SizedBox(width: height1*0.03,),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.orangeAccent,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: TextButton(
                      onPressed: () {
                        player.play('Audio a.mp3');
                        Fluttertoast.showToast(msg: 'Coming Soon',gravity: ToastGravity.BOTTOM);
                      },
                      child: Text('BBA',style: TextStyle(color: Colors.white,fontSize: 20),),
                    ),
                  ),
                ),
              ),
              SizedBox(width: height1*0.03,),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.orangeAccent,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: TextButton(
                      onPressed: () {
                        player.play('Audio a.mp3');
                        Fluttertoast.showToast(msg: 'Coming Soon',gravity: ToastGravity.SNACKBAR);
                      },
                      child: Text('BJMC',style: TextStyle(color: Colors.white,fontSize: 20),),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: height1*0.08,),
          Text('Our Recommended Courses',style: TextStyle(fontSize: 25),),
          SizedBox(height: height1*0.03,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return WebDevelopment();
                    }));
                  },
                  child: Image(width: 300,height: 200,image: AssetImage('images/webd.jpg'),),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return AppDevelopment();
                    }));
                  },
                  child: Image(width: 300,height: 200,image: AssetImage('images/ad.png'),),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
