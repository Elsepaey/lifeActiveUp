import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nutrifit/pages/mealLogDetails/addingdialog/addinddialogcontroller.dart';

import '../../../core/dailystatics.dart';
import '../../meals/explore_meals/mealscontroller.dart';

class AddingDialog extends StatelessWidget {
  AddingDialog({required this.index, required this.mealType, super.key, required this.date});
  final MealsController controller = Get.find();
  final AddingDialogController dialogController = Get.find();
  final DailyStatics staticsController=Get.put(DailyStatics());

  final DateTime date;
  int index;
  String mealType;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("${controller.meals[index][1]}"),
      content: GetBuilder<AddingDialogController>(
        builder: (controller) => Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Identify Quantity"),
                DropdownButton<int>(
                  menuMaxHeight: 300,
                  value: dialogController.quantity,
                  items: [
                    for (int i = 30; i <= 400; i += 10)
                      DropdownMenuItem(
                        value: i,
                        child: Text('$i'),
                      ),
                  ],
                  onChanged: (int? newValue) {
                    if (dialogController.quantity != newValue) {
                      dialogController.changeValues(newValue!);
                    }
                    return;
                  },
                ),
              ],
            ),
            SizedBox(
              height: 40,
              child: ListTile(
                contentPadding: const EdgeInsets.all(0),
                leading: const Text("Calories"),
                trailing: Text("${dialogController.calories} kcal for 100 g "),
              ),
            ),
            SizedBox(
              height: 40,
              child: ListTile(
                contentPadding: const EdgeInsets.all(0),
                leading: const Text('Protein'),
                trailing: Text("${dialogController.protein}"),
              ),
            ),
            SizedBox(
              height: 40,
              child: ListTile(
                contentPadding: const EdgeInsets.all(0),
                leading: const Text('Fat'),
                trailing: Text("${dialogController.fat} "),
              ),
            ),
            SizedBox(
              height: 40,
              child: ListTile(
                contentPadding: const EdgeInsets.all(0),
                leading: const Text('Sugar'),
                trailing: Text("${dialogController.sugar}"),
              ),
            ),
            SizedBox(
              height: 40,
              child: ListTile(
                contentPadding: const EdgeInsets.all(0),
                leading: const Text('Carbs'),
                trailing: Text("${dialogController.carbs}"),
              ),
            ),
          ],
        ),
      ),
      actionsAlignment: MainAxisAlignment.spaceBetween,
      actions: [
        TextButton(
          child: const Text('Cancel'),
          onPressed: () {
            Navigator.of(context).pop();
            Get.delete<AddingDialogController>();
          },
        ),
        TextButton(
          child: const Text('Confirm'),
          onPressed: () {
            dialogController.submit(context, mealType,date);
            staticsController.update();

            Get.delete<AddingDialogController>();
          },
        ),
      ],
    );
  }
}
