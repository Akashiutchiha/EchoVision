import 'package:echo_vision/components/BaseScreen.dart';
import 'package:flutter/material.dart';

import 'camera_screen.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BaseScreen(
          title: "Tell us your full name",
          hintText: "Full Name",
          child: BaseScreen(
            title: 'Please tell us your e-mail address',
            hintText: 'Email',
            child: BaseScreen(
                title: "Please tell us your password",
                child: Home(),
                hintText: "Password"),
          ),
        ),
      ),
    );
  }
}
