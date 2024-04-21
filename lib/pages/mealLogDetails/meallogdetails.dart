import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nutrifit/core/themes.dart';
import 'package:nutrifit/pages/foodcalender/foodlogcontroller.dart';
import 'package:nutrifit/pages/mealLogDetails/mealdetailscontroller.dart';

import '../../core/dailystatics.dart';

class MealLogDetails extends StatelessWidget {
  MealLogDetails(
      {super.key, required this.mealType, required this.checkedTime});
  final String mealType;
  final DateTime checkedTime;
  MealDetailsController controller = Get.put(MealDetailsController());
  final FoodLogController foodLogController = Get.put(FoodLogController());
  DailyStatics staticsController=Get.find();

  @override
  Widget build(BuildContext context) {
    controller.mealType = mealType;
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
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
              padding: const EdgeInsets.all(8),
              height: screenHeight / 7,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 5,
                      blurRadius: 4,
                      offset:
                      const Offset(0, 1), // changes position of shadow
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
                      Text(
                        "Calories",
                        style: TextStyle(),
                      ),
                      Text(
                          "${staticsController.totalCalories.value.truncateToDouble()}/1800 kcal")
                    ],
                  ),
                  LinearProgressIndicator(
                    value: (staticsController.totalCalories.value)/300,
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
                          Text("protein"),
                          Text(
                              "${staticsController.totalProtein.value.truncateToDouble()}/300"),
                          SizedBox(
                              width: screenWidth / 6,
                              child:  LinearProgressIndicator(
                                value:(staticsController.totalProtein.value)/300,
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
                              child:  LinearProgressIndicator(
                                value: (staticsController.totalFats.value)/300,
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
                                (staticsController.totalCarbs.value) /
                                    300,
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


          Container(
              margin: EdgeInsets.only(
                  top: screenHeight / 60, bottom: screenWidth / 40),
              // padding: EdgeInsets.symmetric(horizontal: 5),
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Card(

              elevation: 0,
              shadowColor: Colors.transparent,
              color: Colors.grey.shade100,
              child: Container(
                  decoration: BoxDecoration(
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
          ),
          Row(
            children: [
              GetBuilder<MealDetailsController>(
                  builder: (controller) => Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: SizedBox(
                          height: screenHeight / 11,
                          width: screenWidth/1.6,
                          child:
              ListView.builder(
                itemCount: controller.choosedItems.length,
                itemBuilder: (context,index){
                return           Container(
                  margin: EdgeInsets.symmetric(vertical: 1),
                  decoration: BoxDecoration(
                    color: MyTheme.primary_color,
borderRadius: BorderRadius.circular(12)
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  height: screenHeight/25,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(controller.choosedItems[index]),
                      IconButton(icon: Icon(Icons.highlight_remove,color: Colors.red,size: screenWidth/16,), onPressed: () { controller.removeFromChoosed(index); },
                      )
                    ],
                  ),
                );

                },)                    ),
                      )),
            ],
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 8,
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromRGBO(49, 220, 205, 1.0),
        tooltip: 'Increment',
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        onPressed: () {
            Get.back();
  foodLogController.changeViewIndex();
        },
        child: Text("Done"),
      ),
    );
  }
}
