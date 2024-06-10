import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nutrifit/pages/water_tracker/water_controller.dart';

import '../../core/dailystatics.dart';
import '../../core/themes.dart';
import '../../model/user controller.dart';

class WaterView extends StatelessWidget {
  WaterView({super.key});
  AppUserController userController = Get.find();
  DailyStatics staticsController = Get.find();

  WaterController controller = Get.put(WaterController());
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(
                     "assets/images/drops.png"),   opacity: 0.3   ),),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: const Text("Water Tracker"),
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
              const SizedBox(height: 45,),
              // Padding(
              //   padding: const EdgeInsets.symmetric(vertical: 18.0),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceAround,
              //     children: [
              //       SvgPicture.asset(
              //         'assets/images/water-drop-svgrepo-com.svg',
              //         semanticsLabel: 'My SVG Image',
              //         height: 80,
              //         width: 40,
              //       ),
              //       SvgPicture.asset(
              //         'assets/images/water-drop-svgrepo-com.svg',
              //         semanticsLabel: 'My SVG Image',
              //         height: 80,
              //         width: 40,
              //       ),SvgPicture.asset(
              //         'assets/images/water-drop-svgrepo-com.svg',
              //         semanticsLabel: 'My SVG Image',
              //         height: 80,
              //         width: 40,
              //       ),SvgPicture.asset(
              //         'assets/images/water-drop-svgrepo-com.svg',
              //         semanticsLabel: 'My SVG Image',
              //         height: 80,
              //         width: 40,
              //       ),
              //     ],
              //   ),
              // ),
              // Image(image: AssetImage("assets/images/water.png")),
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
                            const Text(
                              "Target",
                              style: TextStyle(fontSize: 16),
                            ),
                            const SizedBox(
                              height: 7,
                            ),
                            Text(
                              "${int.parse(userController.waterIntake[0])*1000} ml",
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  GetX<DailyStatics>(builder: (controller)=>                  SizedBox(
                    height: 150.0,
                    width: 150,
                    child: Stack(
                      children: <Widget>[
                        SizedBox(
                          width: 150,
                          height: 150,
                          child: CircularProgressIndicator(
                            color: MyTheme.primary_color,
                           // color: Colors.blue.shade300,
                            backgroundColor: Colors.grey.shade300,
                            strokeWidth: 10,
                            value: staticsController.waterIntakes/(int.parse(userController.waterIntake[0])*1000),
                          ),
                        ),
                        Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [const Text("Today Intake"), Text("${staticsController.waterIntakes} ml")],
                            )),
                      ],
                    ),
                  ),
                  )
                ],
              ),

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
      ),
    );
  }
}
