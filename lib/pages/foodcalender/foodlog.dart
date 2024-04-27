import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nutrifit/core/themes.dart';
import 'package:nutrifit/pages/foodcalender/foodlogcontroller.dart';
import 'package:nutrifit/pages/widgets/widgets.dart';

class Foodlog extends StatelessWidget {
  Foodlog({super.key});
  final FoodLogController controller =
      Get.put(FoodLogController(), permanent: true);
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        children: [
          CalendarTimeline(
            initialDate: DateTime.now(),
            firstDate: DateTime.now().subtract(const Duration(days: 182)),
            lastDate: DateTime.now().add(const Duration(days: 180)),
            onDateSelected: (date) {
              controller.date = date;
              controller.changeViewIndex();
            },
            leftMargin: 20,
            monthColor: Colors.black,
            dayColor: Colors.black,
            activeDayColor: Colors.white,
            activeBackgroundDayColor: MyTheme.primary_color,
            dotsColor: Colors.white,
            selectableDayPredicate: (date) => true,
            locale: 'en_ISO',
          ),
          Container(
            margin: EdgeInsets.only(
              top: screenHeight / 40,
            ),
            // padding: EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              // borderRadius: BorderRadius.all(Radius.circular(8))
            ),
            child: GetX<FoodLogController>(
              builder: (controller) => Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      decoration: BoxDecoration(
                          color: controller.checked.value == 0
                              ? MyTheme.primary_color.withOpacity(0.8)
                              : Colors.transparent,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(8))),
                      padding: const EdgeInsets.all(3),
                      child: InkWell(
                        onTap: () {
                          controller.checked.value = 0;
                          controller.changeViewIndex();
                        },
                        borderRadius: BorderRadius.circular(50),
                        child: CustomWidgets.mealTypeBox(
                            title: "Breakfast",
                            startTime: "7:00",
                            endTime: "12:00",
                            checked: controller.checked.value == 0),
                      )),
                  Container(
                      decoration: BoxDecoration(
                          color: controller.checked.value == 1
                              ? MyTheme.primary_color
                              : Colors.transparent,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(8))),
                      padding: const EdgeInsets.all(3),
                      child: InkWell(
                        onTap: () {
                          controller.checked.value = 1;
                          controller.changeViewIndex();
                        },
                        borderRadius: BorderRadius.circular(50),
                        child: CustomWidgets.mealTypeBox(
                            title: "Lunch",
                            startTime: "12:00",
                            endTime: "07:00",
                            checked: controller.checked.value == 1),
                      )),
                  Container(
                      decoration: BoxDecoration(
                          color: controller.checked.value == 2
                              ? MyTheme.primary_color
                              : Colors.transparent,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(8))),
                      padding: const EdgeInsets.all(3),
                      child: InkWell(
                        onTap: () {
                          controller.checked.value = 2;
                          controller.changeViewIndex();
                        },
                        borderRadius: BorderRadius.circular(50),
                        child: CustomWidgets.mealTypeBox(
                            title: "Dinner",
                            startTime: "07:00",
                            endTime: "12:00",
                            checked: controller.checked.value == 2),
                      )),
                  Container(
                      decoration: BoxDecoration(
                          color: controller.checked.value == 3
                              ? MyTheme.primary_color
                              : Colors.transparent,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(8))),
                      padding: const EdgeInsets.all(3),
                      child: InkWell(
                        onTap: () {
                          controller.checked.value = 3;
                          controller.changeViewIndex();
                        },
                        borderRadius: BorderRadius.circular(50),
                        child: CustomWidgets.mealTypeBox(
                            title: "Snack",
                            startTime: "00",
                            endTime: "00 ",
                            checked: controller.checked.value == 3),
                      ))
                ],
              ),
            ),
          ),
          SizedBox(height: screenHeight / 55),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
                width: screenWidth,
                height: screenHeight / 1.8,
                child: GetBuilder<FoodLogController>(
                    builder: (controller) => controller.buildMealsContainer())),
          )


        ],
      ),
    );
  }
}
