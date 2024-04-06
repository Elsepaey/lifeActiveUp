import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../QuestioningController.dart';

class Allergies extends StatelessWidget {
  final QuestioningController controller = Get.find();

  Allergies({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: [
          Card(
            child: Text(
              "Check if you have any of these Allergies",
              style: TextStyle(
                  fontSize: screenWidth / 25, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
              child: ListView.builder(
            itemCount: controller.allergies.length,
            itemBuilder: (context, index) {
              return GetX<QuestioningController>(builder: (controller) {
                return CheckboxListTile(
                  activeColor: const Color(0xff2c8d85),
                  title: Text(controller.allergies[index]),
                  value: controller.allergiesCheckedList[index],
                  onChanged: (newValue) {
                    controller.allergiesCheckedList[index] = newValue!;
                  },
                );
              });
            },
          )),
        ],
      ),
    );
  }
}
