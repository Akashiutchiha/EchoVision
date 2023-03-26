// ignore: avoid_web_libraries_in_flutter
import 'dart:io';
import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  MyTextField({required this.title, this.onPressed});

  final String title;
  Function(String)? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onPressed,
      style: TextStyle(
        color: Colors.black,
        fontSize: 20.0,
      ),
      decoration: InputDecoration(
        hintText: '$title',
        hintStyle: TextStyle(
          color: Color(0xFFbfc9f2),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            width: 2.5,
            color: Color(0xFFbfc9f2),
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
      ),
    );
  }
}
