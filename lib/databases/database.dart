import 'package:get/get.dart';
import 'package:nutrifit/pages/sign_up/user_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../main.dart';
import '../model/user controller.dart';
import '../pages/foodcalender/mealmodel.dart';

class DB {
  static AppUserController userController = Get.find();

  static Future<Object?> addUser(FirebaseUser user) async {

    var res=await user.saveToFirestore();
    return res;
  }
  static addMeal(Meal meal, DateTime date)
  async {
     var res=await meal.saveToFirestore(date);
     return res;

  }
  static deleteMeal(String mealName, String mealType,DateTime date)

  async {
    int year = date.year;
    int month = date.month;
    int day = date.day;

    String formattedDate = '$year-$month-$day';
    FirebaseFirestore.instance
      ..collection("users")
          .doc(userController.id)
          .collection('meals')
          .doc(formattedDate)
          .collection(mealType)
          .doc(mealName).delete()
    ;
    var res = FirebaseFirestore.instance
        .collection("users")
        .doc(userController.id)
        .get();
    return res;

  }
  static  Future<QuerySnapshot<Map<String, dynamic>>>? getLoggedMeals(String mealType,DateTime date) {
    var userId= sharedPref!.getString('id');
    int year = date.year;
    int month = date.month;
    int day = date.day;
    String formattedDate = '$year-$month-$day';
    Future<QuerySnapshot<Map<String, dynamic>>>? items = FirebaseFirestore.instance
        .collection("users")
        .doc(userId) // replace with the actual user ID
        .collection('meals')
        .doc(formattedDate)
        .collection(mealType)
        .get();
    return items;
  }

}
