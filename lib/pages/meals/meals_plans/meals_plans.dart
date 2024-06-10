import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nutrifit/pages/meals/meals_plans/mealsplans_controller.dart';

import '../../../core/themes.dart';

class MealsPlans extends StatelessWidget {
   MealsPlans({super.key});
MealsPlansController controller =Get.put(MealsPlansController());
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Padding(padding: const EdgeInsets.all(8),
      child:Column(children: [

        const SizedBox(
          height: 8,
        ),
        GetBuilder<MealsPlansController>(builder: (controller)=>
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    if(controller.currentIndex!=0) {
                      controller.swipeView(0);                  }
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: controller.currentIndex==0?Colors.transparent:Colors.grey.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                            width: 1.6, color: controller.currentIndex==0?MyTheme.primary_color:Colors.transparent)),
                    height: screenHeight / 28,
                    width: screenWidth / 2.3,
                    child: const Center(child: Text("Custom Food")),
                  ),
                ),
                InkWell(
                  onTap: () {
                    if(controller.currentIndex!=1) {
                      controller.swipeView(1);                  }
                  },
                  child: Container(
                    decoration:
                    BoxDecoration(
                      color: controller.currentIndex==1?Colors.transparent:Colors.grey.withOpacity(0.1),


                      borderRadius: BorderRadius.circular(12),

                      border: Border.all(  width: 1.6, color: controller.currentIndex==1?MyTheme.primary_color:Colors.transparent),
                    ),

                    height: screenHeight / 28,
                    width: screenWidth / 2.3,
                    child: const Center(child: Text("Diet Recommendation")),
                  ),
                ),
              ],
            ),
        ),
        Expanded(child: GetBuilder<MealsPlansController>(builder: (controller)=>controller.buildView()))
      ],),

    );
  }
}
