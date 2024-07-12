import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../core/dailystatics.dart';
import '../../../../../core/progress_dialog_utils.dart';
import '../../../../../databases/database.dart';
import '../../../../foodcalender/mealmodel.dart';
import '../../../../mealLogDetails/mealdetailscontroller.dart';

class OutputController extends GetxController{
  final MealDetailsController logController = Get.put(MealDetailsController());
  final DailyStatics staticsController=Get.put(DailyStatics());
  RxString mealType="Breakfast".obs;
  RxString addedItem="".obs;
  Future<void> confirm(
      BuildContext context,String mealName,double calories ,
  double protein,
  double fat ,
  double carbs ,
  double sugar  )
  async {

    ProgressDialogUtils.showLoading(context, "Loading...");

    Meal meal = Meal(
        mealName: mealName,
        mealType: mealType.value,
        quantity: 0000,
        calories: calories,
        protein: protein,
        fat: fat,
        carbs: carbs,
        sugar: sugar,
        date: Timestamp.now());

    var addedItem = await DB.addMeal(meal, DateTime.now());
    if (addedItem != null) {
      addedItem=mealName;
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
}