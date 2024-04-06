import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:nutrifit/view/widgets/widgets.dart';
import '../QuestioningController.dart';

class Fitness extends StatelessWidget {
  final QuestioningController controller = Get.find();

  Fitness({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12)),
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
                  screenWidth,
                  controller,
                  "Select Fitness Level",
                  controller.level.value,
                  controller.levels)),
          Divider(),
          GetX<QuestioningController>(
              builder: (controller) => CustomWidgets.customDropdownButton(
                  screenWidth,
                  controller,
                  "Select Fitness Goal",
                  controller.fitnessGoal.value,
                  controller.fitnessGoals)),
          Divider(),
          GetX<QuestioningController>(
              builder: (controller) => CustomWidgets.customDropdownButton(
                  screenWidth,
                  controller,
                  "Select Water Intake",
                  controller.waterIntake.value,
                  controller.waterIntakes)),
          Divider(),
          GetX<QuestioningController>(
              builder: (controller) => CustomWidgets.customDropdownButton(
                  screenWidth,
                  controller,
                  "Select Sleep Intake",
                  controller.sleepIntake.value,
                  controller.sleepIntakes))
        ],
      ),
    );
  }
}
