import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:swift_cafe/constants/device_size.dart';

class CustomBottomNavigatonBar extends StatefulWidget {
  const CustomBottomNavigatonBar({Key? key}) : super(key: key);

  @override
  State<CustomBottomNavigatonBar> createState() => _CustomBottomNavigatonBarState();
}

class _CustomBottomNavigatonBarState extends State<CustomBottomNavigatonBar> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaY: 8,sigmaX: 8),
        child: Container(
          width: displayWidth(context)*0.9,
          height: 70,
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.5)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.home_outlined,color: Colors.white70,size: 28,),
              Icon(Icons.person_outline,color: Colors.white70,size: 28),
              Icon(Icons.account_balance_wallet_outlined,color: Colors.white70,size: 28),
              Icon(Icons.shopping_basket_outlined,color: Colors.white70,size: 28),
              Icon(Icons.message_outlined,color: Colors.white70,size: 28),
            ],
          ),
        ),
      ),
    );
  }
}
