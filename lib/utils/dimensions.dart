import 'package:get/get.dart';
//dynamic dimenisions

class Dimensions{
  static double screenHeight = Get.context!.height;
  static double screenWith = Get.context!.width;
//containers
  static double pageView = screenHeight/2.64;
  static double pageViewerContainer = screenHeight/3.84;
  static double pageTextContainer = screenHeight/7.03;

//padding & margins/ heights & widths
  static double height5= screenHeight/168.8;
  static double height10= screenHeight/84.4;
  static double height15= screenHeight/56.27;
  static double height20= screenHeight/42.2;
  static double height30= screenHeight/42.2;
  static double height45= screenHeight/18.76;

  static double width5= screenHeight/168.8;
  static double width10= screenHeight/84.4;
  static double width15= screenHeight/56.27;
  static double width20= screenHeight/42.2;
  static double width30= screenHeight/28.13;
  static double width45= screenHeight/18.76;

//font size
  static double font20 = screenHeight/42.2;
  static double font26 = screenHeight/32.46;

  static double font16 = screenHeight/52.75;

//radius
  static double radius15 = screenHeight/56.27;
  static double radius20 = screenHeight/42.2;
  static double radius30 = screenHeight/28.13;

  //icon Size
  static double iconSize24 = screenHeight/35.17;
  static double iconSize16 = screenHeight/52.75;

  //list view size
  static double listViewImgSize = screenWith/3.25;
  static double listViewTextContSize = screenWith/3.9;

  //popular food
  static double popularFoodImgSize= screenHeight/2.41;

  //bottom height
  static double bottomHeightBar =screenHeight/7.03;

}