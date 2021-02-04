import 'package:firebaseauth/AppBarWidget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import 'SignInAuth.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: AppBarWidget(
            icon: FontAwesomeIcons.user,
            text: 'Welcome Screen',
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(imgUrl),
                maxRadius: 40,
              ),
              Text(
                email,
                style: GoogleFonts.lato(
                  fontSize: 20,
                ),
              ),
              Text(userName),
              OutlineButton(
                onPressed: () {
                  signOutGoogle().then(
                    (value) => Navigator.pop(context),
                  );
                },
                child: Text('Log Out '),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
