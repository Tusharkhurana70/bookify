import 'package:flutter/material.dart';
import 'quotes.dart';
import 'bca_Semester.dart';
import 'package:audioplayers/audio_cache.dart';

class Course extends StatefulWidget {
  @override
  _CourseState createState() => _CourseState();
}

class _CourseState extends State<Course> {
  @override
  Widget build(BuildContext context) {
    final player = new AudioCache();
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(height: 20,),
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
            SizedBox(height: 30,),
            Text('Select Your Course',style: TextStyle(fontSize: 25),),
            SizedBox(height: 15),
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
                            player.play('Audio 3.mp3');
                          });
                        },
                        child: Text('BCA',style: TextStyle(color: Colors.white,fontSize: 20),),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20,),
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
                          player.play('Audio 4.mp3');
                        },
                        child: Text('BBA',style: TextStyle(color: Colors.white,fontSize: 20),),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20,),
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
                        },
                        child: Text('BJMC',style: TextStyle(color: Colors.white,fontSize: 20),),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30,),
            Text('Our Other Courses',style: TextStyle(fontSize: 25),),
            SizedBox(height: 15,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  TextButton(
                    onPressed: () {
                    },
                    child: Image(width: 300,height: 200,image: AssetImage('images/webd.jpg'),),
                  ),
                  TextButton(
                    onPressed: () {
                    },
                    child: Image(width: 300,height: 200,image: AssetImage('images/ad.png'),),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
