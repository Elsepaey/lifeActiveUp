import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../main.dart';
import '../model/user controller.dart';
import '../pages/mainscreen/main_screen.dart';


class Intro extends StatefulWidget {
  const Intro({super.key});

  @override
  _IntroState createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  AppUserController userController = Get.find();
  CollectionReference users = FirebaseFirestore.instance.collection('users');
  QuerySnapshot? querySnapshot;
  DocumentSnapshot? doc;
  var userId= sharedPref!.getString('id');

  @override
  void initState() {
    super.initState();

getUserDate();
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
    userController.height=doc?['height'];
    userController.weight=doc?['weight'];
    userController.fitnessLevel = doc?['fitnessLevel'];
    userController.fitnessGoal = doc?['fitnessGoal'];
    userController.sleepIntake = doc?['sleepIntake'];
    userController.waterIntake = doc?['waterIntake'];
  }

  @override
  Widget build(BuildContext context) {
    var Height = MediaQuery.of(context).size.height;
    var Width = MediaQuery.of(context).size.width;

    return AnimatedSplashScreen(
        splashIconSize: Width / 2,
        duration: 1000,
        splash: Image(
          image: const AssetImage(
            "assets/images/olive-oil-bottle.png",
          ),
          height: Height,
          width: Width,
        ),
        nextScreen:   MainScreen()

        ,
        //splashTransition: SplashTransition.fadeTransition,
        backgroundColor: Colors.white);

  }
}
