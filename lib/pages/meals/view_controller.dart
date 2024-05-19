import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nutrifit/pages/meals/meals_plans/meals_plans.dart';

import 'explore_meals/mealsview.dart';

class ViewController extends GetxController{
  int currentIndex=0;
  void swipeView(int index){
    currentIndex=index;
    update();
  }
  Widget buildView(){
    if(currentIndex==0)
    {
      return Meals();}
    else {
      return MealsPlans();
    }
  }
}