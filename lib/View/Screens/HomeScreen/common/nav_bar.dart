import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:swift_cafe/View/Screens/HomeScreen/common/search_bar.dart';
import 'package:swift_cafe/constants/device_size.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
        child: Container(
          // height: displayHeight(context)*0.3,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Color(0xFF414146).withOpacity(0.5),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Text("👋",style: TextStyle(fontSize:30),),
                  SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("02/01/2023",style: TextStyle(color: Colors.grey.shade400),),
                      SizedBox(height: 4,),
                      Text("Gurudev Singh",style: TextStyle(color: Colors.grey.shade400,fontSize: 18),),
                    ],
                  ),
                  Expanded(child: SizedBox(),),
                  Container(
                    width: 40,
                    height: 40,
                    padding: EdgeInsets.zero,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: MaterialButton(onPressed: () { },
                        padding: EdgeInsets.zero,
                        color: Colors.grey,
                    child: Icon(Icons.shopping_basket_outlined,)),
                  ),
                  SizedBox(width: 12,),
                  CircleAvatar(backgroundImage: AssetImage('assets/images/login_bg.jpg'),radius: 23,)
                ],
              ),
              SizedBox(height: displayHeight(context)*0.04,),
              SearchBox()
            ],
          ),
        ),
      ),
    );
  }
}
