import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class AppUserController extends GetxController {
  String id = '';
  String fullName = '';
  String email = '';
  String password = '';
  String gender = '';
  String dateOfBirth = '';
  List<dynamic> diseasesList = [];
  List<dynamic> allergiesList = [];
  String fitnessLevel='';
  String fitnessGoal='';
  String sleepIntake='';
  String waterIntake='';
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
}
