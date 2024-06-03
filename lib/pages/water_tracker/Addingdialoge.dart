import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nutrifit/pages/mealLogDetails/addingdialog/addinddialogcontroller.dart';
import 'package:nutrifit/pages/water_tracker/water_controller.dart';
import '../../core/dailystatics.dart';
import 'adding_controller.dart';

class AddingWaterDialog extends StatelessWidget {
  AddingWaterDialog({ super.key, required this.date});
  final AddingController dialogController = Get.put(AddingController());
  WaterController controller=Get.put(WaterController());
  final DailyStatics staticsController=Get.put(DailyStatics());

  final DateTime date;

  @override
  Widget build(BuildContext context) {
    return
      AlertDialog(
      title: Text("Add your intake"),
      content: GetBuilder<AddingController>(
        builder: (controller) => Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Identify Quantity (ml)"),
                DropdownButton<int>(
                  menuMaxHeight: 300,
                  value: dialogController.quantity,
                  items: [
                    for (int i = 50; i <= 2000; i += 20)
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
             dialogController.submit(context, date);
             controller.update();
             staticsController.updateWaterIntakes(dialogController.quantity);
            //
          },
        ),
      ],
    );
  }
}
