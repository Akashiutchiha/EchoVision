import 'package:flutter/material.dart';

class TextButtonStyle extends StatelessWidget {
  TextButtonStyle(
      {required this.text, required this.color, this.Firebase_Func});
  final String text;
  final Color color;
  VoidCallback? Firebase_Func;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 200,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextButton(
        onPressed: Firebase_Func,
        child: Text(
          '$text',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
