import 'package:firebaseauth/Facebook/facebookScreen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Google/google.dart';
import 'Anonymous/Anonymous.dart';
import 'Email Password/EmailPassword.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Sign In Methods'),
        ),
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          children: [
            buildRaisedButton(
              icon: FontAwesomeIcons.user,
              text: 'Email Sign In',
              onClick: email,
            ),
            SizedBox(height: 30),
            buildRaisedButton(
              icon: FontAwesomeIcons.angellist,
              text: 'Anonymous Sign In',
              onClick: anonymous,
              color: Colors.blueGrey[800],
            ),
            SizedBox(height: 30),
            buildRaisedButton(
              icon: FontAwesomeIcons.google,
              text: 'Google Sign In ',
              onClick: google,
              color: Colors.purple[900],
            ),
            SizedBox(height: 20),
            buildRaisedButton(
              icon: FontAwesomeIcons.facebook,
              text: 'Facebook',
              color: Colors.blue,
              onClick: facebook,
            ),
          ],
        ),
      ),
    );
  }

  RaisedButton buildRaisedButton({
    Function onClick,
    String text,
    IconData icon,
    Color color,
  }) {
    return RaisedButton(
      elevation: 4,
      onPressed: onClick,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        children: [
          FaIcon(
            icon,
            size: 36,
          ),
          SizedBox(width: 30),
          Text(
            text,
            style: GoogleFonts.cookie(
              fontSize: 30,
              color: color,
            ),
          ),
        ],
      ),
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }

// Functions For Different Sign In Methods
  void anonymous() {
    setState(() {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => AnonymousSignIn(),
        ),
      );
    });
  }

  void email() {
    setState(() {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => EmailPasswordSignIn(),
        ),
      );
    });
  }

  void google() async {
    setState(() {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => GoogleScreen(),
        ),
      );
    });
  }

  void facebook() async {
    setState(() {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => FacebookLogin(),
        ),
      );
    });
  }
}
