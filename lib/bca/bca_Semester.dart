import 'package:bookifyy/authentication/passwordReset.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'bca_Sem1/sem1_Subjects.dart';
import 'bca_Sem2/sem2_Subjects.dart';
import 'bca_Sem3/sem3_Subjects.dart';
import 'bca_Sem4/sem4_Subjects.dart';
import 'bca_Sem5/sem5_Subjects.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:bookifyy/drawer/policy.dart';
import 'package:bookifyy/drawer/terms.dart';
import 'package:bookifyy/drawer/contact.dart';


class BcaSem extends StatefulWidget {
  @override
  _BcaSemState createState() => _BcaSemState();
}
class _BcaSemState extends State<BcaSem> {
  @override
  Widget build(BuildContext context) {
    final storage = FlutterSecureStorage();
    final height = MediaQuery.of(context).size.height;
    var padding = MediaQuery.of(context).viewPadding;
    double height1 = height - padding.top - padding.bottom;
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('IPU Genie'),
              accountEmail: Image.asset('images/ipugenie.png',height: 20,),
              currentAccountPicture: CircleAvatar(
                child: ClipOval(
                  child: Image.asset('images/suggestions.gif',fit: BoxFit.cover,width: 90,height: 90,),
                ),
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/lea.jpg'),fit: BoxFit.fill
                )
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.pushNamedAndRemoveUntil(context, '/course', (route) => false);
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.description),
              title: Text('Privacy Policy'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return Policy();
                }));
              },
            ),
            ListTile(
              leading: Icon(Icons.description),
              title: Text('Terms & Conditions'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Terms();
                }));
              },
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('Contact Us'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return AboutUs();
                }));
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.password_rounded),
              title: Text('Password Reset'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return PasswordReset();
                }));
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('LogOut'),
              onTap: ()  {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text('LogOut'),
                    content: Text('Are you sure you want to LogOut'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text('No'),
                      ),
                      TextButton(
                        onPressed: () async {
                          await FirebaseAuth.instance.signOut();
                          await storage.delete(key: "uid");
                          Navigator.pushNamedAndRemoveUntil(context, '/welcome', (route) => false);
                        },
                        child: Text('Yes'),
                      )
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(shadowColor: Colors.blueAccent,backgroundColor: Colors.white,title: Text('Select your Semester',style: TextStyle(color: Colors.black),),
      leading: Builder(builder: (context) {
        return IconButton(
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
          icon: Icon(FontAwesomeIcons.bars,color: Colors.black,size: height1*0.03,),
        );
      },),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: height1 * 0.12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                  onPressed: () async{
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
                      Fluttertoast.showToast(msg: 'Coming Soon',gravity: ToastGravity.BOTTOM);
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

