import 'package:echo_vision/screens/camera_screen.dart';
import 'package:echo_vision/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {
    final _auth = FirebaseAuth.instance;
    return StreamBuilder(
      stream: _auth.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          print(snapshot.data);
          return WelcomeScreen();
        } else {
          return WelcomeScreen();
        }
      },
    );
  }
}
