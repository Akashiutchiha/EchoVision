import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

import 'home.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        SplashScreen(
          seconds: 10,
          navigateAfterSeconds: const Home(),
          title: const Text('Echo Vision'),
          image: const Image(
            image: AssetImage('images/Frame 5.png'),
          ),
          backgroundColor: Color(0xFF1e6ff8),
          styleTextUnderTheLoader: const TextStyle(),
          photoSize: 100.0,
          loaderColor: Color.fromARGB(255, 255, 255, 255),
        ),
      ]),
    );
  }
}
