import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) {},
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
