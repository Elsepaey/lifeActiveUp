import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nutrifit/pages/widgets/widgets.dart';
import '../QuestioningController.dart';

class Fitness extends StatelessWidget {
  final QuestioningController controller = Get.find();

  Fitness({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      padding:  const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12)),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: Card(
                child: Text(
                  "Let's answer some questions about fitness",
                  style: TextStyle(
                      fontSize: screenWidth / 25, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(
              height: screenHeight / 45,
            ),
            GetX<QuestioningController>(
                builder: (controller) => CustomWidgets.customDropdownButton(
                    screenWidth: screenWidth,
                    controller: controller,
                    question: "Select Fitness Level",
                    value: controller.level.value,
                    values: controller.levels, select: 0,
                )),
            const Divider(),
            GetX<QuestioningController>(
                builder: (controller) => CustomWidgets.customDropdownButton(
                    select: 1,
                    screenWidth: screenWidth,
                    controller: controller,
                    question: "Select Fitness Goal",
                    value: controller.fitnessGoal.value,
                    values: controller.fitnessGoals,
                )),
            const Divider(),
            GetX<QuestioningController>(
                builder: (controller) => CustomWidgets.customDropdownButton(
                    select: 2,
                    screenWidth: screenWidth,
                    controller: controller,
                    question: "Select Water Intake",
                    value: controller.waterIntake.value,
                    values: controller.waterIntakes,
                )),
            const Divider(),
            GetX<QuestioningController>(
                builder: (controller) => CustomWidgets.customDropdownButton(
                    select: 3,
                    screenWidth: screenWidth,
                    controller: controller,
                    question: "Select Sleep Intake",
                    value: controller.sleepIntake.value,
                    values: controller.sleepIntakes,
               ))
          ],
        ),
      ),
    );
  }
}
