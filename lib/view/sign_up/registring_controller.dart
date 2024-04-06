import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:nutrifit/core/progress_dialog_utils.dart';
import 'package:nutrifit/main.dart';
import 'package:nutrifit/model/user%20controller.dart';
import 'package:nutrifit/view/Questioning/Questioning.dart';

class RegisterController extends GetxController {
  var authService = FirebaseAuth.instance;
  AppUserController userController = Get.find();
  bool obsecure = true;
  var email = ''.obs;
  var password = ''.obs;
  var fullName = ''.obs;
  void setEmail(String value) => email.value = value;
  void setPassword(String value) => password.value = value;
  void setFullName(String value) => fullName.value = value;

  void changeVisibility() {
    obsecure = !obsecure;
    update();
  }

  Future<void> register(BuildContext context) async {
    ProgressDialogUtils.showLoading(context, "Loading..");
    authService
        .createUserWithEmailAndPassword(
            email: email.value, password: password.value)
        .then((userCredential) async => {
              userController.id = userCredential.user!.uid,
              userController.password = password.value,
              userController.fullName = fullName.value,
              userController.email = email.value,
              ProgressDialogUtils.hideLoading(context),
              sharedPref!.setString('id', userCredential.user!.uid),
              Get.off(() => Questioning()),
            })
        .onError((error, stackTrace) => {
              ProgressDialogUtils.hideLoading(context),
              ProgressDialogUtils.showMessage(
                  context: context,
                  message: error.toString(),
                  posAction: (context) => {Get.back()},
                  posActionText: "ok"),
            });
  }
}
