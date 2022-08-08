// ignore_for_file: prefer_const_constructors

import 'package:dicoding_project/controller/popular_product_controller.dart';
import 'package:dicoding_project/controller/recommend_product_controller.dart';
import 'package:dicoding_project/routes/app_routes.dart';
import 'package:dicoding_project/views/Home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Helper/dependencies.dart' as dep;

// step 6 add dependencies init
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.iniit();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.find<PopularProductController>().getPopularProductList();
    Get.find<RecommendedProductController>().getRecommendedProductList();
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: HomePage(),
      initialRoute: AppRoutes.initial,
      getPages: AppRoutes.routes,
    );
  }
}
