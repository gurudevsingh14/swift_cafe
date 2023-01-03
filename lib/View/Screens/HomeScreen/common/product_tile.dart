import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:swift_cafe/constants/device_size.dart';

class ProductTile extends StatelessWidget {
  const ProductTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      color: Colors.transparent,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.white,width: 0.2),
        borderRadius: BorderRadius.circular(8),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
          child: Container(
            width: 205,
            height: 160,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.5)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Latte",style: TextStyle(color: Colors.grey.shade400,fontSize: 20),),
                    SizedBox(height: 10,),
                    Text("4.9 ⭐  (458)"),
                    SizedBox(height: 5,),
                    SizedBox(width: displayWidth(context)*0.5,
                      child: Text(maxLines: 4,overflow: TextOverflow.ellipsis,
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. ",
                      style: TextStyle(color: Colors.grey.shade500),),
                    )
                  ],
                ),
                SizedBox(
                  height: 140,
                  child: Stack(
                    children: [
                      Card(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                          child: Container(
                            height: displayWidth(context)*0.25,
                            width: displayWidth(context)*0.25,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(image: AssetImage("assets/images/latte_cup.jpg"),fit: BoxFit.cover)
                            ),
                          )
                      ),
                      Positioned(
                        bottom: -5,
                        right: displayWidth(context)*0.25/4,
                        child: MaterialButton(onPressed: () {},
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                          padding: EdgeInsets.zero,
                          height: 30,
                          minWidth: 60,
                          color: Colors.green,
                          child: Text("ADD",style: TextStyle(color: Colors.white70),),
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
          ),
        ),
      ),
    );
  }
}
