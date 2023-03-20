import 'package:echo_vision/components/BaseScreen.dart';
import 'package:echo_vision/components/camera.dart';
import 'package:echo_vision/screens/camera_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BaseScreen(
          title: "Tell us your Email address",
          hintText: "Full Name",
          child: BaseScreen(
            title: 'Please tell us your password',
            hintText: 'Email',
            child: Home(),
          ),
        ),
      ),
    );
  }
}
