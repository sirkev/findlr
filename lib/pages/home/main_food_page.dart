// ignore_for_file: avoid_unnecessary_containers

import 'package:findlr/utils/dimensions.dart';
import 'package:flutter/material.dart';
import '../../widgets/small_text.dart';
import '/utils/colors.dart';
import '/widgets/big_text.dart';
import 'food_page_body.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    // print(
    //   "current screen height is :" +
    //       MediaQuery.of(context).size.height.toString(),
    // );
    return Scaffold(
      //AppBar Area
      body: Column(
        children: [
          //>>>>>>>>>>>>FIRST CONTAINER(HOUSES THE APP BAR)<<<<<<<<<<<<<<<<<<<<<
          Container(
            child: Container(
              margin: EdgeInsets.only(top: Dimensions.height45, bottom: Dimensions.height15),
              padding: EdgeInsets.only(right: Dimensions.width20, left: Dimensions.width20),
              //>>>>>>>APP BAR ROW AREA<<<<<<<<<<<<<
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      BigText(
                        text: "Kiambu",
                        color: AppColors.mainColor,
                      ),
                      Row(
                        children: [
                          SmallText(
                            text: "juja",
                            color: Colors.black54,
                          ),
                          const Icon(Icons.arrow_drop_down_rounded),
                        ],
                      ),
                    ],
                  ),
                  Center(
                    child: Container(
                      width: Dimensions.width45,
                      height: Dimensions.width45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(Dimensions.radius15),
                          color: AppColors.mainColor),
                      child: Icon(
                        Icons.search,
                        color: Colors.white,
                        size: Dimensions.iconSize24,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          //>>>>>>>>>>>>>>>>>>>>>>FOOD PAGE BUILDER(body)<<<<<<<<<<<<<<<<<<<<<<<<
           Expanded(child: SingleChildScrollView(child:FoodPageBody())),
        ],
      ),
    );
  }
}
