import 'package:echo_vision/screens/RegisterScreens/register_screen3.dart';
import 'package:provider/provider.dart';
import '../../Logic/email_password_provider.dart';
import 'package:flutter/material.dart';
import '../../components/constants.dart';
import '../../components/text_button_style.dart';
import '../../components/my_text_field.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Register2 extends StatelessWidget {
  final _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    var emailAndpassword =
        Provider.of<EmailAndPassword>(context, listen: false);
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
                'Tell us your Email Address',
                style: kConstantStyle,
              ),
              const SizedBox(
                height: 20.0,
              ),
              MyTextField(
                title: "Email Address",
                onPressed: (value) {
                  emailAndpassword.email = value;
                },
              ),
              Expanded(
                child: Center(
                  child: Container(
                    child: CircleAvatar(
                      backgroundColor: kPrimaryColor,
                      radius: 70.0,
                      child: Image(
                        image: AssetImage("assets/images/Frame 7.png"),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: 50,
                width: double.infinity,
                child: TextButtonStyle(
                  text: "Confirm",
                  color: kPrimaryColor,
                  Firebase_Func: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Register3();
                    }));
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
