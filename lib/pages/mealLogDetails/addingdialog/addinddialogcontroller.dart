import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nutrifit/core/dailystatics.dart';
import 'package:nutrifit/pages/foodcalender/mealmodel.dart';
import 'package:nutrifit/pages/mealLogDetails/mealdetailscontroller.dart';

import '../../../core/progress_dialog_utils.dart';
import '../../../databases/database.dart';
import '../../meals/explore_meals/mealscontroller.dart';

class AddingDialogController extends GetxController {
  final MealsController controller = Get.find();
  final MealDetailsController logController = Get.put(MealDetailsController());
  final DailyStatics staticsController=Get.put(DailyStatics());
  int index = 0;
  String mealName = '';
  //String mealType = '';
  int quantity = 100;
  double calories = 70;
  double protein = 9;
  double fat = 0;
  double carbs = 8;
  double sugar = 7;
  void initialValues(int index) {
    quantity = 100;
    mealName = controller.meals[index][1];
    calories = getNumbers(controller.meals[index][3]);
    protein = getNumbers(controller.meals[index][38]);
    carbs = getNumbers(controller.meals[index][58]);
    sugar = getNumbers(controller.meals[index][60]);
    fat = getNumbers(controller.meals[index][4]);
  }

  void changeValues(int value) {
    if (value == quantity) {

    }
    else {
      quantity = value;
    }
    calories = calories * (value / 100);
    protein = protein * (value / 100);
    fat = fat * (value / 100);
    carbs = carbs * (value / 100);
    sugar = sugar * (value / 100);
    update();
  }

  Future<void> submit(
      BuildContext context, String mealType, DateTime date) async {

    ProgressDialogUtils.showLoading(context, "Loading...");

    Meal meal = Meal(
        mealName: mealName,
        mealType: mealType,
        quantity: quantity,
        calories: calories,
        protein: protein,
        fat: fat,
        carbs: carbs,
        sugar: sugar,
        date: Timestamp.now());

    var addedItem = await DB.addMeal(meal, date);
    if (addedItem != null) {
      ProgressDialogUtils.hideLoading(context);
      logController.addToChoosed(meal.mealName);
      Get.back();
      staticsController.updateStatics(calories,protein,fat,carbs);
    } else {
      ProgressDialogUtils.showMessage(
          context: context,
          message: "Not Inserted",
          posAction: () => {Navigator.pop(context)},
          posActionText: "ok");
    }
  }

  @override
  // TODO: implement initialized
  @override
  void onInit() {
    // TODO: implement onInit

    super.onInit();
  }

  double getNumbers(String measure) {
    // Extracting only numbers using regular expression
    RegExp regex = RegExp(r'\d+(\.\d+)?');
    Iterable<Match> matches = regex.allMatches(measure);

    // Getting the first match (assuming there is only one)
    Match match = matches.first;
    String matched = match.group(0)!;
    // Converting the matched numbers to a double
    double numbersOnly = double.parse(matched);
    return numbersOnly;
  }
}
