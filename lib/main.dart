import 'package:flutter/material.dart';
import 'package:swift_cafe/View/Screens/AuthScreens/LoginScreen/login_screen.dart';
import 'package:swift_cafe/View/Screens/HomeScreen/home_screen.dart';
import 'package:swift_cafe/View/Screens/ProductScreen/product_screen.dart';

void main() {
  runApp(const SwiftCafe());
}

class SwiftCafe extends StatelessWidget {
  const SwiftCafe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/HomeScreen" : (context) => HomeScreen(),
        "/ProductScreen": (context) => ProductScreen(),
      },
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
