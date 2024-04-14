import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nutrifit/core/themes.dart';
import 'package:nutrifit/pages/profile/profilecontroller.dart';
import 'package:nutrifit/pages/widgets/widgets.dart';
import '../../model/user controller.dart';

class Profile extends StatelessWidget {
  AppUserController userController = Get.find();
  ProfileController controller = Get.put(ProfileController());
  Profile({super.key});

  String newValue = "";

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(right: 18, bottom: 82, left: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Icon(
                Icons.account_circle_outlined,
                size: screenWidth / 8,
                color: MyTheme.primary_color,
              ),
              Text(
                "My Account",
                style: TextStyle(fontSize: screenWidth / 19),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          GetX<ProfileController>(
              builder: (controller) => Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomWidgets.profileRow(
                              screenWidth: screenWidth,
                              screenHeight: screenHeight,
                              initialValue: userController.fullName,
                              Enabled: controller.nameEnabled,
                              Editing: controller.nameEditing,
                              context: context,
                              fieldName: "fullname",
                              newValue: newValue,
                              title: "Name :"),
                          CustomWidgets.profileRow(
                              title: "email :",
                              screenWidth: screenWidth,
                              screenHeight: screenHeight,
                              Enabled: controller.emailEnabled,
                              Editing: controller.emailEditing,
                              initialValue: userController.email,
                              context: context,
                              newValue: newValue,
                              fieldName: 'email'),
                          CustomWidgets.profileRow(
                              title: "Birth Date :",
                              screenWidth: screenWidth,
                              screenHeight: screenHeight,
                              Enabled: controller.birthEnabled,
                              Editing: controller.birthEditing,
                              initialValue: userController.dateOfBirth,
                              context: context,
                              newValue: newValue,
                              fieldName: 'dateOfBirth'),
                          CustomWidgets.profileRow(
                              title: "Weight :",
                              screenWidth: screenWidth,
                              screenHeight: screenHeight,
                              Enabled: controller.weightEnabled,
                              Editing: controller.weightEditing,
                              initialValue: userController.weight,
                              context: context,
                              newValue: newValue,
                              fieldName: 'weight'),
                          CustomWidgets.profileRow(
                              title: "Height :",
                              screenWidth: screenWidth,
                              screenHeight: screenHeight,
                              Enabled: controller.heightEnabled,
                              Editing: controller.heightEditing,
                              initialValue: userController.height,
                              context: context,
                              newValue: newValue,
                              fieldName: 'height'),
                          CustomWidgets.profileRow(
                              title: "Fitness Goal :",
                              screenWidth: screenWidth,
                              screenHeight: screenHeight,
                              Enabled: controller.goalEnabled,
                              Editing: controller.goalEditing,
                              initialValue: userController.fitnessGoal,
                              context: context,
                              newValue: newValue,
                              fieldName: 'fitnessGoal'),
                          CustomWidgets.profileRow(
                              title: "Fitness Level :",
                              screenWidth: screenWidth,
                              screenHeight: screenHeight,
                              Enabled: controller.levelEnabled,
                              Editing: controller.levelEditing,
                              initialValue: userController.fitnessLevel,
                              context: context,
                              newValue: newValue,
                              fieldName: 'fitnessLevel'),
                          CustomWidgets.profileRow(
                              title: "Water Intake :",
                              screenWidth: screenWidth,
                              screenHeight: screenHeight,
                              Enabled: controller.waterEnabled,
                              Editing: controller.waterEditing,
                              initialValue: userController.waterIntake,
                              context: context,
                              newValue: newValue,
                              fieldName: 'waterIntake'),
                          CustomWidgets.profileRow(
                              title: "Sleep Intake :",
                              screenWidth: screenWidth,
                              screenHeight: screenHeight,
                              Enabled: controller.sleepEnabled,
                              Editing: controller.sleepEditing,
                              initialValue: userController.sleepIntake,
                              context: context,
                              newValue: newValue,
                              fieldName: 'sleepIntake'),
                          
                        ],
                      ),
                    ),
                  ))
        ],
      ),
    );
  }
}
