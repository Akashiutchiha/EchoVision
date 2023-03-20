import 'package:echo_vision/components/constants.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Echo Vision'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(
              child: Text('Welcome back Fritz', style: kConstantStyle),
            ),
            const SizedBox(
              height: 20,
            ),
            Image.asset("images/Frame 9.png"),
          ],
        ),
      ),
    );
  }
}
