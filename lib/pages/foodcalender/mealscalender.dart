import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter/material.dart';
import 'package:nutrifit/core/themes.dart';

class MealsCalender extends StatelessWidget {
  const MealsCalender({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(8),
    child: Column(
      children: [
        CalendarTimeline(
          initialDate: DateTime.now(),
          firstDate: DateTime.now().subtract(const Duration(days: 365)),
          lastDate: DateTime.now().add(const Duration(days: 365)),
          onDateSelected: (date) {

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


      ],
    ),);
  }
}
