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
          seconds: 5,
          navigateAfterSeconds: const Home(),
          title: const Text('Echo Vision'),
          backgroundColor: Color(0xFF1e6ff8),
          styleTextUnderTheLoader: const TextStyle(),
          photoSize: 100.0,
          loaderColor: Color.fromARGB(255, 255, 255, 255),
        ),
        Center(
          child: Icon(
            Icons.ac_unit_sharp,
            size: 100.0,
            color: Colors.white,
          ),
        )
      ]),
    );
  }
}
