import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nutrifit/pages/foodcalender/loggedview.dart';


class FoodLogController extends GetxController{
  RxInt checked = 0.obs;
  PageController pageViewController = PageController();
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
        return ShowLoggedMeals(title: "Breakfast");
      case 1:
        return ShowLoggedMeals(title: "Launch");
      case 2:
        return ShowLoggedMeals(title: "Dinner");
      case 3:
        return ShowLoggedMeals(title: "Snack");
    }
    return Container();
  }

}