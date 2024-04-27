import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nutrifit/pages/workout/workoutfeatures/explorepages/bodymuscles/bodymuscles.dart';
import 'package:nutrifit/pages/workout/workoutfeatures/explorepages/exercises/exercises.dart';
import 'package:nutrifit/pages/workout/workoutfeatures/explorepages/routines/routines.dart';

class WorkoutFeaturesController extends GetxController{
  int currentIndex=0;
  void swipeView(int index){
    currentIndex=index;
    update();
  }
  Widget buildView(){
    if(currentIndex==0)
    {
      return BodyMuscles();}
    else if(currentIndex==1)
    {
      return Routines();

    }
    else
      {
        return Execises();
      }
  }
}