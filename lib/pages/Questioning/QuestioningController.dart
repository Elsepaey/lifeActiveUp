import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../../core/progress_dialog_utils.dart';
import '../../databases/database.dart';
import '../../model/user controller.dart';
import '../mainscreen/mainscreen.dart';
import '../sign_up/user_model.dart';

class QuestioningController extends GetxController {

  FirebaseUser? newUser;
  AppUserController userController = Get.find();

  RxString buttonText='Next'.obs;
  RxDouble progressValue=0.0.obs;
//Gender
  RxString gender = ''.obs;
//height&Weight
  PageController pageController = PageController();
  int currentPageIndex = 0;
  final weightController = TextEditingController();
  final heightController = TextEditingController();
  RxString weight = ''.obs;
  RxString height = ''.obs;
  //Birth
  RxString birth = "--/--/--".obs;
  //Diseases
  List<String> diseases = [
    'Diabetes',
    'Hypertension',
    'Heart Disease',
    'Asthma',
    'Arthritis',
    'Cancer',
    'Obesity',
  ];
  List<bool> diseasesCheckedList = List.generate(7, (index) => false).obs;
  List<String> selectedDiseases =[];

  //Allergies
  List<String> allergies = [
    'Peanuts',
    'Milk',
    'Eggs',
    'Shellfish',
    'Soy',
    'Wheat',
    'Fish',
    'Tree nuts',
  ];
  List<bool> allergiesCheckedList = List.generate(8, (index) => false).obs;
  List<String> selectedAllergies = [];


//Fitness
  List<String> levels=["Beginner","Intermediate","Advanced"];
  RxString level="Beginner".obs;
  List<String> fitnessGoals=["Weight loss","Weight gain","muscles gain"];
  RxString fitnessGoal="Weight loss".obs;
  List<String> waterIntakes=["1 Litre","1.5 Litre","2 Litre"];
  RxString waterIntake="1 Litre".obs;
  List<String> sleepIntakes=["8 hours","6 hours","4 hours"];
  RxString sleepIntake="8 hours".obs;


  void changeGender(String value) {
    gender.value = value;
  }

  Future<void> toNext(BuildContext context) async {

    if (currentPageIndex < 5) {
      pageController.animateToPage(currentPageIndex + 1,
          duration: const Duration(milliseconds: 500), curve: Curves.ease);
    }
    // else if(currentPageIndex==4)
    //   {
    //     buttonText.value='Submit';
    //
    //   }
      else {
      //Handle if last page
      //For example, navigate to next screen or perform any action
      for (int i = 0; i < allergiesCheckedList.length; i++) {
        if (allergiesCheckedList[i]) {
          selectedAllergies.add(allergies[i]);
        }
      }
      for (int i = 0; i < diseasesCheckedList.length; i++) {
        if (diseasesCheckedList[i]) {
          selectedDiseases.add(diseases[i]);
        }
      }

      submit(context);

    }
  }

  void toPrevious() {
    if (currentPageIndex > 0) {
      pageController.animateToPage(currentPageIndex - 1,
          duration: const Duration(milliseconds: 500), curve: Curves.ease);
    } else {
      // Handle if first page
      // For example, navigate to previous screen or perform any action
    }
  }
  Future<void> submit(BuildContext context) async {
    newUser = FirebaseUser(
        id: userController.id,
        email: userController.email,
        fullName: userController.fullName,
        gender: gender.value,
        height: height.value,
        weight: weight.value,
        password: userController.password,
        dateOfBirth: birth.value,
        allergiesList: selectedAllergies,
        diseasesList: selectedDiseases,
    fitnessLevel: level.value,
      fitnessGoal: fitnessGoal.value,
      sleepIntake: sleepIntake.value,
      waterIntake: waterIntake.value
    );
    var insertedUser = await DB.addUser(newUser!);
    if (insertedUser != null) {
      userController.gender = gender.value;
      userController.height=height.value;
    userController.weight=weight.value;
      userController.dateOfBirth = birth.value;
      userController.diseasesList = selectedDiseases;
      userController.allergiesList = selectedAllergies;
      userController.fitnessLevel=level.value;
      userController.fitnessGoal=fitnessGoal.value;
      userController.sleepIntake=sleepIntake.value;
      userController.waterIntake=waterIntake.value;

      Get.off(() => MainScreen());
    } else {
      ProgressDialogUtils.showMessage(
          context: context,
          message: "Not Inserted",
          posAction: () => {Navigator.pop(context)},
          posActionText: "ok");
    }
  }
}
