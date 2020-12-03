import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:relaxify/social/postImage.dart';
import 'package:relaxify/social/profile.dart';

class Post extends StatefulWidget {
  @override
  _PostState createState() => _PostState();
}

class _PostState extends State<Post> {
  @override
  Widget build(BuildContext context) {
    //Floating Bar

    final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
    return Scaffold(
      appBar: AppBar(
        elevation: 5.0,
        backgroundColor: Color(0xFF61A4F1),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add_a_photo),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PostImageScreen(),
                    fullscreenDialog: true,
                  ));
            },
          ),
        ],
        centerTitle: true,
        title: Text(
          "${_firebaseAuth.currentUser.displayName}",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => Profile()));
        },
        child: Icon(
          Icons.person_outline,
          color: Colors.white,
        ),
        backgroundColor: Color(0xFF61A4F1),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
