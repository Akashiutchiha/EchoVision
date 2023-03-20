import 'package:flutter/material.dart';

class TextButtonStyle extends StatelessWidget {
  TextButtonStyle({
    required this.text,
    required this.color,
    required this.child,
  });
  final String text;
  final Color color;
  final Widget child;

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
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => child,
            ),
          );
        },
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
