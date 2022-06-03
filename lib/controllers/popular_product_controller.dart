import 'package:findlr/data/repository/popular_products_repo.dart';
import 'package:findlr/models/product_models.dart';
import 'package:get/get.dart';

class PopularProductController extends GetxController{
  final PopularProductRepo popularProductRepo;

  PopularProductController({required this.popularProductRepo});
  List<dynamic> _popularProductList=[];
  List<dynamic> get PopularProductList => _popularProductList;

  Future<void> getPopularProductList() async{
   Response response = await popularProductRepo.getPopularProductList();
   if(response.statusCode==200){
     _popularProductList=[];
     _popularProductList.addAll(ProductModel.fromJson(response.body).products);
     update();
   }
  }
}