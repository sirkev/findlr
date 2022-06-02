import 'package:findlr/controllers/popular_product_controller.dart';
import 'package:findlr/data/api/api_client.dart';
import 'package:findlr/data/repository/popular_products_repo.dart';
import 'package:get/get.dart';

Future<void> init()async {
  //api client
  Get.lazyPut(()=>ApiClient(appBaseUrl: "https://www.dbtech.com"));
  //repo
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));
  //controllers
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
}