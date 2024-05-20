import 'package:get/get.dart';
import 'package:nutrifit/pages/water_tracker/loggedwater.dart';

import '../../databases/database.dart';

class WaterController extends GetxController{
  DateTime date = DateTime.now();
  RxInt checked = 0.obs;
  int currentPageIndex = 0;

  void changeViewIndex() {
    currentPageIndex = checked.value;
    update();
  }

  buildViewContainer() {
    return ShowLoggedWater(checkedTime: date);
  }
  getLoggedWater(DateTime date) {

    return DB.getLoggedWater(date);
  }

}