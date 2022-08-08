import 'package:get/get.dart';
import 'package:dicoding_project/data/api/api_client.dart';
import 'package:dicoding_project/utilities/app_constant.dart';


// step 3 create popular product repo
class PopularProductRepo extends GetxService {
  final ApiClient apiClient;
  PopularProductRepo({required this.apiClient});

  Future<Response>getPopularProductList()async{
    return await apiClient.getData(AppConstants.POPULAR_PRODUCT_URI);
  }
}