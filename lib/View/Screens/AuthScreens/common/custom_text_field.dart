import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({this.width,this.hintText});
  double? width;
  String? hintText;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.white),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          border: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.teal)
          )
          )
        ),
      );
  }
}
