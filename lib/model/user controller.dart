import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class AppUserController extends GetxController {
  String id = '';
  String fullName = '';
  String email = '';
  String password = '';
  String gender = '';
  String height='';
  String weight='';
  String dateOfBirth = '';
  List<dynamic> diseasesList = [];
  List<dynamic> allergiesList = [];
  String fitnessLevel='';
  String fitnessGoal='';
  String sleepIntake='';
  String waterIntake='';

  //daily intake
  Map<String, double> dailyIntake={};
  Map<String, double> calculateNutrition(String gender, double weight, double height, int age) {
    double? bmr;

    if (gender.toLowerCase() == 'male') {
      bmr = 10 * weight + 6.25 * height - 5 * age + 5;
    } else if (gender.toLowerCase() == 'female') {
      bmr = 10 * weight + 6.25 * height - 5 * age - 161;
    }

    double activityLevel = 1.55; // Assuming moderate activity level
    double tdee = bmr! * activityLevel;

    double protein = 0.8 * weight; // Protein requirement: 0.8 grams per kg of body weight
    double fat = 0.25 * tdee / 9; // Fat requirement: 25% of total calorie intake, 1 gram of fat = 9 calories
    double carbohydrates = (tdee - (protein * 4) - (fat * 9)) / 4; // Carbohydrate requirement: remaining calories from TDEE

    double saturatedFat = 0.1 * tdee / 9; // Saturated Fat Content: 10% of total calorie intake
    int cholesterol = 300; // Cholesterol Content: Assuming 300mg per day
    int sodium = 2300; // Sodium Content: Assuming 2300mg per day
    int fiber = 25; // Fiber Content: Assuming 25 grams per day
    double sugar = 0.1 * tdee / 4; // Sugar Content: 10% of total calorie intake

    return {
      'total_calories': tdee.roundToDouble(),
      'fat': fat.roundToDouble(),
      'saturated_fat': saturatedFat.roundToDouble(),
      'cholesterol': cholesterol.toDouble(),
      'sodium': sodium.toDouble(),
      'carbohydrates': carbohydrates.roundToDouble(),
      'fiber': fiber.toDouble(),
      'sugar': sugar.roundToDouble(),
      'protein': protein.roundToDouble()
    };
  }


  @override
  Future<void> onInit() async {
    var gg=await FirebaseFirestore.instance
        .collection("users")
        .doc("userController.id").get();

    //FirebaseUser user=FirebaseUser.fromFirestore(gg.data()!);

    // TODO: implement onInit
    super.onInit();
  }
}
