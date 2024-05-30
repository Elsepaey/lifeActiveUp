import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/progress_dialog_utils.dart';
import '../../databases/database.dart';

class AddingController extends GetxController{
  int quantity = 110;
  void changeValues(int value) {
    if (value == quantity) {

    }
    else {
      quantity = value;
    }

    update();
  }
  Future<void> submit(
      BuildContext context, DateTime date) async {

    ProgressDialogUtils.showLoading(context, "Loading...");

    waterIntake intake=waterIntake(quantity: quantity);
    var addedIntake = await DB.addWaterIntake(intake.quantity);
    if (addedIntake != null) {
      ProgressDialogUtils.hideLoading(context);
      Get.back();
    } else {
      ProgressDialogUtils.showMessage(
          context: context,
          message: "Not Inserted",
          posAction: () => {Navigator.pop(context)},
          posActionText: "ok");
    }
  }

}
class waterIntake{
  waterIntake({required this.quantity,});
  int quantity;
}