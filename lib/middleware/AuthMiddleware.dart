import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nutrifit/main.dart';

import '../model/user controller.dart';

class AuthMiddleware extends GetMiddleware{
  AppUserController userController = Get.put(AppUserController());
  CollectionReference users = FirebaseFirestore.instance.collection('users');
  QuerySnapshot? querySnapshot;
  DocumentSnapshot? doc;
  var userId=sharedPref!.getString('id');
  @override
  RouteSettings? redirect(String? route)  {
    // TODO: implement redirect
    if(userId!=null)
      {
        return const RouteSettings(name: "/intro");

   // return const RouteSettings(name: "/home");
      }
    return super.redirect(route);
  }
  Future<void> getUserDate() async {
     querySnapshot = await users
        .where('id', isEqualTo:userId )
        .get();
    doc = querySnapshot!.docs.first;
    userController.id = doc?['id'];
    userController.email = doc?['email'];
    userController.password = doc?['password'];
    userController.fullName = doc?['fullname'];
    userController.diseasesList = doc?['diseasesList'];
    userController.allergiesList = doc?['allergiesList'];
    userController.dateOfBirth = doc?['dateOfBirth'];
    userController.gender = doc?['gender'];
    userController.fitnessLevel = doc?['fitnessLevel'];
    userController.fitnessGoal = doc?['fitnessGoal'];
    userController.sleepIntake = doc?['sleepIntake'];
    userController.waterIntake = doc?['waterIntake'];
  }
}