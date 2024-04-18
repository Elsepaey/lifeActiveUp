import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nutrifit/pages/mealLogDetails/mealssectionpages/searchformeal.dart';

class MealDetailsController extends GetxController{
  RxInt checked = 0.obs;
  int currentPageIndex = 0;
  void changeViewIndex()
  {
    currentPageIndex=checked.value;
    update();
  }
  Widget buildMealsContainer()
  {
    switch (currentPageIndex){
      case 0:
        return SearchForMeal();
      case 1:
        return Container();
      case 2:
        return Container();

    }
    return Container();
  }
}