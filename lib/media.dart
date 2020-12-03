import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:relaxify/events.dart';
import 'package:relaxify/home.dart';
import 'package:relaxify/social/post.dart';

class Media extends StatefulWidget {
  @override
  _MediaState createState() => _MediaState();
}

class _MediaState extends State<Media> {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
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
          onPressed: () {},
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
                  "Sometimes the people around you won’t understand your journey.They don’t need to, it’s not for them.",
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
                            onPressed: () {},
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
                            elevation: 5.0,
                            color: Color(0xFF61A4F1),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Events()));
                            },
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
                Container(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Trending Now",
                          style: TextStyle(
                            letterSpacing: 1.0,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 20),
                    child: Center(
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              height: 120,
                              width: 150,
                              child: RaisedButton(
                                elevation: 0.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                onPressed: () {},
                                color: Colors.purple.shade100,
                                child: Center(
                                  child: Icon(
                                    Icons.play_arrow,
                                    size: 20,
                                    color: Colors.purple.shade400,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            Container(
                              height: 120,
                              width: 150,
                              child: RaisedButton(
                                elevation: 0.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                onPressed: () {},
                                color: Colors.deepOrange.shade100,
                                child: Center(
                                  child: Icon(
                                    Icons.play_arrow,
                                    size: 20,
                                    color: Colors.deepOrange,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                    child: Center(
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              height: 120,
                              width: 150,
                              child: RaisedButton(
                                elevation: 0.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                onPressed: () {},
                                color: Colors.deepOrange.shade100,
                                child: Center(
                                  child: Icon(
                                    Icons.play_arrow,
                                    size: 20,
                                    color: Colors.deepOrange,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            Container(
                              height: 120,
                              width: 150,
                              child: RaisedButton(
                                elevation: 0.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                onPressed: () {},
                                color: Colors.purple.shade100,
                                child: Center(
                                  child: Icon(
                                    Icons.play_arrow,
                                    size: 20,
                                    color: Colors.purple.shade400,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Advice From Doctors",
                          style: TextStyle(
                            letterSpacing: 1.0,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 20),
                    child: Center(
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              height: 120,
                              width: 150,
                              child: RaisedButton(
                                elevation: 0.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                onPressed: () {},
                                color: Colors.purple.shade100,
                                child: Center(
                                  child: Icon(
                                    Icons.play_arrow,
                                    size: 20,
                                    color: Colors.purple.shade400,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            Container(
                              height: 120,
                              width: 150,
                              child: RaisedButton(
                                elevation: 0.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                onPressed: () {},
                                color: Colors.deepOrange.shade100,
                                child: Center(
                                  child: Icon(
                                    Icons.play_arrow,
                                    size: 20,
                                    color: Colors.deepOrange,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                    child: Center(
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              height: 120,
                              width: 150,
                              child: RaisedButton(
                                elevation: 0.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                onPressed: () {},
                                color: Colors.deepOrange.shade100,
                                child: Center(
                                  child: Icon(
                                    Icons.play_arrow,
                                    size: 20,
                                    color: Colors.deepOrange,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            Container(
                              height: 120,
                              width: 150,
                              child: RaisedButton(
                                elevation: 0.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                onPressed: () {},
                                color: Colors.purple.shade100,
                                child: Center(
                                  child: Icon(
                                    Icons.play_arrow,
                                    size: 20,
                                    color: Colors.purple.shade400,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
