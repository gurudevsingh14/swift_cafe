import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:swift_cafe/View/Screens/AuthScreens/common/custom_round_rect_button.dart';
import 'package:swift_cafe/View/Screens/AuthScreens/common/custom_text_field.dart';
import 'package:swift_cafe/constants/device_size.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/login_bg.jpg'),
              fit: BoxFit.cover),
        ),
        child: Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
              child: Container(
                height: displayHeight(context) * 0.8,
                width: displayWidth(context) * 0.9,
                decoration: BoxDecoration(
                    color: Color(0xFF414146).withOpacity(0.7),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.white, width: 0.2)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Swift",
                      style: TextStyle(fontSize: 35, color: Colors.white),
                    ),
                    Text(
                      "Cafe",
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    CustomTextField(
                      width: displayWidth(context) * 0.7,
                      hintText: "Username",
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    CustomTextField(
                      width: displayWidth(context) * 0.7,
                      hintText: "Password",
                    ),
                    SizedBox(
                      height: displayHeight(context) * 0.05,
                    ),
                    CustomRoundRectButton(
                      text: "Login",
                      height: 50,
                      width: displayWidth(context) * 0.6,
                      elevation: 7,
                      radius: 100,
                      linearGradient: LinearGradient(
                          colors: [Colors.brown, Colors.brown.shade300],
                          stops: [0.5, 1]),
                      callBack: () => Navigator.pushNamed(context, '/HomeScreen'),
                    ),
                    SizedBox(
                      height: displayHeight(context) * 0.04,
                    ),
                    CustomRoundRectButton(
                      text: "SignUp",
                      height: 50,
                      width: displayWidth(context) * 0.6,
                      radius: 100,
                      callBack: () => Navigator.pushNamed(context, '/HomeScreen'),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Privacy Policy",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
