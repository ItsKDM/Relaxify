import 'package:flutter/material.dart';
import 'package:relaxify/User/privacy.dart';
import 'package:relaxify/animation/constants.dart';

class Username extends StatefulWidget {
  @override
  _UsernameState createState() => _UsernameState();
}

class _UsernameState extends State<Username> {
  final name = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the Widget is removed from the Widget tree
    name.dispose();
    super.dispose();
  }

  Widget _buildFullNameTF() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "Username",
          style: kLabelStyle,
        ),
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 60.0,
          child: TextFormField(
            controller: name,
            validator: (value) {
              if (value.isEmpty) {
                return "Enter a Username";
              } else {
                return null;
              }
            },
            keyboardType: TextInputType.text,
            style: TextStyle(color: Colors.black, fontFamily: 'OpenSans'),
            decoration: new InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 17.0),
              prefixIcon: Icon(
                Icons.person,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }

  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.deepOrange.shade200,
      ),
      body: SingleChildScrollView(
          child: Form(
        // ignore: deprecated_member_use
        autovalidate: true,
        key: formkey,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 50),
            child: Column(
              children: <Widget>[
                Text(
                  'Create a Username',
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 30),
                _buildFullNameTF(),
                SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(vertical: 25.0, horizontal: 25),
                  child: RaisedButton(
                    elevation: 5.0,
                    padding: EdgeInsets.all(15.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Text(
                      'NEXT',
                      style: TextStyle(
                        letterSpacing: 1.5,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    color: Colors.white,
                    onPressed: () {
                      if (formkey.currentState.validate()) {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Privacy()));
                      } else {
                        print("Not Filled");
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      )),
    );
  }
}
