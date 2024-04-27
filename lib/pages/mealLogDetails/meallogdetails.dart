import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nutrifit/core/progress_dialog_utils.dart';
import 'package:nutrifit/core/themes.dart';
import 'package:nutrifit/pages/foodcalender/foodlogcontroller.dart';
import 'package:nutrifit/pages/mealLogDetails/mealdetailscontroller.dart';
import '../../core/dailystatics.dart';
import '../../databases/database.dart';

class MealLogDetails extends StatelessWidget {
  MealLogDetails(
      {super.key, required this.mealType, required this.checkedTime});
  final String mealType;
  final DateTime checkedTime;
  MealDetailsController controller = Get.put(MealDetailsController());
  final FoodLogController foodLogController = Get.put(FoodLogController());
  DailyStatics staticsController = Get.put(DailyStatics());

  @override
  Widget build(BuildContext context) {
    controller.mealType = mealType;
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        forceMaterialTransparency: true,
        title: Text(
          "Log $mealType Items",
          style: const TextStyle(),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          SizedBox(
            height: screenHeight / 50,
          ),
          GetX<DailyStatics>(
            builder: (controller) => Container(
              margin: const EdgeInsets.symmetric(horizontal: 8),
              padding: const EdgeInsets.all(8),
              height: screenHeight / 7,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 3,
                      blurRadius: 4,
                      offset: const Offset(0, 1), // changes position of shadow
                    ),
                  ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "My Daily Calories",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "+ Add food ",
                        style: TextStyle(
                            color: Colors.indigo[400],
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  SizedBox(
                    height: screenHeight / 150,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Calories",
                        style: TextStyle(),
                      ),
                      Text(
                          "${staticsController.totalCalories.value.truncateToDouble()}/1800 kcal")
                    ],
                  ),
                  LinearProgressIndicator(
                    value: (staticsController.totalCalories.value) / 1800,
                  ),
                  SizedBox(
                    height: screenHeight / 200,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("protein"),
                          Text(
                              "${staticsController.totalProtein.value.truncateToDouble()}/300"),
                          SizedBox(
                              width: screenWidth / 6,
                              child: LinearProgressIndicator(
                                value: (staticsController.totalProtein.value) /
                                    300,
                              )),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("fats"),
                          Text(
                              "${staticsController.totalFats.value.truncateToDouble()}/300"),
                          SizedBox(
                              width: screenWidth / 6,
                              child: LinearProgressIndicator(
                                value:
                                    (staticsController.totalFats.value) / 300,
                              )),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("carbs"),
                          Text(
                              "${staticsController.totalCarbs.value.truncateToDouble()}/300"),
                          SizedBox(
                              width: screenWidth / 6,
                              child: LinearProgressIndicator(
                                value:
                                    (staticsController.totalCarbs.value) / 300,
                              )),
                        ],
                      ),
                      //CircularProgressIndicator(value: 0.4,color: Colors.black,backgroundColor: Colors.blue,)
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: screenHeight / 40,
          ),
          Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                // borderRadius: BorderRadius.all(Radius.circular(8))
              ),
              child: GetBuilder<MealDetailsController>(
                  builder: (controller) => Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                              height: screenHeight / 24,
                              width: screenWidth / 3,
                              decoration: BoxDecoration(
                                  color: controller.checked.value == 0
                                      ? MyTheme.primary_color.withOpacity(0.8)
                                      : Colors.transparent,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(8))),
                              padding: const EdgeInsets.all(3),
                              child: InkWell(
                                onTap: () {
                                  controller.checked.value = 0;
                                  controller.changeViewIndex();
                                },
                                borderRadius: BorderRadius.circular(50),
                                child: const Center(
                                    child: Text("search for a meal")),
                              )),
                          Container(
                              height: screenHeight / 24,
                              width: screenWidth / 3,
                              decoration: BoxDecoration(
                                  color: controller.checked.value == 1
                                      ? MyTheme.primary_color
                                      : Colors.transparent,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(8))),
                              padding: const EdgeInsets.all(3),
                              child: InkWell(
                                onTap: () {
                                  controller.checked.value = 1;
                                  controller.changeViewIndex();
                                },
                                borderRadius: BorderRadius.circular(50),
                                child:
                                    const Center(child: Text("recently added")),
                              )),
                          Container(
                              height: screenHeight / 24,
                              width: screenWidth / 3,
                              decoration: BoxDecoration(
                                  color: controller.checked.value == 2
                                      ? MyTheme.primary_color
                                      : Colors.transparent,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(8))),
                              padding: const EdgeInsets.all(3),
                              child: InkWell(
                                onTap: () {
                                  controller.checked.value = 2;
                                  controller.changeViewIndex();
                                },
                                borderRadius: BorderRadius.circular(50),
                                child: const Center(child: Text("favourites")),
                              )),
                        ],
                      ))),
          SizedBox(
            height: screenHeight / 40,
          ),
          Card(
            margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
            elevation: 0,
            shadowColor: Colors.transparent,
            color: Colors.grey.shade100,
            child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20),
                  ),
                ),
                width: screenWidth,
                height: screenHeight / 1.81,
                child: GetBuilder<MealDetailsController>(
                  builder: (controller) =>
                      controller.buildMealsContainer(checkedTime),
                )),
          ),
          Row(
mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment:CrossAxisAlignment.center,
              children: [
              GetBuilder<MealDetailsController>(
                  builder: (controller) => Padding(
                        padding: const EdgeInsets.only(top: 12,left: 4),
                        child: SizedBox(
                            height: screenHeight / 12,
                            width: screenWidth / 1.6,
                            child: ListView.builder(
                              itemCount: controller.choosedItems.length,
                              itemBuilder: (context, index) {
                                return Container(
                                  margin: const EdgeInsets.symmetric(
                                      vertical: 1, horizontal: 2),
                                  decoration: BoxDecoration(
                                      color: MyTheme.primary_color.withOpacity(0.8),
                                      borderRadius: BorderRadius.circular(12)),
                                  padding: const EdgeInsets.only(
                                      left: 6, right: 8, top: 1, bottom: 1),
                                  height: screenHeight / 38,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    //crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        controller.choosedItems[index],
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: screenWidth / 30,
                                        ),
                                      ),
                                      InkWell(
                                          child: Icon(
                                            Icons.delete_forever,
                                            color: Colors.black,
                                            size: screenWidth / 18,
                                          ),
                                          onTap: () {
                                            showDialog(
                                                context: context,
                                                builder: (context) {
                                                  return AlertDialog(
                                                    content: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: Row(
                                                        children: [
                                                          const Text(
                                                            "Remove",
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          ),
                                                          Text(
                                                            " '${controller.choosedItems[index]}'",
                                                            style:
                                                                const TextStyle(
                                                                    color: Colors
                                                                        .black),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    actionsAlignment:
                                                        MainAxisAlignment
                                                            .spaceAround,
                                                    actions: [
                                                      Card(
                                                        child: TextButton(
                                                            onPressed: () {
                                                              Get.back();
                                                            },
                                                            child: const Text(
                                                              "cancel",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .black),
                                                            )),
                                                      ),
                                                      Card(
                                                        child: TextButton(
                                                            onPressed:
                                                                () async {
                                                              ProgressDialogUtils.showLoading(context, "loading")
                                                              ;

                                                              await DB.deleteMeal(
                                                                  controller
                                                                          .choosedItems[
                                                                      index],
                                                                  mealType,
                                                                  checkedTime);
                                                              staticsController.getTodayStatics();

                                                              controller
                                                                  .removeFromChoosed(
                                                                      index);
                                                              ProgressDialogUtils.hideLoading(context);
                                                              Get.back();
                                                            },
                                                            child: const Text(
                                                              "Confirm",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .black),
                                                            )),
                                                      ),
                                                    ],
                                                  );
                                                });
                                          })
                                      // IconButton(icon: Icon(Icons.highlight_remove,color: Colors.red,size: screenWidth/23,), onPressed: () { controller.removeFromChoosed(index); },
                                      // )
                                    ],
                                  ),
                                );
                              },
                            )),
                      )),
            ],
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 8,
        foregroundColor: Colors.white,
        backgroundColor: MyTheme.primary_color,
        // backgroundColor: const Color.fromRGBO(49, 220, 205, 1.0),
        tooltip: 'Increment',
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        onPressed: () {
          Get.back();
          foodLogController.changeViewIndex();
        },
        child: const Text("Done"),
      ),
    );
  }
}
