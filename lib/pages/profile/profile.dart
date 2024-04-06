import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:nutrifit/core/themes.dart';
import 'package:nutrifit/pages/profile/profilecontroller.dart';

import '../../core/progress_dialog_utils.dart';
import '../../model/user controller.dart';

class Profile extends StatelessWidget {
  AppUserController userController = Get.find();
ProfileController controller=Get.put(ProfileController());
  Profile({super.key});

  String  newValue ="";

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
GetX<ProfileController>(builder: (controller)=>          Expanded(
  child: SingleChildScrollView(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Name :"),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                width: screenWidth / 1.5,
                height: screenHeight / 30,
                decoration: BoxDecoration(
                  //color: const Color(0xFFD2CFCF),
                    borderRadius: BorderRadius.circular(3)),
                child: TextFormField(
                  onChanged: (value){
                    newValue=value;
                  },
                  initialValue: userController.fullName,
                  enabled: controller.nameEnabled,
                  //onChanged: onChanged,
                  //validator: validator,
                  decoration: InputDecoration(
                      enabledBorder: InputBorder.none,
                      contentPadding:
                      const EdgeInsets.symmetric(vertical: 8.0),
                      disabledBorder: InputBorder.none),
                )),
            controller.nameEditing.value?
                Row(
                  children: [
                    InkWell(
                      onTap: () async {

                        await controller.updateField(context, "fullname", newValue);



                      },
                    child: Text(
                      "Save",
                      style: TextStyle(color: Colors.blue),
                    ),
                  )
                  ,
                    SizedBox(width: 8,),
                    InkWell(
                      onTap: (){controller.nameEditing.value=false;
                      controller.nameEnabled=false;
                      },
                      child: Text(
                        "cancel",
                        style: TextStyle(color: Colors.blue),
                      ),
                    )
                  ],
                )
                :
            InkWell(
              onTap: (){
                controller.nameEditing.value=true;
                controller.nameEnabled=true;
              },
              child: Text(
                "Edit",
                style: TextStyle(color: Colors.blue),
              ),
            )
          ],
        ),
        Divider(),
        SizedBox(
          height: screenHeight / 80,
        ),
        Text("email :"),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                width: screenWidth / 1.5,
                height: screenHeight / 30,
                decoration: BoxDecoration(
                  //color: const Color(0xFFD2CFCF),
                    borderRadius: BorderRadius.circular(3)),
                child: TextFormField(
                  initialValue: userController.email,
                  enabled: controller.emailEnabled,
                  //onChanged: onChanged,
                  //validator: validator,
                  decoration: InputDecoration(
                      enabledBorder: InputBorder.none,
                      contentPadding:
                      const EdgeInsets.symmetric(vertical: 8.0),
                      disabledBorder: InputBorder.none),
                )),
            controller.emailEditing.value ?
            Row(
              children: [
                InkWell(
                  child: Text(
                    "Save",
                    style: TextStyle(color: Colors.blue),
                  ),
                )
                ,
                SizedBox(width: 8,),
                InkWell(
                  onTap: (){controller.emailEditing.value=false;
                  controller.emailEnabled=false;
                  },
                  child: Text(
                    "cancel",
                    style: TextStyle(color: Colors.blue),
                  ),
                )
              ],
            )
                :
            InkWell(
              onTap: (){
                controller.emailEditing.value=true;
                controller.emailEnabled=true;
              },
              child: Text(
                "Edit",
                style: TextStyle(color: Colors.blue),
              ),
            )
          ],
        ),
        Divider(),
        SizedBox(
          height: screenHeight / 80,
        ),
        Text("Birth Date :"),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                width: screenWidth / 1.5,
                height: screenHeight / 30,
                decoration: BoxDecoration(
                  //color: const Color(0xFFD2CFCF),
                    borderRadius: BorderRadius.circular(3)),
                child: TextFormField(
                  initialValue: userController.dateOfBirth,
                  enabled: controller.birthEnabled,
                  //onChanged: onChanged,
                  //validator: validator,
                  decoration: InputDecoration(
                      enabledBorder: InputBorder.none,
                      contentPadding:
                      const EdgeInsets.symmetric(vertical: 8.0),
                      disabledBorder: InputBorder.none),
                )),
            InkWell(
              child: Text(
                "Edit",
                style: TextStyle(color: Colors.blue),
              ),
            )
          ],
        ),
        Divider(),
        SizedBox(
          height: screenHeight / 80,
        ),
        Text("Height :"),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                width: screenWidth / 1.5,
                height: screenHeight / 30,
                decoration: BoxDecoration(
                  //color: const Color(0xFFD2CFCF),
                    borderRadius: BorderRadius.circular(3)),
                child: TextFormField(
                  initialValue: userController.height,
                  enabled: controller.heightEnabled,
                  //onChanged: onChanged,
                  //validator: validator,
                  decoration: InputDecoration(
                      enabledBorder: InputBorder.none,
                      contentPadding:
                      const EdgeInsets.symmetric(vertical: 8.0),
                      disabledBorder: InputBorder.none),
                )),
            InkWell(
              child: Text(
                "Edit",
                style: TextStyle(color: Colors.blue),
              ),
            )
          ],
        ),
        Divider(),
        SizedBox(
          height: screenHeight / 80,
        ),
        Text("Weight :"),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                width: screenWidth / 1.5,
                height: screenHeight / 30,
                decoration: BoxDecoration(
                  //color: const Color(0xFFD2CFCF),
                    borderRadius: BorderRadius.circular(3)),
                child: TextFormField(
                  initialValue: userController.weight,
                  enabled: controller.weightEnabled,
                  //onChanged: onChanged,
                  //validator: validator,
                  decoration: InputDecoration(
                      enabledBorder: InputBorder.none,
                      contentPadding:
                      const EdgeInsets.symmetric(vertical: 8.0),
                      disabledBorder: InputBorder.none),
                )),
            InkWell(
              child: Text(
                "Edit",
                style: TextStyle(color: Colors.blue),
              ),
            )
          ],
        ),
        Divider(),
        SizedBox(
          height: screenHeight / 80,
        ),
        Text("Fitness Goal :"),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                width: screenWidth / 1.5,
                height: screenHeight / 30,
                decoration: BoxDecoration(
                  //color: const Color(0xFFD2CFCF),
                    borderRadius: BorderRadius.circular(3)),
                child: TextFormField(
                  initialValue: userController.fitnessGoal,
                  enabled: controller.goalEnabled,
                  //onChanged: onChanged,
                  //validator: validator,
                  decoration: InputDecoration(
                      enabledBorder: InputBorder.none,
                      contentPadding:
                      const EdgeInsets.symmetric(vertical: 8.0),
                      disabledBorder: InputBorder.none),
                )),
            InkWell(
              child: Text(
                "Edit",
                style: TextStyle(color: Colors.blue),
              ),
            )
          ],
        ),
        Divider(),
        SizedBox(
          height: screenHeight / 80,
        ),
        Text("Fitness Level :"),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                width: screenWidth / 1.5,
                height: screenHeight / 30,
                decoration: BoxDecoration(
                  //color: const Color(0xFFD2CFCF),
                    borderRadius: BorderRadius.circular(3)),
                child: TextFormField(
                  initialValue: userController.fitnessLevel,
                  enabled: controller.levelEnabled,
                  //onChanged: onChanged,
                  //validator: validator,
                  decoration: InputDecoration(
                      enabledBorder: InputBorder.none,
                      contentPadding:
                      const EdgeInsets.symmetric(vertical: 8.0),
                      disabledBorder: InputBorder.none),
                )),
            InkWell(
              child: Text(
                "Edit",
                style: TextStyle(color: Colors.blue),
              ),
            )
          ],
        ),
        Divider(),
        SizedBox(
          height: screenHeight / 80,
        ),
        Text("Water Intake :"),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                width: screenWidth / 1.5,
                height: screenHeight / 30,
                decoration: BoxDecoration(
                  //color: const Color(0xFFD2CFCF),
                    borderRadius: BorderRadius.circular(3)),
                child: TextFormField(
                  initialValue: userController.waterIntake,
                  enabled: controller.waterEnabled,
                  //onChanged: onChanged,
                  //validator: validator,
                  decoration: InputDecoration(
                      enabledBorder: InputBorder.none,
                      contentPadding:
                      const EdgeInsets.symmetric(vertical: 8.0),
                      disabledBorder: InputBorder.none),
                )),
            InkWell(
              child: Text(
                "Edit",
                style: TextStyle(color: Colors.blue),
              ),
            )
          ],
        ),
        Divider(),
        SizedBox(
          height: screenHeight / 80,
        ),
        Text("Sleep Intake :"),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                width: screenWidth / 1.5,
                height: screenHeight / 30,
                decoration: BoxDecoration(
                  //color: const Color(0xFFD2CFCF),
                    borderRadius: BorderRadius.circular(3)),
                child: TextFormField(
                  initialValue: userController.sleepIntake,
                  enabled: controller.sleepEnabled,
                  //onChanged: onChanged,
                  //validator: validator,
                  decoration: InputDecoration(
                      enabledBorder: InputBorder.none,
                      contentPadding:
                      const EdgeInsets.symmetric(vertical: 8.0),
                      disabledBorder: InputBorder.none),
                )),
            InkWell(
              child: Text(
                "Edit",
                style: TextStyle(color: Colors.blue),
              ),
            )
          ],
        ),
      ],
    ),
  ),
)
)        ],
      ),
    );
  }
}
