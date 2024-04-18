import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nutrifit/core/themes.dart';
import 'package:nutrifit/pages/mealLogDetails/mealdetailscontroller.dart';

class MealLogDetails extends StatelessWidget {
  MealLogDetails({super.key, required this.mealType});
  final String mealType;
  MealDetailsController controller = Get.put(MealDetailsController());
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        forceMaterialTransparency: true,
        title: Text(
          "Log $mealType Items",
          style: TextStyle(),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          SizedBox(
            height: screenHeight / 50,
          ),
          Container(
            margin: EdgeInsets.all(8),
            padding: EdgeInsets.all(8),
            height: screenHeight / 7,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 5,
                    blurRadius: 4,
                    offset: Offset(0, 1), // changes position of shadow
                  ),
                ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
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
                    Text("20/1800 kcal")
                  ],
                ),
                LinearProgressIndicator(
                  value: 0.1,
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
                        Text("18/300"),
                        SizedBox(
                            width: screenWidth / 6,
                            child: LinearProgressIndicator(
                              value: 0.2,
                            )),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("fats"),
                        Text("18/300"),
                        SizedBox(
                            width: screenWidth / 6,
                            child: LinearProgressIndicator(
                              value: 0.2,
                            )),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("carbs"),
                        Text("18/300"),
                        SizedBox(
                            width: screenWidth / 6,
                            child: LinearProgressIndicator(
                              value: 0.2,
                            )),
                      ],
                    ),
                    //CircularProgressIndicator(value: 0.4,color: Colors.black,backgroundColor: Colors.blue,)
                  ],
                )
              ],
            ),
          ),

          Container(
              margin: EdgeInsets.only(
                  top: screenHeight / 40, bottom: screenWidth / 40),
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
                                child: Center(child: Text("search for a meal")),
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
                                child: Center(child: Text("recently added")),
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
                                child: Center(child: Text("favourites")),
                              )),
                        ],
                      ))),
          SizedBox(
              width: screenWidth,
              height: screenHeight / 1.6,
              child: GetBuilder<MealDetailsController>(builder: (controller)=>controller.buildMealsContainer(),))
          // Padding(padding: EdgeInsets.all(8),child:
          //   GetBuilder<MealDetailsController>(builder: (controller)=>controller.buildMealsContainer(),),)
        ],
      ),
    );
  }
}
