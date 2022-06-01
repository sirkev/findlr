import 'package:flutter/material.dart';

import '../../utils/colors.dart';
import '../../utils/dimensions.dart';
import '../../widgets/app_icon.dart';
import '../../widgets/big_text.dart';
import '../../widgets/expandable_text_widget.dart';

class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 70,
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(Dimensions.radius20),
                        topRight: Radius.circular(Dimensions.radius20)),
                  ),
                  width: double.maxFinite,
                  padding: EdgeInsets.only(
                      bottom: Dimensions.height10, top: Dimensions.height5),
                  //color: Colors.white,
                  child: Center(
                    child: BigText(
                        size: Dimensions.font26, text: "Salma Fried Chicken"),
                  ),
                ),
              ),
            ),
            pinned: true,
            expandedHeight: 300,
            backgroundColor: AppColors.yellowColor,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/image/food0.png",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                  icon: Icons.clear,
                ),
                AppIcon(
                  icon: Icons.shopping_cart_outlined,
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                      left: Dimensions.width20, right: Dimensions.width20),
                  child: ExpandableTextWidget(
                    text:
                        'Biryani is a mixed rice dish originating among the Biryani is a mixed rice dish originating among the Biryani is a mixed rice dish originating among the Biryani is a mixed rice dish originating among the Biryani is a mixed rice dish originating among the Biryani is a mixed rice dish originating among the Biryani is a mixed rice dish originating among the Biryani is a mixed rice dish originating among the Biryani is a mixed rice dish originating among the Biryani is a mixed rice dish originating among the Biryani is a mixed rice dish originating among the Biryani is a mixed rice dish originating among the Biryani is a mixed rice dish originating among the Biryani is a mixed rice dish originating among the Biryani is a mixed rice dish originating among the Biryani is a mixed rice dish originating among the Biryani is a mixed rice dish originating among the Biryani is a mixed rice dish originating among the Biryani is a mixed rice dish originating among the Biryani is a mixed rice dish originating among the Biryani is a mixed rice dish originating among the Biryani is a mixed rice dish originating among the Biryani is a mixed rice dish originating among the Biryani is a mixed rice dish originating among the Biryani is a mixed rice dish originating among the Biryani is a mixed rice dish originating among the Biryani is a mixed rice dish originating among the Biryani is a mixed rice dish originating among the Biryani is a mixed rice dish originating among the Biryani is a mixed rice dish originating among the Biryani is a mixed rice dish originating among the Biryani is a mixed rice dish originating among the ',
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar:
      Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: Dimensions.width20 * 2.5,
              right: Dimensions.width20 * 2.5,
              top: Dimensions.height10,
              bottom: Dimensions.height10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                  iconSize: Dimensions.iconSize24,
                  icon: Icons.remove,
                  backgroudColor: AppColors.mainColor,
                  iconColor: Colors.white,
                ),
                BigText(text: "ksh. 120 "+" X "+" 0 ",color: AppColors.mainBlackColor,size: Dimensions.font26,),
                AppIcon(
                  iconSize: Dimensions.iconSize24,
                  icon: Icons.add,
                  backgroudColor: AppColors.mainColor,
                  iconColor: Colors.white,
                ),

              ],
            ),
          ),
          Container(
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
                  child: Icon(Icons.favorite,color: AppColors.mainColor,),
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
        ],
      ),
    );
  }
}
