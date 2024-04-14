import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nutrifit/pages/meals/mealscontroller.dart';
import '../widgets/widgets.dart';

class Meals extends StatelessWidget {
   Meals({super.key});
 MealsController controller=Get.put(MealsController());
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Padding(
      padding:  EdgeInsets.only(bottom: height/11),
      child: Column(
        children: [
          SizedBox(height: height/19,),
          Expanded(
            child:ListView.builder(

               // shrinkWrap: true,
                itemCount: controller.meals.length,
                itemBuilder: (context, index) {
                  return
                    CustomWidgets.recipeWidget(controller.meals[index][1], "200 kcal for 100 g ", "protein", "fat")
                  ;
                }),
          ),
        ],
      ),
    );
  }

}
