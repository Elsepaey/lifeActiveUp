import 'package:get/get.dart';

import '../databases/database.dart';

class DailyStatics extends GetxController{
  static getTotalNutrient(String nutrient) async {

    List allItems = [
      await DB.getLoggedMeals("Breakfast", DateTime.now()),
      await DB.getLoggedMeals("Dinner", DateTime.now()),
      await DB.getLoggedMeals("Launch", DateTime.now()),
      await DB.getLoggedMeals("Snack", DateTime.now()),
    ];
    double total = 0;
    for (var element in allItems) {
      for (var doc in element.docs) {
        double count = doc[nutrient];
        total = (total + count);
      }
    }
    print(total);
    return total;
  }
   getTotalWaterIntakes() async {
    List intakes= [];
    intakes.add(await DB.getLoggedWater(DateTime.now()));
    int total = 0;
    for (var element in intakes) {
      for (var doc in element.docs) {
        int count = doc["quantity"];
        total = (total + count);
      }
    }
    waterIntakes.value=total;

  }
  void updateWaterIntakes(int quantity){
    waterIntakes.value+=quantity;

  }
   RxDouble totalCalories = 0.0.obs;
   RxDouble totalProtein = 0.0.obs;
   RxDouble totalFats = 0.0.obs;
   RxDouble totalCarbs = 0.0.obs;
   getTodayStatics() async {
     totalCalories.value = await getTotalNutrient("calories");
     totalProtein .value= await getTotalNutrient("protein");
     totalFats.value = await getTotalNutrient("fat");
     totalCarbs.value = await getTotalNutrient("carbs");
     waterIntakes.value=await getTotalWaterIntakes();

  }
  void updateStatics(double cal,double prot,double fat,double carbs)
  {
    totalCalories.value+=cal;
    totalProtein.value+=prot;
    totalFats.value+=fat;
    totalCarbs.value+=carbs;
    update();
  }
  RxInt waterIntakes=0.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    getTodayStatics();
    getTotalWaterIntakes();
    super.onInit();
  }
}

