import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nutrifit/databases/database.dart';
import 'package:nutrifit/model/user%20controller.dart';
import 'package:nutrifit/pages/foodcalender/loggedview.dart';

class FoodLogController extends GetxController {
  DateTime date = DateTime.now();

  RxInt checked = 0.obs;
  int currentPageIndex = 0;
AppUserController userController=Get.find();
  void changeViewIndex() {
    currentPageIndex = checked.value;
    update();
  }

  Widget buildMealsContainer() {
    switch (currentPageIndex) {
      case 0:
        return ShowLoggedMeals(
          mealType: "Breakfast",
          checkedTime: date,
        );
      case 1:
        return ShowLoggedMeals(
          mealType: "Launch",
          checkedTime: date,
        );
      case 2:
        return ShowLoggedMeals(
          mealType: "Dinner",
          checkedTime: date,
        );
      case 3:
        return ShowLoggedMeals(
          mealType: "Snack",
          checkedTime: date,
        );
    }
    update();
    return Container();
  }

  getLoggedMeals(String mealType,) {

    return DB.getLoggedMeals(mealType, date);
  }
}
