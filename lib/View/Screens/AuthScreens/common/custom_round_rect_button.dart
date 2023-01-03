import 'package:flutter/material.dart';

import '../../../../constants/device_size.dart';

class CustomRoundRectButton extends StatelessWidget {
  final String text;
  double? radius;
  double? height;
  double? width;
  Color? color;
  double? fontSize;
  VoidCallback? callBack;
  double? elevation;
  LinearGradient? linearGradient;
  CustomRoundRectButton({Key? key,
    required this.text,required this.height,this.width,this.fontSize,this.callBack,this.radius=10,this.linearGradient,this.elevation});
  VoidCallback nothing = (){};
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width??displayWidth(context),
      child: Card(
        color: Colors.transparent,
        elevation: elevation??0,
        shape: RoundedRectangleBorder(
          side: linearGradient==null?BorderSide(color: Colors.white):BorderSide.none,
          borderRadius: BorderRadius.circular(radius!),
        ),
        child: Container(
          height: height!,
          margin: EdgeInsets.zero,
          padding: EdgeInsets.zero,
          decoration: BoxDecoration(
            color: color==null&&linearGradient==null?Colors.transparent:color,
            borderRadius: BorderRadius.circular(radius!),
            gradient: linearGradient,
          ),
          child: MaterialButton(
              elevation: 0,
              onPressed: callBack??nothing,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(radius!),
              ),
              height: height!,
              color: Colors.transparent,
              //padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
              child: Text(
                text,
                style: TextStyle(color: Colors.white,fontSize: fontSize),
              )),
        ),
      ),
    );
  }
}