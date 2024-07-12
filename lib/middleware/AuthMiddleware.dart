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
  var formCompleted=sharedPref?.getBool('formCompleted') ?? false;
  @override
  RouteSettings? redirect(String? route)  {
    // TODO: implement redirect
    if(userId!=null)
      {
        if(formCompleted) {
          return const RouteSettings(name: "/intro");
        } else {
          return const RouteSettings(name: "/questioning");
        }

      }
    return super.redirect(route);
  }
}