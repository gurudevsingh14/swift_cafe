import 'package:flutter/material.dart';
import 'package:swift_cafe/constants/device_size.dart';

class BottomFloatingBar extends StatefulWidget {
  bool? isChecked;
  @override
  State<BottomFloatingBar> createState() => _BottomFloatingBarState();
}

class _BottomFloatingBarState extends State<BottomFloatingBar> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      color: Colors.black.withOpacity(0.8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10)
      ),
      child: Container(
        height: 60,
        width: displayWidth(context) * 0.8,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
                colors: [Colors.black26, Colors.white12],
                stops: [0.5,1]
            )),
        child: Row(
          children: [
            Checkbox(
              activeColor: Colors.green,
              side: BorderSide(color: Colors.white,width: 0.2),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
              value: widget.isChecked??false, onChanged: (value) {
              setState(() {
                widget.isChecked=value;
              });
            },),
            Text("High Priority",style: TextStyle(fontSize: 16,color: Colors.white70,fontWeight: FontWeight.w200),),
            Expanded(child: SizedBox()),
            Container(
              width: displayWidth(context)*0.3,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                gradient: LinearGradient(colors: [Colors.green,Colors.green.shade400])
              ),
              child: ElevatedButton(onPressed: () {},
                  style: ButtonStyle(elevation:MaterialStatePropertyAll(0),backgroundColor: MaterialStatePropertyAll(Colors.transparent)),
                  child: Text("Submit")),
            ),
            SizedBox(width: 14,),
          ],
        ),
      ),
    );
  }
}
