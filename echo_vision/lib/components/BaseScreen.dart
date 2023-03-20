import 'package:echo_vision/components/text_button_style.dart';
import 'package:echo_vision/screens/home.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

class BaseScreen extends StatelessWidget {
  BaseScreen({required this.title});

  final String title;
  @override
  Widget build(BuildContext context) {
    String valueEntered;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          margin: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundColor: kPrimaryColor,
                radius: 30.0,
                child: IconButton(
                  color: Colors.black,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    size: 30.0,
                  ),
                ),
              ),
              const SizedBox(
                height: 40.0,
              ),
              Text(
                '$title',
                style: kConstantStyle,
              ),
              const SizedBox(
                height: 20.0,
              ),
              TextField(
                onChanged: (value) {
                  valueEntered = value;
                },
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                ),
                decoration: InputDecoration(
                  hintText: 'Full Name',
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
              ),
              Expanded(
                child: Center(
                  child: Container(
                    child: CircleAvatar(
                      backgroundColor: kPrimaryColor,
                      radius: 70.0,
                      child: Image(
                        image: AssetImage("images/Frame 7.png"),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: 50,
                width: double.infinity,
                child: TextButtonStyle(
                    text: "Confirm", color: kPrimaryColor, child: Home()),
              )
            ],
          ),
        ),
      ),
    );
  }
}
