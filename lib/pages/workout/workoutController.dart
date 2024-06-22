import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nutrifit/pages/workout/workoutfeatures/workoutfeatures.dart';
import 'package:nutrifit/pages/workout/workoutplans/workoutplans.dart';

class WorkoutController extends GetxController{
  int currentIndex=0;
  void swipeView(int index){
    currentIndex=index;
update();
  }
  Widget buildView(){
    if(currentIndex==0)
      {
        return WorkoutFeatures();}
    else
      {
        return  WorkoutPlans();

      }
  }
}