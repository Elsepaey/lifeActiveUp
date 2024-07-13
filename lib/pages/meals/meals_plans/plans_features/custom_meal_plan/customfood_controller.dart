import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomFoodController extends GetxController {
  double calorieSliderValue = 600.0;
  double fatSliderValue = 30.0;
  double saturatedFatSliderValue = 30.0;
  double cholesterolSliderValue = 50.0;
  double sodiumSliderValue = 400.0;
  double carbSliderValue = 70.0;
  double fiberSliderValue = 10.0;
  double sugarSliderValue = 10.0;
  double proteinSliderValue = 20.0;

  String textFieldValue="";
  List<String> ingredients=[];
  void updateCalorieSliderValue(double value) {
    calorieSliderValue = value.roundToDouble();
    update();
  }

  void updateFatSliderValue(double value) {
    fatSliderValue = value.roundToDouble();
    update();
  }

  void updateSaturatedFatSliderValue(double value) {
    saturatedFatSliderValue = value.roundToDouble();
    update();
  }

  void updateCholesterolFatSliderValue(double value) {
    cholesterolSliderValue = value.roundToDouble();
    update();
  }

  void updateSodiumSliderValue(double value) {
    sodiumSliderValue = value.roundToDouble();
    update();
  }

  void updateCarbSliderValue(double value) {
    carbSliderValue = value.roundToDouble();
    update();
  }

  void updateFiberSliderValue(double value) {
    fiberSliderValue = value.roundToDouble();
    update();
  }

  void updateSugarSliderValue(double value) {
    sugarSliderValue = value.roundToDouble();
    update();
  }

  void updateProteinSliderValue(double value) {
    proteinSliderValue = value.roundToDouble();
    update();
  }
}
