import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'c.dart';
import 'it.dart';
import 'maths.dart';
import 'physics.dart';
import 'tc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Sem1Bca extends StatefulWidget {
  @override
  _Sem1BcaState createState() => _Sem1BcaState();
}

class _Sem1BcaState extends State<Sem1Bca> {
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
              accountName: Text('HY'),
              accountEmail: Text('HY@gmail.com'),
              currentAccountPicture: CircleAvatar(
                child: ClipOval(
                  child: Image.asset('images/cart2.jpg',fit: BoxFit.cover,width: 90,height: 90,),
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
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                Fluttertoast.showToast(msg: 'Thinking About It',gravity: ToastGravity.CENTER);
              },
            ),
            ListTile(
              leading: Icon(Icons.description),
              title: Text('Policies'),
              onTap: () {
                Fluttertoast.showToast(msg: 'Its Your Part Sumit',gravity: ToastGravity.CENTER);
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('LogOut'),
              onTap: ()  async {
                await FirebaseAuth.instance.signOut();
                await storage.delete(key: "uid");
                Navigator.pushNamedAndRemoveUntil(context, '/welcome', (route) => false);
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
                          return IT();
                        }));
                      },
                      child: Image.asset('images/it.png'),
                    ),
                    Text('I.T.',style: TextStyle(color: Colors.black,fontSize: 20),)
                  ],
                ),
                Column(
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return Physics();
                        }));
                      },
                      child: Image.asset('images/physics.png',),
                    ),
                    Text('Physics',style: TextStyle(color: Colors.black,fontSize: 20))
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
                          return Maths();
                        }));
                      },
                      child: Image.asset('images/math1.png',),
                    ),
                    Text('Maths',style: TextStyle(color: Colors.black,fontSize: 20))
                  ],
                ),
                Column(
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return TC();
                        }));
                      },
                      child: Image.asset('images/tc.png',),
                    ),
                    Text('Tech. Comm.',style: TextStyle(color: Colors.black,fontSize: 20))
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
                          return C();
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
