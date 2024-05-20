import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nutrifit/pages/water_tracker/Addingdialoge.dart';
import 'package:nutrifit/pages/water_tracker/water_controller.dart';

import '../../core/themes.dart';

class WaterView extends StatelessWidget {
  WaterView({super.key});
  WaterController controller = Get.put(WaterController());
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Water Tracker"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            Image(image: AssetImage("assets/images/water.png")),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Card(
                  child: SizedBox(
                    width: 140,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Target",
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            "2000 ml",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 150.0,
                  width: 150,
                  child: Stack(
                    children: <Widget>[
                      Container(
                        width: 150,
                        height: 150,
                        child: new CircularProgressIndicator(
                          color: Colors.blue.shade300,
                          backgroundColor: Colors.grey.shade300,
                          strokeWidth: 15,
                          value: 0.4,
                        ),
                      ),
                      Center(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [Text("Today Intake"), Text("1200 ml")],
                      )),
                    ],
                  ),
                ),
              ],
            ),
            // ElevatedButton(
            //     onPressed: () {
            //       showDialog(
            //           context: context,
            //           builder: (BuildContext context) =>
            //               AddingWaterDialog(date: controller.date));
            //     },
            //     child: Text("Add Intake +")),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                  width: screenWidth,
                  height: screenHeight / 3.5,
                  child: GetBuilder<WaterController>(
                      builder: (controller) =>
                          controller.buildViewContainer())),
            )
          ],
        ),
      ),
    );
  }
}
