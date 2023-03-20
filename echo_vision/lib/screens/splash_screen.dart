import 'package:echo_vision/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

import '../components/constants.dart';
import 'camera_screen.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        SplashScreen(
          seconds: 3,
          navigateAfterSeconds: WelcomeScreen(),
          title: const Text(
            'Echo Vision',
            style: TextStyle(
              fontSize: 25,
            ),
          ),
          image: const Image(
            image: AssetImage(
              'images/Frame 5.png',
            ),
          ),
          backgroundColor: kPrimaryColor,
          photoSize: 60.0,
          loaderColor: Color.fromARGB(255, 255, 255, 255),
        ),
      ]),
    );
  }
}
