import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nutrifit/pages/meals/meals_plans/plans_features/custom_meal_plan/custom_food.dart';
import 'package:nutrifit/pages/meals/meals_plans/plans_features/dietplan/diet_type.dart';

class MealsPlansController extends GetxController{
  int currentIndex=0;
  void swipeView(int index){
    currentIndex=index;
    update();
  }
  Widget buildView(){
    if(currentIndex==0)
    {
      return CustomFood();}
    else
    {
      return DietSelectionScreen();

    }

  }
}