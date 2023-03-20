import 'package:echo_vision/components/camera.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF131433),
        body: Stack(
          children: [
            CameraApp(),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: EdgeInsets.all(8),
                  child: ListTile(
                    trailing: Image.asset(
                      'images/Frame 8.png',
                      height: 50,
                    ),
                  ),
                  height: 85,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Color(0xFF131433),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Center(
                  child: Container(
                    margin: EdgeInsets.all(25),
                    child: Image(
                      image: AssetImage('images/Frame 9.png'),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
