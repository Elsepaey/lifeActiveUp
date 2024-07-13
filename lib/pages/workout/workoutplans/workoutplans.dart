import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nutrifit/pages/workout/workoutplans/plansView.dart';
import 'package:nutrifit/pages/workout/workoutplans/workoutplanscontroller.dart';

import '../../../core/themes.dart';
import '../../../model/user controller.dart';

class WorkoutPlans extends StatelessWidget {
  WorkoutPlans({super.key});
  WorkoutPlansController controller = Get.put(WorkoutPlansController());
  AppUserController userController = Get.find();

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(12),
      child: GetBuilder<WorkoutPlansController>(
        builder: (controller) => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              GestureDetector(
                onTap: () {
                  controller.swipe(1);
                },
                child: SizedBox(
                  height: screenHeight / 4.2,
                  width: screenWidth / 2.2,
                  child: Card(
                    shadowColor: Colors.grey.shade200,
                    surfaceTintColor: Colors.white,
                    elevation: 1,
                    color: controller.selected == 1
                        ? MyTheme.primary_color.withOpacity(0.6)
                        : Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,

                          // mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image(
                                image: const AssetImage(
                                  "assets/images/fromHome.png",
                                ),
                                width: screenWidth / 2.8,
                              ),
                            ),
                            Center(
                              child: Text(
                                "From Home",
                                style: TextStyle(
                                    color: controller.selected == 1
                                        ? Colors.white
                                        : MyTheme.primary_color,
                                    fontSize: screenHeight / 46,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ]),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  controller.swipe(2);
                },
                child: SizedBox(
                  height: screenHeight / 4.2,
                  width: screenWidth / 2.2,
                  child: Card(
                    shadowColor: Colors.grey.shade200,
                    elevation: 1,
                    color: controller.selected == 2
                        ? MyTheme.primary_color.withOpacity(0.6)
                        : Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image(
                            image: const AssetImage(
                              "assets/images/fromGym.png",
                            ),
                            width: screenWidth / 2.8,
                          ),
                        ),
                        Center(
                          child: Text(
                            "From Gym",
                            style: TextStyle(
                                color: controller.selected == 2
                                    ? Colors.white
                                    : MyTheme.primary_color,
                                fontSize: screenHeight / 46,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ]),
            SizedBox(
              height: screenHeight / 16,
            ),
            const Center(
              child: Text("choose number of trainig days"),
            ),
            GetBuilder<WorkoutPlansController>(
              builder: (controller) => Slider(
                label: "${controller.sliderValue}",
                min: 3,
                max: 6,
                divisions: 3,
                value: controller.sliderValue,
                onChanged: (double value) {
                  controller.updateSliderValue(value);
                },
              ),
            ),
            SizedBox(
              height: screenHeight / 16,
            ),
            InkWell(
              onTap: () {
                String place = controller.labels[controller.selected];
                double days = controller.sliderValue;
                String? gender = userController.gender.capitalizeFirst;
                String level = userController.fitnessLevel;
                String goal = userController.fitnessGoal.removeAllWhitespace;

                String path = goal + gender! + place;

                Map<String, List<Map<String, dynamic>>>? plan =
                    controller.plans[path.trim()]![level]
                        ?["${controller.sliderValue.toInt()}"];
                Get.to(()=>WorkoutPlansView(
                  plan: plan,
                ));
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(width: 2, color: MyTheme.primary_color),
                ),
                height: screenHeight / 24,
                width: screenWidth / 2.3,
                child: const Center(child: Text("Generate")),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
