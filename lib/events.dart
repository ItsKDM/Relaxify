import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:relaxify/home.dart';
import 'package:relaxify/media.dart';
import 'package:relaxify/social/post.dart';

class Events extends StatefulWidget {
  @override
  _EventsState createState() => _EventsState();
}

class _EventsState extends State<Events> {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF61A4F1),
        leading: IconButton(
          icon: SvgPicture.asset(
            "assets/icons/menu.svg",
            color: Colors.white,
          ),
          onPressed: () {
            _scaffoldKey.currentState.openDrawer();
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: ClipOval(
                // ignore: deprecated_member_use
                child: Image.network(_firebaseAuth.currentUser.photoUrl)),
            onPressed: () {},
          ),
        ],
        centerTitle: true,
        title: Text(
          "Relaxify",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            child: Column(
              children: <Widget>[
                Text(
                  "Tough times never last, but tough people do!",
                  style: TextStyle(
                    letterSpacing: 1.0,
                    fontSize: 13.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 15),
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: RaisedButton(
                            color: Color(0xFF61A4F1),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Home()));
                            },
                            shape: CircleBorder(),
                            child: Stack(
                              children: <Widget>[
                                Positioned(
                                  child: Text(
                                    "Status",
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.white,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: RaisedButton(
                            color: Color(0xFF61A4F1),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Post()));
                            },
                            shape: CircleBorder(),
                            child: Stack(
                              children: <Widget>[
                                Positioned(
                                  child: Text(
                                    "Post",
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.white,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: RaisedButton(
                            color: Color(0xFF61A4F1),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Media()));
                            },
                            shape: CircleBorder(),
                            child: Stack(
                              children: <Widget>[
                                Positioned(
                                  child: Text(
                                    "Media",
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.white,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: RaisedButton(
                            color: Color(0xFF61A4F1),
                            onPressed: () {},
                            shape: CircleBorder(),
                            child: Stack(
                              children: <Widget>[
                                Positioned(
                                  child: Text(
                                    "Events",
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      width: double.infinity,
                      child: Column(
                        children: [
                          Image.asset('assets/logos/session.png'),
                          SizedBox(height: 20),
                          Image.asset('assets/logos/session2.png'),
                          SizedBox(height: 20),
                          Image.asset('assets/logos/session3.png'),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
