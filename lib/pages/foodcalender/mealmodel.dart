import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

import '../../model/user controller.dart';

class Meal {
  AppUserController userController = Get.find();

  String mealName;
  String mealType;
  int quantity;
  double calories;
  double protein;
  double fat;
  double carbs;
  double sugar;
  Timestamp date;

  Meal({
    required this.mealName,
    required this.mealType,
    required this.quantity,
    required this.calories,
    required this.protein,
    required this.fat,
    required this.carbs,
    required this.sugar,
    required this.date,
  });

  factory Meal.fromDocument(DocumentSnapshot doc) {
    return Meal(
      mealName: doc['mealName'],
      mealType: doc['mealType'],
      quantity: doc['quantity'],
      calories: doc['calories'],
      protein: doc['protein'],
      fat: doc['fat'],
      carbs: doc['carbs'],
      sugar: doc['sugar'],
      date: doc['date'],
    );
  }

  Future<Future<DocumentSnapshot<Map<String, dynamic>>>> saveToFirestore(
      DateTime date) async {
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
          .doc(mealName)

          .set({
        'mealName': mealName,
        'mealType': mealType,
        'quantity': quantity,
        'calories': calories,
        'protein': protein,
        'fat': fat,
        'carbs': carbs,
        'sugar': sugar,
        'date': date,
      });
    var res = FirebaseFirestore.instance
        .collection("users")
        .doc(userController.id)
        .get();
    return res;
  }

  Future<Future<DocumentSnapshot<Map<String, dynamic>>>> deleteFromFirestore(
      DateTime date) async {
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

}
