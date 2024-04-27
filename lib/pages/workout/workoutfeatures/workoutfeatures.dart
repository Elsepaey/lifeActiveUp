import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nutrifit/core/themes.dart';
import 'package:nutrifit/pages/workout/workoutfeatures/workoutfeaturescontroller.dart';

class WorkoutFeatures extends StatelessWidget {
  WorkoutFeatures({super.key});
  final WorkoutFeaturesController controller =
      Get.put(WorkoutFeaturesController());
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding:  EdgeInsets.only(top: 8,right: 8,left: 8,bottom: screenHeight/12),
      child: Column(

        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 8,
          ),
          GetBuilder<WorkoutFeaturesController>(builder: (controller)=>
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
                      width: screenWidth / 4,
                      child: const Center(child: Text("Body Muscles")),
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
                      width: screenWidth / 4,
                      child: const Center(child: Text("Routines")),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      if(controller.currentIndex!=2) {
                        controller.swipeView(2);                  }
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: controller.currentIndex==2?Colors.transparent:Colors.grey.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(width: 1.6,color: controller.currentIndex==2?MyTheme.primary_color:Colors.transparent)
                      ),
                      height: screenHeight / 28,
                      width: screenWidth / 4,
                      child: const Center(child: Text("Exercises")),
                    ),
                  ),
                ],
              ),
          ),
          GetBuilder<WorkoutFeaturesController>(builder: (controller)=>controller.buildView())

        ],
      ),
    );
  }
}
