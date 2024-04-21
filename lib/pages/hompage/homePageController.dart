import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  List<dynamic> sliderImages = [
    const AssetImage("assets/sliderImages/download.jpg"),
    const AssetImage("assets/sliderImages/images (1).jpg"),
  ];
  int todayCalories = 0;
  int todayProtein = 0;
  int todayFats = 0;
  int todayCarbs = 0;


}

