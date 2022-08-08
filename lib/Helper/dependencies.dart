import 'package:get/get.dart';
import 'package:dicoding_project/controller/popular_product_controller.dart';
import 'package:dicoding_project/controller/recommend_product_controller.dart';
import 'package:dicoding_project/data/Repository/popular_product_repo.dart';
import 'package:dicoding_project/data/Repository/recommend_product_repo.dart';
import 'package:dicoding_project/data/api/api_client.dart';
import 'package:dicoding_project/utilities/app_constant.dart';


// step 1 create init
Future<void> iniit()async{

  // step 5 create a lazy put for api client, repo, controller
  Get.lazyPut(() => ApiClient(appBaseUrl:  AppConstants.BASE_URL));

  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));
  Get.lazyPut(() => RecommendedProductRepo(apiClient: Get.find()));

  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
  Get.lazyPut(() => RecommendedProductController(recommendedProductRepo: Get.find()));

}