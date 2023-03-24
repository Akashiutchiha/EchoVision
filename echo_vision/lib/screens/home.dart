import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Echo Vision'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: Text(
              'Welcome Back Fritz',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.w400),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Image(image: AssetImage("images/Frame 9.png"))
        ],
      ),
    );
  }
}
