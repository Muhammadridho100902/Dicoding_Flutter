import 'package:get/get.dart';
import 'package:dicoding_project/data/api/api_client.dart';
import 'package:dicoding_project/utilities/app_constant.dart';

class RecommendedProductRepo extends GetxService {
  final ApiClient apiClient;
 RecommendedProductRepo({required this.apiClient});

  Future<Response>getRecommendedProductList()async{
    return await apiClient.getData(AppConstants.RECOMMENDED_PRODUCT_URI);
  }
}