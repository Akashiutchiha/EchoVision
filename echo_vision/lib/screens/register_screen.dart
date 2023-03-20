import 'package:echo_vision/components/BaseScreen.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BaseScreen(title: "Register"),
      ),
    );
  }
}
