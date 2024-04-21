import 'package:get/get.dart';
import 'package:nutrifit/pages/sign_up/user_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

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
  static getLoggedMeals(String mealType,DateTime date) {
    int year = date.year;
    int month = date.month;
    int day = date.day;
    String formattedDate = '$year-$month-$day';
    var items = FirebaseFirestore.instance
        .collection("users")
        .doc(userController.id) // replace with the actual user ID
        .collection('meals')
        .doc(formattedDate)
        .collection(mealType)
        .get();
    return items;
  }

}
