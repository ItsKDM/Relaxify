// import 'dart:html';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:relaxify/User/gettingstarted.dart';
import 'package:relaxify/animation/FadeAnimation.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart' as http;

//Facebook provider
import 'package:flutter_facebook_login/flutter_facebook_login.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // String _email;
  // String _password;

  // final FacebookLogin fbLogin = new FacebookLogin();

  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = GoogleSignIn();
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future _signInFacebook() async {
    FacebookLogin facebookLogin = FacebookLogin();
    final result = await facebookLogin.logIn(['email']);
    final token = result.accessToken.token;
    final graphResponse = await http.get(
        'https://graph.facebook.com/v2.12/me?fields=name,first_name,last_name,email&access_token=${token}');
    print(graphResponse.body);
    if (result.status == FacebookLoginStatus.loggedIn) {
      final credential = FacebookAuthProvider.credential(token);
      _firebaseAuth.signInWithCredential(credential);
    }
  }

  //Google Sign In Method
  Future<String> signInWithGoogle() async {
    await Firebase.initializeApp();

    final GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
    final GoogleSignInAuthentication googleSignInAuthentication =
        await googleSignInAccount.authentication;

    final AuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleSignInAuthentication.accessToken,
      idToken: googleSignInAuthentication.idToken,
    );

    final UserCredential authResult =
        await _firebaseAuth.signInWithCredential(credential);
    final User user = authResult.user;

    if (user != null) {
      assert(!user.isAnonymous);
      assert(await user.getIdToken() != null);

      final User currentUser = _firebaseAuth.currentUser;
      assert(user.uid == currentUser.uid);

      print('signInWithGoogle succeeded: $user');

      return '$user';
    }

    return null;
  }

  Widget _buildGoogleBtn() {
    return Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 25.0),
        child: RaisedButton(
            splashColor: Colors.purple.shade100,
            elevation: 5.0,
            padding: EdgeInsets.all(15.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            color: Color(0xffffffff),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Center(
                  child: Text(
                    'LOGIN WITH GOOGLE',
                    style: TextStyle(
                      letterSpacing: 1.5,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.purple,
                    ),
                  ),
                )
              ],
            ),
            //Google onPressed
            onPressed: () {
              signInWithGoogle().then((result) {
                if (result != null) {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => About()));
                }
              });
            }));
  }

  Widget _buildFacebookBtn() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 25.0),
      child: RaisedButton(
        splashColor: Colors.purple.shade100,
        elevation: 5.0,
        padding: EdgeInsets.all(15.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        color: Color(0xffffffff),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Text(
                'LOGIN WITH FACEBOOK',
                style: TextStyle(
                  letterSpacing: 1.5,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple,
                ),
              ),
            )
          ],
        ),
        //Facebook onPressed
        onPressed: () {
          _signInFacebook();
          // _signInFacebook().then((result) {
          //   if (result != null) {
          //     Navigator.of(context)
          //         .push(MaterialPageRoute(builder: (context) => About()));
          //   }
          // });
        },
      ),
    );
  }

  Widget _buildForgot() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'Need any help?',
          style: TextStyle(
            color: Colors.black,
            fontSize: 15,
          ),
        ),
        Text(
          ' Contact Us',
          style: TextStyle(
            fontSize: 15,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }

  Widget _buildSignInWithText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          height: 1,
          width: 120,
          color: Colors.black,
        ),
        SizedBox(width: 10),
        Text(
          'OR',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(width: 10),
        Container(
          height: 1,
          width: 120,
          color: Colors.black,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 400,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: -40,
                    height: 400,
                    width: width,
                    child: FadeAnimation(
                      1,
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/logos/background.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    height: 400,
                    width: width + 20,
                    child: FadeAnimation(
                      1.3,
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/logos/background-2.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 50),
            _buildGoogleBtn(),
            _buildSignInWithText(),
            _buildFacebookBtn(),
            SizedBox(height: 10),
            _buildForgot()
          ],
        ),
      ),
    );
  }
}
