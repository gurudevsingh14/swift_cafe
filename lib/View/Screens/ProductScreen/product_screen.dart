import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:swift_cafe/View/Screens/ProductScreen/common/bottom_floating_bar.dart';
import 'package:swift_cafe/View/Screens/ProductScreen/common/choice_button.dart';
import 'package:swift_cafe/View/Screens/ProductScreen/common/choice_tile.dart';

import '../../../constants/constant.dart';
import '../../../constants/device_size.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Positioned(
                bottom: 0,
                child: Image.asset("assets/images/login_bg.jpg",
                    fit: BoxFit.contain, width: displayWidth(context))),
            Positioned(
                top: 0,
                child: Image.asset(
                  "assets/images/latte_cup.jpg",
                  width: displayWidth(context),
                )),
            Positioned(
                bottom: 0,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20)),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
                    child: Container(
                      width: displayWidth(context),
                      height: displayHeight(context) * 0.63,
                      decoration: BoxDecoration(
                          color: Color(0xFF414146).withOpacity(0.7),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              topLeft: Radius.circular(20)),
                          border: Border.all(color: Colors.white, width: 0.2)),
                      child: Padding(
                        padding: EdgeInsets.all(25),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Latte",
                                        style: TextStyle(
                                            color: Colors.grey.shade400,
                                            fontSize: 20),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text("4.9 ⭐  (458)",
                                          style: TextStyle(
                                            color: Colors.grey.shade400,
                                          )),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      SizedBox(
                                        width: displayWidth(context) * 0.8,
                                        child: Text(
                                          maxLines: 10,
                                          overflow: TextOverflow.ellipsis,
                                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ",
                                          style: TextStyle(
                                              color: Colors.grey.shade500),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 18,
                                      ),
                                      Text(
                                        "Choice of Cup Filling",
                                        style: TextStyle(
                                            color: Colors.grey.shade400,
                                            fontSize: 16),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: [
                                          ChoiceButton(
                                            text: "Full",
                                            isSelected: true,
                                          ),
                                          ChoiceButton(text: "1/2 Full"),
                                          ChoiceButton(text: "3/4 Full"),
                                          ChoiceButton(text: "1/4 Full"),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Text(
                                        "Choice of Milk",
                                        style: TextStyle(
                                            color: Colors.grey.shade400,
                                            fontSize: 16),
                                      ),
                                      SizedBox(height: 10,),
                                      SizedBox(
                                        width: displayWidth(context) * 0.85,
                                        height: 150,
                                        child: GridView(
                                          gridDelegate:
                                              SliverGridDelegateWithFixedCrossAxisCount(
                                                mainAxisSpacing: 0,
                                                   childAspectRatio: 5,
                                                  crossAxisSpacing: 0,
                                                  crossAxisCount: 2),
                                          padding: EdgeInsets.zero,
                                          children: List.generate(milkList.length, (index) {
                                            return ChoiceTile(
                                              isSelected: false,
                                              text: milkList[index],
                                            );
                                          }),
                                        ),
                                      ),
                                      Text(
                                        "Choice of Sugar",
                                        style: TextStyle(
                                            color: Colors.grey.shade400,
                                            fontSize: 16),
                                      ),
                                      SizedBox(height: 10,),
                                      SizedBox(
                                        width: displayWidth(context) * 0.85,
                                        height: 150,
                                        child: GridView(
                                          gridDelegate:
                                          SliverGridDelegateWithFixedCrossAxisCount(
                                              mainAxisSpacing: 0,
                                              childAspectRatio: 5,
                                              crossAxisSpacing: 0,
                                              crossAxisCount: 2),
                                          padding: EdgeInsets.zero,
                                          children: List.generate(sugarList.length, (index) {
                                            return ChoiceTile(
                                              isSelected: false,
                                              text: sugarList[index],
                                            );
                                          }),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ))
          ],
        ),
        floatingActionButton: BottomFloatingBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
