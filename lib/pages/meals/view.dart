import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nutrifit/core/themes.dart';
import 'package:nutrifit/pages/meals/view_controller.dart';

class ViewMeals extends StatelessWidget {
  ViewMeals({super.key});
  ViewController controller=Get.put(ViewController());
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          GetBuilder<ViewController>(builder: (controller)=>Row(
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
                  const Center(child: Text("Ai Plans")),
                ),
              ),
            ],

          )),
          Expanded(
            child: GetBuilder<ViewController>(builder: (controller)=>
                controller.buildView()
            ),
          ),
        ],
      ),
    );
  }
}
