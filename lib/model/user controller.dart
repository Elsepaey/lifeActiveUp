import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:nutrifit/core/dailystatics.dart';
import 'package:nutrifit/pages/sign_up/user_model.dart';

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

  @override
  Future<void> onInit() async {
    var gg=await FirebaseFirestore.instance
        .collection("users")
        .doc("userController.id").get();

    FirebaseUser user=FirebaseUser.fromFirestore(gg.data()!);

    // TODO: implement onInit
    super.onInit();
  }
}
