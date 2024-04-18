import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

import '../../model/user controller.dart';

class Meal {
   AppUserController userController = Get.find();

  String mealName;
  String mealType;
  int quantity;
  int calories;
  int protein;
  int fat;
  int carbs;
  int sugar;
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

  Future<void> saveToFirestore() async {
    await FirebaseFirestore.instance..collection("users")
         .doc("QnQlriNhK0Mpk3P3DiAz").collection('meals').doc(mealName).set({
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
  }
}