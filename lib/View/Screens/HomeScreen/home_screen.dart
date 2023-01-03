import 'package:flutter/material.dart';
import 'package:swift_cafe/View/Screens/HomeScreen/common/bottom_navigation_bar.dart';
import 'package:swift_cafe/View/Screens/HomeScreen/common/custom_card.dart';
import 'package:swift_cafe/View/Screens/HomeScreen/common/nav_bar.dart';
import 'package:swift_cafe/View/Screens/HomeScreen/common/product_tile.dart';
import 'package:swift_cafe/constants/device_size.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/images/home_bg.webp'),fit: BoxFit.cover),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              NavBar(),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("Most Popular Baeverages",style: TextStyle(color: Colors.grey.shade300,fontSize: 16,fontWeight: FontWeight.bold),),
              ),
              Container(
                height: 240,
                decoration: BoxDecoration(color: Colors.transparent),
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => InkWell(child: CustomCard(),onTap: () =>Navigator.pushNamed(context, '/ProductScreen'),),
                  separatorBuilder: (context, index) => SizedBox(width: 10,),
                  itemCount: 5,
                ),
              ),
              SizedBox(height: 20,),
              Expanded(
                child: Container(
                  width: displayWidth(context),
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.black12.withOpacity(0.5)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Get it instantly",style: TextStyle(color: Colors.white70,fontSize: 18),),
                      SizedBox(height: 10,),
                      Expanded(
                        child: ListView.separated(
                          itemBuilder: (context, index) => InkWell(onTap: () => Navigator.pushNamed(context, "/ProductScreen"),child: ProductTile()),
                          itemCount: 5,
                          separatorBuilder: (context, index) => SizedBox(height: 10,),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          )
        ),
        floatingActionButton: CustomBottomNavigatonBar(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
