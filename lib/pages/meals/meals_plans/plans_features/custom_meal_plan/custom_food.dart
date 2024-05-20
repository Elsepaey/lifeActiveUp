import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:nutrifit/pages/meals/meals_plans/plans_features/custom_meal_plan/customfood_controller.dart';
import 'package:nutrifit/pages/meals/meals_plans/plans_features/custom_meal_plan/output_view.dart';

class CustomFood extends StatelessWidget {
  final CustomFoodController controller = Get.put(CustomFoodController());

  CustomFood({super.key});
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(
            top: height/66,bottom: height / 11.40, left: width / 60, right: width / 60),        child: Column(
          children: [
            GetBuilder<CustomFoodController>(
              builder: (controller) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Calories"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Slider(
                            label: "${controller.calorieSliderValue}",
                            min: 0,
                            max: 2000.0,
                            divisions: 2000,
                            value: controller.calorieSliderValue,
                            onChanged: (double value) {
                              controller.updateCalorieSliderValue(value);
                            },
                          ),
                        ),
                        Text("${controller.calorieSliderValue}")
                      ],
                    ),
                  ],
                ),
              ),
            ),
            GetBuilder<CustomFoodController>(
              builder: (controller) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Fat"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Slider(
                            label: "${controller.fatSliderValue}",
                            min: 0,
                            max: 100.0,
                            divisions: 100,
                            value: controller.fatSliderValue,
                            onChanged: (double value) {
                              controller.updateFatSliderValue(value);
                            },
                          ),
                        ),
                        Text("${controller.fatSliderValue}")
                      ],
                    ),
                  ],
                ),
              ),
            ),
            GetBuilder<CustomFoodController>(
              builder: (controller) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("SaturatedFat"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Slider(
                            label: "${controller.saturatedFatSliderValue}",
                            min: 0,
                            max: 100.0,
                            divisions: 100,
                            value: controller.saturatedFatSliderValue,
                            onChanged: (double value) {
                              controller.updateSaturatedFatSliderValue(value);
                            },
                          ),
                        ),
                        Text("${controller.saturatedFatSliderValue}")
                      ],
                    ),
                  ],
                ),
              ),
            ),
            GetBuilder<CustomFoodController>(
              builder: (controller) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Cholesterol"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Slider(
                            label: "${controller.cholesterolSliderValue}",
                            min: 0,
                            max: 300.0,
                            divisions: 100,
                            value: controller.cholesterolSliderValue,
                            onChanged: (double value) {
                              controller.updateCholesterolFatSliderValue(value);
                            },
                          ),
                        ),
                        Text("${controller.cholesterolSliderValue}")
                      ],
                    ),
                  ],
                ),
              ),
            ),
            GetBuilder<CustomFoodController>(
              builder: (controller) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Sodium"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Slider(
                            label: "${controller.sodiumSliderValue}",
                            min: 0,
                            max: 2300.0,
                            divisions: 300,
                            value: controller.sodiumSliderValue,
                            onChanged: (double value) {
                              controller.updateSodiumSliderValue(value);
                            },
                          ),
                        ),
                        Text("${controller.sodiumSliderValue}")
                      ],
                    ),
                  ],
                ),
              ),
            ),
            GetBuilder<CustomFoodController>(
              builder: (controller) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Carbohydrates"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Slider(
                            label: "${controller.carbSliderValue}",
                            min: 0,
                            max: 300.0,
                            divisions: 300,
                            value: controller.carbSliderValue,
                            onChanged: (double value) {
                              controller.updateCarbSliderValue(value);
                            },
                          ),
                        ),
                        Text("${controller.carbSliderValue}")
                      ],
                    ),
                  ],
                ),
              ),
            ),
            GetBuilder<CustomFoodController>(
              builder: (controller) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Fiber"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Slider(
                            label: "${controller.fiberSliderValue}",
                            min: 0,
                            max: 50.0,
                            divisions: 50,
                            value: controller.fiberSliderValue,
                            onChanged: (double value) {
                              controller.updateFiberSliderValue(value);
                            },
                          ),
                        ),
                        Text("${controller.fiberSliderValue}")
                      ],
                    ),
                  ],
                ),
              ),
            ),
            GetBuilder<CustomFoodController>(
              builder: (controller) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Sugar"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Slider(
                            label: "${controller.sugarSliderValue}",
                            min: 0,
                            max: 50.0,
                            divisions: 50,
                            value: controller.sugarSliderValue,
                            onChanged: (double value) {
                              controller.updateSugarSliderValue(value);
                            },
                          ),
                        ),
                        Text("${controller.sugarSliderValue}")
                      ],
                    ),
                  ],
                ),
              ),
            ),
            GetBuilder<CustomFoodController>(
              builder: (controller) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Protein"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Slider(
                            label: "${controller.proteinSliderValue}",
                            min: 0,
                            max: 50.0,
                            divisions: 50,
                            value: controller.proteinSliderValue,
                            onChanged: (double value) {
                              controller.updateProteinSliderValue(value);
                            },
                          ),
                        ),
                        Text("${controller.proteinSliderValue}")
                      ],
                    ),
                  ],
                ),
              ),
            ),
            TextField(decoration: InputDecoration(
              hintText: "add ingredients"
            ),),
            ElevatedButton(onPressed: ( ) async {
Get.to(CustomOutput());



            }, child: Text("generate")),

          ],
        ),
      ),
    );
  }

  Widget sliderWidget(
      {required String title,
      required,
      required String lable,
      required double value,
      required double min,
      required double max})
{
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Slider(
                  label: "${controller.calorieSliderValue}",
                  min: 0,
                  max: 2000.0,
                  // divisions: 2000,
                  value: controller.calorieSliderValue,
                  onChanged: (double value) {
                    controller.updateCalorieSliderValue(value);
                  },
                ),
              ),
              Text("${controller.calorieSliderValue}")
            ],
          ),
        ],
      ),
    );
  }
}
