import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nutrifit/pages/mealLogDetails/mealssectionpages/searchformeal.dart';


class MealDetailsController extends GetxController{
  RxInt checked = 0.obs;
  int currentPageIndex = 0;
  String mealType='';
  List choosedItems=[];

  void addToChoosed(var W){
    choosedItems.add(W);
    update();
  }
  void removeFromChoosed(int index){
    choosedItems.removeAt(index);
    update();
  }
  void changeViewIndex()
  {
    currentPageIndex=checked.value;
    update();
  }
  Widget  buildMealsContainer(DateTime date)
  {
    switch (currentPageIndex){
      case 0:
        return SearchForMeal(mealType: mealType,date: date,);
      case 1:
        return Container();
      case 2:
        return Container();
    }
    update();

    return Container();
  }
}