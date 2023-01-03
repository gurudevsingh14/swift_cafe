import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:swift_cafe/constants/device_size.dart';

class ChoiceTile extends StatefulWidget {
  String? text;
  bool? isSelected;
  ChoiceTile({this.text, this.isSelected});

  @override
  State<ChoiceTile> createState() => _ChoiceTileState();
}

class _ChoiceTileState extends State<ChoiceTile> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        FlutterSwitch(
          width: 30,
          height: 15,
          inactiveColor: Colors.grey,
          toggleSize: 14,
          padding: 1,
          activeColor: Colors.green,
          value: widget.isSelected??false, onToggle: (value) {
          setState(() {
            widget.isSelected=value;
          });
        },),
        SizedBox(
            width: displayWidth(context) * 0.3, child: Text(widget.text ?? "",style: TextStyle(fontSize: 14,color: Colors.white70),))
      ],
    );
  }
}
