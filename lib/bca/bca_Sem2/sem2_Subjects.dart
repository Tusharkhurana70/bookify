import 'package:bookifyy/bca/bca_Sem2/dbms.dart';
import 'package:bookifyy/drawer/contact.dart';
import 'package:bookifyy/drawer/terms.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'pom.dart';
import 'maths2.dart';
import 'de.dart';
import 'c2.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bookifyy/authentication/passwordReset.dart';
import 'package:bookifyy/drawer/policy.dart';

class Sem2Bca extends StatefulWidget {
  @override
  _Sem2BcaState createState() => _Sem2BcaState();
}

class _Sem2BcaState extends State<Sem2Bca> {
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
      appBar: AppBar(backgroundColor: Colors.white,title: Text('Select Your Subjects',style: TextStyle(color: Colors.black,),),
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
            SizedBox(height: height1 * 0.1),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return Pom();
                        }));
                      },
                      child: Image.asset('images/pom.png',),
                    ),
                    Text('P.O.M.',style: TextStyle(color: Colors.black,fontSize: 20),)
                  ],
                ),
                Column(
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return Dbms();
                        }));
                      },
                      child: Image.asset('images/database.png',),
                    ),
                    Text('DBMS',style: TextStyle(color: Colors.black,fontSize: 20))
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
                          return Maths2();
                        }));
                      },
                      child: Image.asset('images/math2.png',),
                    ),
                    Text('Maths',style: TextStyle(color: Colors.black,fontSize: 20))
                  ],
                ),
                Column(
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return DE();
                        }));
                      },
                      child: Image.asset('images/de.png',),
                    ),
                    Text('DE',style: TextStyle(color: Colors.black,fontSize: 20))
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
                          return c2();
                        }));
                      },
                      child: Image.asset('images/c.png',),
                    ),
                    Text('C Lang.',style: TextStyle(color: Colors.black,fontSize: 20))
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
