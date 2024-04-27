import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nutrifit/core/themes.dart';
import 'package:nutrifit/pages/workout/workoutController.dart';

class Workout extends StatelessWidget {
   Workout({super.key});
WorkoutController controller=Get.put(WorkoutController());
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          GetBuilder<WorkoutController>(builder: (controller)=>Row(
           // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: (){
                  if(controller.currentIndex!=0) {
                    controller.swipeView(0);                                    }
                },
                child: Container(
                  height: screenHeight/28,
                  width: screenWidth/2,
                color: controller.currentIndex ==0 ?MyTheme.primary_color: MyTheme.greyAccent,
                  child:
                  const Center(child: Text("Explope")),
                ),

              ),
              InkWell(
                onTap: (){
                  if(controller.currentIndex!=1) {
                   controller.swipeView(1);                  }
                },
                child: Container(
                  height: screenHeight/28,

                  width: screenWidth/2,
                  color: controller.currentIndex ==1 ?MyTheme.primary_color: MyTheme.greyAccent,

                  child:
                  const Center(child: Text("Plans")),
                ),
              ),
            ],

          )),
          GetBuilder<WorkoutController>(builder: (controller)=>
              controller.buildView()
          ),
        ],
      ),
    );
  }
}
