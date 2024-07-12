import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../../core/progress_dialog_utils.dart';
import '../../main.dart';
import '../../model/user controller.dart';
import '../mainscreen/main_screen.dart';
import '../sign_up/user_model.dart';

class SigningController extends GetxController {
  var authService = FirebaseAuth.instance;
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  AppUserController userController = Get.find();

  final formKey = GlobalKey<FormState>();
  var email = ''.obs;
  var password = ''.obs;

  late String name;
  FirebaseUser? currentUser;

  void setEmail(String value) => email.value = value;
  void setPassword(String value) => password.value = value;

  bool obsecure = true;

  void changeVisibility() {
    obsecure = !obsecure;
    update();
  }

  List<String> parts = [];
  int year = 0;
  int age = 0;

  Future<void> signInWithEmailAndPassword(BuildContext context) async {
    ProgressDialogUtils.showLoading(context, "Loading..");
    CollectionReference users = firestore.collection('users');
    QuerySnapshot querySnapshot;
    DocumentSnapshot doc;

    await authService
        .signInWithEmailAndPassword(
            email: email.value, password: password.value)
        .then((userCredential) async => {
              sharedPref!.setString('id', userCredential.user!.uid),
              querySnapshot = await users
                  .where('id', isEqualTo: userCredential.user?.uid)
                  .get(),
              doc = querySnapshot.docs.first,
              userController.id = doc['id'],
              userController.email = email.value,
              userController.password = password.value,
              userController.fullName = doc['fullname'],
              userController.diseasesList = doc['diseasesList'],
              userController.allergiesList = doc['allergiesList'],
              userController.dateOfBirth = doc['dateOfBirth'],
              userController.gender = doc['gender'],
              userController.height = doc['height'],
              userController.weight = doc['weight'],
              userController.fitnessLevel = doc['fitnessLevel'],
              userController.fitnessGoal = doc['fitnessGoal'],
              userController.sleepIntake = doc['sleepIntake'],
              userController.waterIntake = doc['waterIntake'],

              parts = userController.dateOfBirth.split('/'),
              // Extract the year part
              year = int.parse(parts[2]),
              age = DateTime.now().year - year,
              userController.dailyIntake = userController.calculateNutrition(
                  userController.gender,
                  double.parse(userController.weight),
                  double.parse(userController.height),
                  age),

              ProgressDialogUtils.hideLoading(context),
              Get.off(() => MainScreen()),
              sharedPref!.setBool('formCompleted',true)

    })
        .onError((error, stackTrace) => {
              ProgressDialogUtils.hideLoading(context),
              ProgressDialogUtils.showMessage(
                  context: context,
                  message: error.toString(),
                  posActionText: "Ok",
                  posAction: () {
                    Get.back();
                  })
            });
  }
}
