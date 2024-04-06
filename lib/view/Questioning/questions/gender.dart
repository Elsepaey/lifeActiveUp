import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nutrifit/view/Questioning/QuestioningController.dart';

import '../../widgets/widgets.dart';

class Gender extends StatelessWidget {
   Gender({super.key});
   final QuestioningController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return
      CustomWidgets.customQuestionContainer(
        context,
        "Choose Your Gender",
        Row(
          mainAxisAlignment:
          MainAxisAlignment.spaceEvenly,
          children: [
            Column(children: [
              ImageIcon(
                const AssetImage("assets/icons/man.png"),
                size: screenWidth / 6,
              ),
              const Text("male"),
              GetX<QuestioningController>(
                  builder: (controller) {
                    return Radio(
                        value: "male",
                        groupValue: controller.gender.value,
                        onChanged: (value) {
                          controller.changeGender(value!);
                        });
                  })
            ]),
            Column(
              children: [
                ImageIcon(
                  const AssetImage("assets/icons/girl.png"),
                  size: screenWidth / 6,
                ),
                const Text("female"),
                GetX<QuestioningController>(
                    builder: (controller) {
                      return Radio(
                          value: "female",
                          groupValue: controller.gender.value,
                          onChanged: (value) {
                            controller.changeGender(value!);
                          });
                    })
              ],
            )
          ],
        ))
    ;
  }
}
