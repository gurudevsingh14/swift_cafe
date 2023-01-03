import 'package:flutter/material.dart';

class ChoiceButton extends StatelessWidget {
  ChoiceButton({this.text,this.isSelected});
  String? text;
  bool? isSelected;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      margin: EdgeInsets.symmetric(horizontal: 8),
      child: MaterialButton(onPressed: () {},
        color: isSelected??false?Colors.green:Colors.grey.shade400,
        minWidth: 0,
        padding: EdgeInsets.symmetric(horizontal: 10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5)
        ),
        child: Text(text??"",style: TextStyle(color: isSelected??false?Colors.white70:Colors.black38),),
      ),
    );
  }
}
