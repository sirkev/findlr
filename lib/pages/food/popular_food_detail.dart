import 'package:findlr/utils/dimensions.dart';
import 'package:findlr/widgets/app_column.dart';
import 'package:flutter/material.dart';

import '../../utils/colors.dart';
import '../../widgets/app_icon.dart';
import '../../widgets/big_text.dart';
import '../../widgets/expandable_text_widget.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [

          //background image
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: Dimensions.popularFoodImgSize,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/image/food0.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),

          //icon widget
          Positioned(
              top: Dimensions.height45,
              left: Dimensions.width20,
              right: Dimensions.width20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppIcon(
                    icon: Icons.arrow_back_ios,
                  ),
                  AppIcon(
                    icon: Icons.shopping_cart_outlined,
                  ),
                ],
              )),

          //introduction of food
          Positioned(
            left: 0,
            right: 0,
            top: Dimensions.popularFoodImgSize,
            bottom: 0,
            child: Container(
              padding: EdgeInsets.only(
                  left: Dimensions.width20,
                  right: Dimensions.width20,
                  top: Dimensions.height20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(Dimensions.radius20),
                  topLeft: Radius.circular(Dimensions.radius20),
                ),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const AppColumn(
                    text: "Salma Fried Chicken",
                  ),
                  SizedBox(
                    height: Dimensions.height20,
                  ),
                  const BigText(text: "Introduce"),
                  SizedBox(
                    height: Dimensions.height20,
                  ),
              const Expanded(child: SingleChildScrollView(
                child: ExpandableTextWidget(
                  text: "BirBiryani is a mixed rice dish originating among the Muslims of the IndiaBiryani is a mixed rice dish originating among the Muslims of the IndiaBiryani is a mixed rice dish originating among the Muslims of the IndiaBiryani is a mixed rice dish originating among the Muslims of the IndiaBiryani is a mixed rice dish originating among the Muslims of the IndiaBiryani is a mixed rice dish originating among the Muslims of the IndiaBiryani is a mixed rice dish originating among the Muslims of the IndiaBiryani is a mixed rice dish originating among the Muslims of the IndiaBiryani is a mixed rice dish originating among the Muslims of the IndiaBiryani is a mixed rice dish originating among the Muslims of the IndiaBiryani is a mixed rice dish originating among the Muslims of the IndiaBiryani is a mixed rice dish originating among the Muslims of the IndiaBiryani is a mixed rice dish originating among the Muslims of the IndiaBiryani is a mixed rice dish originating among the Muslims of the IndiaBiryani is a mixed rice dish originating among the Muslims of the IndiaBiryani is a mixed rice dish originating among the Muslims of the IndiaBiryani is a mixed rice dish originating among the Muslims of the IndiaBiryani is a mixed rice dish originating among the Muslims of the IndiaBiryani is a mixed rice dish originating among the Muslims of the IndiaBiryani is a mixed rice dish originating among the Muslims of the IndiaBiryani is a mixed rice dish originating among the Muslims of the IndiaBiryani is a mixed rice dish originating among the Muslims of the IndiaBiryani is a mixed rice dish originating among the Muslims of the IndiaBiryani is a mixed rice dish originating among the Muslims of the IndiaBiryani is a mixed rice dish originating among the Muslims of the IndiaBiryani is a mixed rice dish originating among the Muslims of the IndiaBiryani is a mixed rice dish originating among the Muslims of the IndiaBiryani is a mixed rice dish originating among the Muslims of the IndiaBiryani is a mixed rice dish originating among the Muslims of the Indiaoes",),
              ),
              ),
                ],
              ),
            ),
          ),

          //expandable text widget

        ],
      ),
      bottomNavigationBar: Container(
        height: Dimensions.bottomHeightBar,
        padding: EdgeInsets.only(
          top: Dimensions.height30,
          left: Dimensions.width20,
          right: Dimensions.width20,
        ),
        decoration: BoxDecoration(
          color: AppColors.buttonBackgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Dimensions.radius20 * 2),
            topRight: Radius.circular(Dimensions.radius20 * 2),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.all(Dimensions.height20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.remove,
                    color: AppColors.signColor,
                  ),
                  SizedBox(
                    width: Dimensions.width5,
                  ),
                  const BigText(text: "0"),
                  SizedBox(
                    width: Dimensions.width5,
                  ),
                  Icon(
                    Icons.add,
                    color: AppColors.signColor,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(Dimensions.height20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius20),
                  color: AppColors.mainColor),
              child: const BigText(
                text: "ksh 100 | Add to cart",
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
