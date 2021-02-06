import 'package:firebaseauth/Google/WelcomePage.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../AppBarWidget.dart';
import 'SignInAuth.dart';

// hello gang welcome back to another video
// today we are going to create google sign in Firebase
// using Google Sign In Package
// lets design some ui after that we will apply logins to login

class GoogleScreen extends StatefulWidget {
  @override
  _GoogleScreenState createState() => _GoogleScreenState();
}

class _GoogleScreenState extends State<GoogleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: AppBarWidget(
          // AppBarWidget i designed to add icon and text to appbar

          icon: FontAwesomeIcons.google,
          text: 'Google SignIn',
        ),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          // color: Colors.blueGrey[200],
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.blueGrey[700],
              Colors.grey,
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FaIcon(
                FontAwesomeIcons.database,
                color: Colors.yellow,
                size: 50,
              ),
              OutlineButton(
                onPressed: onPressSignIn,
                child: Text(
                  'Click TO Sign In',
                  style: GoogleFonts.sahitya(
                    fontSize: 23,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(17),
                ),
                borderSide: BorderSide(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onPressSignIn() {
    signInWithGoogle().then((value) => nextPage());
  }

  void nextPage() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => WelcomeScreen()));
  }
}



// thats it for today 

// Like 
//share
//subscribe 


// Happy Coding '//


// Wait for next update 
// we will meet soon

