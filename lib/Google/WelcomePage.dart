import 'package:firebaseauth/AppBarWidget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import 'SignInAuth.dart';

// Now Design Welcome Screen of Landing Screen After Login

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppBarWidget(
          icon: FontAwesomeIcons.landmark,
          text: 'Landing Page',
        ),
        elevation: 0,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.deepPurple[900].withRed(123),
              Colors.purple[900].withBlue(123),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FaIcon(
                FontAwesomeIcons.google,
                size: 70,
                color: Colors.blue,
              ),
              SizedBox(height: 20),
              CircleAvatar(
                backgroundImage: NetworkImage(imgUrl),
                radius: 50,
              ),
              SizedBox(height: 20),
              Text(
                userName,
                style: GoogleFonts.abel(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 20),
              Text(
                email,
                style: GoogleFonts.abel(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 20),
              RaisedButton(
                onPressed: () {
                  mainPage();
                },
                child: Text(
                  'Log Out',
                  style: GoogleFonts.alef(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                color: Colors.black,
                elevation: 2.0,
                textColor: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void mainPage() {
    signOutWithGoogle();
    Navigator.pop(context);
  }
}
