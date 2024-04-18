import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nutrifit/pages/mealLogDetails/meallogdetails.dart';

import '../../databases/database.dart';
import 'mealmodel.dart';

class ShowLoggedMeals extends StatelessWidget {
   ShowLoggedMeals({super.key,required this.title});

  final String  title ;

  @override
  Widget build(BuildContext context) {
    return
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          //color: Colors.green,
        child:
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Add your $title"),
            InkWell(onTap:(){
              // Meal meal=Meal(mealName: "mealName", mealType: "breakfast", quantity: 100, calories: 120
              //     , protein: 20, fat: 40, carbs: 16, sugar: 15, date: Timestamp.now());
              // DB.addMeal(meal);
Get.to(()=>MealLogDetails(mealType: title));
            },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Add meal +"),
                  ),),
                ))
          ],
        ),
            ),
      );
  }
}
