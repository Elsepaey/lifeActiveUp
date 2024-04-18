import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nutrifit/pages/Questioning/QuestioningController.dart';
import 'package:nutrifit/pages/Questioning/questions/age.dart';
import 'package:nutrifit/pages/Questioning/questions/allergies.dart';
import 'package:nutrifit/pages/Questioning/questions/diseases.dart';
import 'package:nutrifit/pages/Questioning/questions/fitness.dart';
import 'package:nutrifit/pages/Questioning/questions/gender.dart';
import 'package:nutrifit/pages/Questioning/questions/height&weight.dart';

class Questioning extends StatelessWidget {
  final QuestioningController controller = Get.put(QuestioningController());

  Questioning({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: EdgeInsets.only(
            top: screenHeight / 8,
            bottom: screenHeight / 17,
            right: screenWidth / 25,
            left: screenWidth / 25),
        color: const Color(0xff52D1C6),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: SizedBox(
                  height: screenHeight / 2,
                  width: screenWidth / 1.15,
                  child: GetBuilder<QuestioningController>(
                    builder: (controller) {
                      print("pageView rebuilt");
                      return
                        PageView(
                        controller: controller.pageController,
                        onPageChanged: (index) {
                          controller.currentPageIndex = index;

                          if (index == 5) {
                            controller.buttonText.value = 'Submit';
                          } else {
                            controller.buttonText.value = 'Continue';
                          }
                        },
                        children: [
                          Gender(),
                          WeightAndHeight(),
                          Age(),
                          Diseases(),
                          Allergies(),
                          Fitness()
                        ],
                      );
                    },
                  )),
            ),
            SizedBox(
              height: 8,
            ),
            Center(
              child: SizedBox(
                width: screenWidth / 2,
                child: Center(
                  child: GetX<QuestioningController>(
                      builder: (controller) => ElevatedButton(
                        style: ElevatedButton.styleFrom(

                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            //side: const BorderSide(color: Colors.black),
                          ),
                        ),
                            onPressed: () {
                              controller.toNext(context);
                            },
                            child: Text(controller.buttonText.value,style: TextStyle(color: Colors.blueAccent),),
                          )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
