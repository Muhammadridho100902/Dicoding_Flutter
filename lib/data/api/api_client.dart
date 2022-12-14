// ignore_for_file: unused_field, prefer_const_constructors

import 'package:get/get.dart';
import 'package:dicoding_project/utilities/app_constant.dart';


// step 2 create api client
class ApiClient extends GetConnect implements GetxService {
  late String token;
  final String appBaseUrl;
  
  late Map<String, String> _mainHeaders;

  ApiClient({required this.appBaseUrl}) {
    baseUrl = appBaseUrl;
    timeout = Duration(seconds: 30);
    token = AppConstants.TOKEN;
    _mainHeaders = {
      'Content-type': 'application/json; charset=UTF-8',
      'Authorization': 'Bearer $token',
    };
  }
  Future<Response> getData(String uri,)async{
    try {
      Response response =  await get(uri);
      return response;
    } catch (e) {
      return Response(statusCode: 1, statusText: e.toString());
    }
  }
}
