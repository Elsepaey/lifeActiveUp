import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nutrifit/core/themes.dart';
import 'package:nutrifit/pages/foodcalender/foodlogcontroller.dart';
import 'package:nutrifit/pages/widgets/widgets.dart';

class MealsCalender extends StatelessWidget {
  MealsCalender({super.key});
  final FoodLogController controller = Get.put(FoodLogController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [
          CalendarTimeline(
            initialDate: DateTime.now(),
            firstDate: DateTime.now().subtract(const Duration(days: 182)),
            lastDate: DateTime.now().add(const Duration(days: 30)),
            onDateSelected: (date) {},
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
            margin: const EdgeInsets.only(top: 8, right: 3, left: 3),
            // padding: EdgeInsets.symmetric(horizontal: 5),
            decoration: const BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.all(Radius.circular(8))),
            child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: GetX<FoodLogController>(
                  builder: (controller) => Row(
                    children: [
                      Container(
                          decoration: BoxDecoration(
                              color: controller.checked.value == 0
                                  ? Colors.green
                                  : Colors.transparent,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(8))),
                          padding: const EdgeInsets.all(3),
                          child: InkWell(
                            onTap: () {
                              controller.checked.value = 0;
                            },
                            borderRadius: BorderRadius.circular(50),
                            child: CustomWidgets.mealTypeBox(
                                title: "Breakfast",
                                startTime: "10:00",
                                endTime: "10:30",
                                checked: controller.checked.value == 0),
                          )),
                      Container(
                          decoration: BoxDecoration(
                              color: controller.checked.value == 1
                                  ? Colors.green
                                  : Colors.transparent,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(8))),
                          padding: const EdgeInsets.all(3),
                          child: InkWell(
                            onTap: () {
                              controller.checked.value = 1;
                            },
                            borderRadius: BorderRadius.circular(50),
                            child: CustomWidgets.mealTypeBox(
                                title: "Lunch",
                                startTime: "04:00",
                                endTime: "04:30",
                                checked: controller.checked.value == 1),
                          )),
                      Container(
                          decoration: BoxDecoration(
                              color: controller.checked.value == 2
                                  ? Colors.green
                                  : Colors.transparent,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(8))),
                          padding: const EdgeInsets.all(3),
                          child: InkWell(
                            onTap: () {
                              controller.checked.value = 2;
                            },
                            borderRadius: BorderRadius.circular(50),
                            child: CustomWidgets.mealTypeBox(
                                title: "Dinner",
                                startTime: "09:00",
                                endTime: "09:30",
                                checked: controller.checked.value == 2),
                          )),
                      Container(
                          decoration: BoxDecoration(
                              color: controller.checked.value == 3
                                  ? Colors.green
                                  : Colors.transparent,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(8))),
                          padding: const EdgeInsets.all(3),
                          child: InkWell(
                            onTap: () {
                              controller.checked.value = 3;
                            },
                            borderRadius: BorderRadius.circular(50),
                            child: CustomWidgets.mealTypeBox(
                                title: "Snack",
                                startTime: "10:00",
                                endTime: "10:30",
                                checked: controller.checked.value == 3),
                          ))
                    ],
                  ),
                )),
          )
        ],
      ),
    );
  }
}
