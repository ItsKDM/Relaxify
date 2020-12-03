import 'package:flutter/material.dart';
import 'package:relaxify/home.dart';

// ignore: must_be_immutable
class Registeration extends StatefulWidget {
  @override
  _RegisterationState createState() => _RegisterationState();
}

class _RegisterationState extends State<Registeration> {
  bool _male = false;
  bool _female = false;
  bool _none = false;
  bool _age1 = false;
  bool _age2 = false;
  bool _age3 = false;
  bool _age4 = false;
  bool _age5 = false;
  bool _job1 = false;
  bool _job2 = false;
  bool _job3 = false;
  bool _job4 = false;
  bool _relation1 = false;
  bool _relation2 = false;
  bool _relation3 = false;

  Widget _buildMaleCheckbox() {
    return Container(
      height: 20.0,
      child: Row(
        children: <Widget>[
          Theme(
            data: ThemeData(unselectedWidgetColor: Color(0xFF61A4F1)),
            child: Checkbox(
              value: _male,
              checkColor: Colors.white,
              activeColor: Color(0xFF61A4F1),
              onChanged: (value) {
                setState(() {
                  _male = value;
                });
              },
            ),
          ),
          Text(
            'Male',
            style: TextStyle(
              letterSpacing: 1.0,
              fontSize: 15.0,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFemaleCheckbox() {
    return Container(
      height: 20.0,
      child: Row(
        children: <Widget>[
          Theme(
            data: ThemeData(unselectedWidgetColor: Color(0xFF61A4F1)),
            child: Checkbox(
              value: _female,
              checkColor: Colors.white,
              activeColor: Color(0xFF61A4F1),
              onChanged: (value) {
                setState(() {
                  _female = value;
                });
              },
            ),
          ),
          Text(
            'Female',
            style: TextStyle(
              letterSpacing: 1.0,
              fontSize: 15.0,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNoneCheckbox() {
    return Container(
      height: 20.0,
      child: Row(
        children: <Widget>[
          Theme(
            data: ThemeData(unselectedWidgetColor: Color(0xFF61A4F1)),
            child: Checkbox(
              value: _none,
              checkColor: Colors.white,
              activeColor: Color(0xFF61A4F1),
              onChanged: (value) {
                setState(() {
                  _none = value;
                });
              },
            ),
          ),
          Text(
            'Choose not to disclose',
            style: TextStyle(
              letterSpacing: 1.0,
              fontSize: 15.0,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildage1Checkbox() {
    return Container(
      height: 20.0,
      child: Row(
        children: <Widget>[
          Theme(
            data: ThemeData(unselectedWidgetColor: Color(0xFF61A4F1)),
            child: Checkbox(
              value: _age1,
              checkColor: Colors.white,
              activeColor: Color(0xFF61A4F1),
              onChanged: (value) {
                setState(() {
                  _age1 = value;
                });
              },
            ),
          ),
          Text(
            '12-18',
            style: TextStyle(
              letterSpacing: 1.0,
              fontSize: 15.0,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildage2Checkbox() {
    return Container(
      height: 20.0,
      child: Row(
        children: <Widget>[
          Theme(
            data: ThemeData(unselectedWidgetColor: Color(0xFF61A4F1)),
            child: Checkbox(
              value: _age2,
              checkColor: Colors.white,
              activeColor: Color(0xFF61A4F1),
              onChanged: (value) {
                setState(() {
                  _age2 = value;
                });
              },
            ),
          ),
          Text(
            '19-24',
            style: TextStyle(
              letterSpacing: 1.0,
              fontSize: 15.0,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildage3Checkbox() {
    return Container(
      height: 20.0,
      child: Row(
        children: <Widget>[
          Theme(
            data: ThemeData(unselectedWidgetColor: Color(0xFF61A4F1)),
            child: Checkbox(
              value: _age3,
              checkColor: Colors.white,
              activeColor: Color(0xFF61A4F1),
              onChanged: (value) {
                setState(() {
                  _age3 = value;
                });
              },
            ),
          ),
          Text(
            '25-34',
            style: TextStyle(
              letterSpacing: 1.0,
              fontSize: 15.0,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildage4Checkbox() {
    return Container(
      height: 20.0,
      child: Row(
        children: <Widget>[
          Theme(
            data: ThemeData(unselectedWidgetColor: Color(0xFF61A4F1)),
            child: Checkbox(
              value: _age4,
              checkColor: Colors.white,
              activeColor: Color(0xFF61A4F1),
              onChanged: (value) {
                setState(() {
                  _age4 = value;
                });
              },
            ),
          ),
          Text(
            '35-44',
            style: TextStyle(
              letterSpacing: 1.0,
              fontSize: 15.0,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildage5Checkbox() {
    return Container(
      height: 20.0,
      child: Row(
        children: <Widget>[
          Theme(
            data: ThemeData(unselectedWidgetColor: Color(0xFF61A4F1)),
            child: Checkbox(
              value: _age5,
              checkColor: Colors.white,
              activeColor: Color(0xFF61A4F1),
              onChanged: (value) {
                setState(() {
                  _age5 = value;
                });
              },
            ),
          ),
          Text(
            '45-54',
            style: TextStyle(
              letterSpacing: 1.0,
              fontSize: 15.0,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildjob1Checkbox() {
    return Container(
      height: 20.0,
      child: Row(
        children: <Widget>[
          Theme(
            data: ThemeData(unselectedWidgetColor: Color(0xFF61A4F1)),
            child: Checkbox(
              value: _job1,
              checkColor: Colors.white,
              activeColor: Color(0xFF61A4F1),
              onChanged: (value) {
                setState(() {
                  _job1 = value;
                });
              },
            ),
          ),
          Text(
            'Employed',
            style: TextStyle(
              letterSpacing: 1.0,
              fontSize: 15.0,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildjob2Checkbox() {
    return Container(
      height: 20.0,
      child: Row(
        children: <Widget>[
          Theme(
            data: ThemeData(unselectedWidgetColor: Color(0xFF61A4F1)),
            child: Checkbox(
              value: _job2,
              checkColor: Colors.white,
              activeColor: Color(0xFF61A4F1),
              onChanged: (value) {
                setState(() {
                  _job2 = value;
                });
              },
            ),
          ),
          Text(
            'Homemaker',
            style: TextStyle(
              letterSpacing: 1.0,
              fontSize: 15.0,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildjob3Checkbox() {
    return Container(
      height: 20.0,
      child: Row(
        children: <Widget>[
          Theme(
            data: ThemeData(unselectedWidgetColor: Color(0xFF61A4F1)),
            child: Checkbox(
              value: _job3,
              checkColor: Colors.white,
              activeColor: Color(0xFF61A4F1),
              onChanged: (value) {
                setState(() {
                  _job3 = value;
                });
              },
            ),
          ),
          Text(
            'Student',
            style: TextStyle(
              letterSpacing: 1.0,
              fontSize: 15.0,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildjob4Checkbox() {
    return Container(
      height: 20.0,
      child: Row(
        children: <Widget>[
          Theme(
            data: ThemeData(unselectedWidgetColor: Color(0xFF61A4F1)),
            child: Checkbox(
              value: _job4,
              checkColor: Colors.white,
              activeColor: Color(0xFF61A4F1),
              onChanged: (value) {
                setState(() {
                  _job4 = value;
                });
              },
            ),
          ),
          Text(
            'Unemployed',
            style: TextStyle(
              letterSpacing: 1.0,
              fontSize: 15.0,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildrelation1Checkbox() {
    return Container(
      height: 20.0,
      child: Row(
        children: <Widget>[
          Theme(
            data: ThemeData(unselectedWidgetColor: Color(0xFF61A4F1)),
            child: Checkbox(
              value: _relation1,
              checkColor: Colors.white,
              activeColor: Color(0xFF61A4F1),
              onChanged: (value) {
                setState(() {
                  _relation1 = value;
                });
              },
            ),
          ),
          Text(
            "YES, AND I'M HAPPY ABOUT IT",
            style: TextStyle(
              letterSpacing: 1.0,
              fontSize: 15.0,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildrelation2Checkbox() {
    return Container(
      height: 20.0,
      child: Row(
        children: <Widget>[
          Theme(
            data: ThemeData(unselectedWidgetColor: Color(0xFF61A4F1)),
            child: Checkbox(
              value: _relation2,
              checkColor: Colors.white,
              activeColor: Color(0xFF61A4F1),
              onChanged: (value) {
                setState(() {
                  _relation2 = value;
                });
              },
            ),
          ),
          Text(
            "YES, BUT IT'S A SOURCE OF TENSION",
            style: TextStyle(
              letterSpacing: 1.0,
              fontSize: 15.0,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildrelation3Checkbox() {
    return Container(
      height: 20.0,
      child: Row(
        children: <Widget>[
          Theme(
            data: ThemeData(unselectedWidgetColor: Color(0xFF61A4F1)),
            child: Checkbox(
              value: _relation3,
              checkColor: Colors.white,
              activeColor: Color(0xFF61A4F1),
              onChanged: (value) {
                setState(() {
                  _relation3 = value;
                });
              },
            ),
          ),
          Text(
            'No',
            style: TextStyle(
              letterSpacing: 1.0,
              fontSize: 15.0,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF61A4F1),
        title: Text(
          "Assessment",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: Column(
            children: [
              Center(
                child: Text(
                  'Your Answers Will Remain Completely Confidential',
                  style: TextStyle(
                    letterSpacing: 1.0,
                    fontSize: 13.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                child: Container(
                  height: 1.0,
                  width: double.maxFinite,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20),
              Column(
                children: <Widget>[
                  Center(
                    child: Text(
                      "Everyone's different: Tell us your gender",
                      style: TextStyle(
                        letterSpacing: 1.0,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  _buildMaleCheckbox(),
                  SizedBox(height: 10),
                  _buildFemaleCheckbox(),
                  SizedBox(height: 10),
                  _buildNoneCheckbox()
                ],
              ),
              SizedBox(height: 50),
              Column(
                children: <Widget>[
                  Text(
                    "Your Age Matters",
                    style: TextStyle(
                      letterSpacing: 1.0,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 20),
                  _buildage1Checkbox(),
                  SizedBox(height: 10),
                  _buildage2Checkbox(),
                  SizedBox(height: 10),
                  _buildage3Checkbox(),
                  SizedBox(height: 10),
                  _buildage4Checkbox(),
                  SizedBox(height: 10),
                  _buildage5Checkbox()
                ],
              ),
              SizedBox(height: 50),
              Column(
                children: <Widget>[
                  Text(
                    "Job Profile",
                    style: TextStyle(
                      letterSpacing: 1.0,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 20),
                  _buildjob1Checkbox(),
                  SizedBox(height: 10),
                  _buildjob2Checkbox(),
                  SizedBox(height: 10),
                  _buildjob3Checkbox(),
                  SizedBox(height: 10),
                  _buildjob4Checkbox(),
                ],
              ),
              SizedBox(height: 50),
              Column(
                children: <Widget>[
                  Text(
                    "Are you in a serious relationship?",
                    style: TextStyle(
                      letterSpacing: 1.0,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 20),
                  _buildrelation1Checkbox(),
                  SizedBox(height: 10),
                  _buildrelation2Checkbox(),
                  SizedBox(height: 10),
                  _buildrelation3Checkbox(),
                ],
              ),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 25.0, horizontal: 25),
                child: RaisedButton(
                  padding: EdgeInsets.all(15.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Text(
                    "SUBMIT",
                    style: TextStyle(
                      letterSpacing: 1.5,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  color: Color(0xFF61A4F1),
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => Home()));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
