import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'cg.dart';
import 'ecm.dart';
import 'os.dart';
import 'wbp.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class Sem5Bca extends StatefulWidget {
  @override
  _Sem5BcaState createState() => _Sem5BcaState();
}

class _Sem5BcaState extends State<Sem5Bca> {
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
            SizedBox(height: height1 * 0.13),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return ECM();
                        }));
                      },
                      child: Image.asset('images/ec.png',),
                    ),
                    Text('E Comm.',style: TextStyle(color: Colors.black,fontSize: 20),)
                  ],
                ),
                Column(
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return CG();
                        }));
                      },
                      child: Image.asset('images/cg.png',),
                    ),
                    Text('C.G.',style: TextStyle(color: Colors.black,fontSize: 20))
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
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return OS();
                        }));
                      },
                      child: Image.asset('images/os.png',),
                    ),
                    Text('O.S.',style: TextStyle(color: Colors.black,fontSize: 20))
                  ],
                ),
                Column(
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return WBP();
                        }));
                      },
                      child: Image.asset('images/php.png',),
                    ),
                    Text('W.B.P.',style: TextStyle(color: Colors.black,fontSize: 20))
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
