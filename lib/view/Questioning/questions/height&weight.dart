import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nutrifit/view/Questioning/QuestioningController.dart';
import 'package:nutrifit/view/widgets/widgets.dart';

class WeightAndHeight extends StatelessWidget {
   WeightAndHeight({super.key});
  final  QuestioningController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return                           CustomWidgets.customQuestionContainer(
        context, "identify your biometrics",
        GetX<QuestioningController>(
            builder: (controller) {
              controller.weightController.text =
                  controller.weight.value;
              controller.heightController.text =
                  controller.height.value;

              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      const Row(
                        children: [
                          ImageIcon(AssetImage(
                              "assets/icons/weight-scale.png")),
                          Text("Weight (kg)"),
                        ],
                      ),
                      SizedBox(
                        height: screenHeight / 32,
                      ),
                      SizedBox(
                          height: screenHeight / 32,
                          width: screenWidth / 4.5,
                          // Adjust the width as needed
                          child: TextField(
                            onChanged: (value) =>
                            controller.weight.value = value,
                            controller:
                            controller.weightController,
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            maxLength:
                            3, // Maximum number of characters allowed
                            decoration: const InputDecoration(
                              counterText:
                              '', // Hide character counter
                              //hintText: 'Enter number',
                              border: OutlineInputBorder(),
                            ),
                          ))
                    ],
                  ),
                  Column(
                    children: [
                      const Row(
                        children: [
                          ImageIcon(AssetImage(
                              "assets/icons/height.png")),
                          Text("Height (cm)"),
                        ],
                      ),
                      SizedBox(
                        height: screenHeight / 32,
                      ),
                      SizedBox(
                          height: screenHeight / 32,
                          width: screenWidth / 4.5,
                          // Adjust the width as needed
                          child: TextField(
                            onChanged: (value) =>
                            controller.height.value = value,
                            controller:
                            controller.heightController,
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            maxLength:
                            3, // Maximum number of characters allowed
                            decoration: const InputDecoration(
                              counterText:
                              '', // Hide character counter
                              //hintText: 'Enter number',
                              border: OutlineInputBorder(),
                            ),
                          ))
                    ],
                  )
                ],
              );
            }))
    ;
  }
}
