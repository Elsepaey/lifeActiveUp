import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nutrifit/core/themes.dart';
import 'package:nutrifit/pages/hompage/homePageController.dart';
import 'package:nutrifit/pages/stepcounter/step-counter.dart';
import 'package:nutrifit/pages/water_tracker/water_view.dart';

import '../../core/dailystatics.dart';
import '../../model/user controller.dart';
import '../sleep_tracker/sleep_view.dart';
import '../stepcounter/step_counter_controller.dart';

class HomePage extends StatelessWidget {
  final HomeController controller = Get.put(HomeController());
  AppUserController userController = Get.find();
  StepController stepsController =        Get.put(StepController(),permanent: true);


   DailyStatics staticsController =
      Get.put(DailyStatics(), permanent: true);

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(
            top: screenHeight / 66,
            bottom: screenHeight / 10,
            left: screenWidth / 60,
            right: screenWidth / 60),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CarouselSlider(
                options: CarouselOptions(
                  height: screenHeight / 6,
                  autoPlay: true,
                  viewportFraction: 1.0,
                  enableInfiniteScroll: true,
                  scrollDirection: Axis.horizontal,
                  pauseAutoPlayOnTouch: true,
                  autoPlayAnimationDuration: const Duration(milliseconds: 1300),
                ),
                items: controller.sliderImages.map((image) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                          width: screenWidth,
                          margin: const EdgeInsets.symmetric(horizontal: 4.0),

                          child: Image(
                            image: image,
                            fit: BoxFit.fill,
                          ));
                    },
                  );
                }).toList(),
              ),
              SizedBox(
                height: screenHeight / 29,
              ),
              Text(
                "Welcome",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: MyTheme.primary_color),
              ),
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: MyTheme.primary_color,
                    child: const Icon(Icons.person_rounded),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(userController.fullName)
                ],
              ),
              SizedBox(
                height: screenHeight / 50,
              ),
              GetX<DailyStatics>(
                builder: (controller) => Container(
                  padding:  EdgeInsets.all(screenHeight/150),
                  height: screenHeight / 7,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 3,
                          blurRadius: 4,
                          offset:
                              const Offset(0, 1), // changes position of shadow
                        ),
                      ]),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Text(
                        "My Daily Calories",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: screenHeight / 150,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                           Text(
                            "Calories",
                            style: TextStyle(fontSize: screenHeight/55),
                          ),
                          Text(
                              "${staticsController.totalCalories.value.truncateToDouble()}/${userController.dailyIntake["total_calories"]} kcal",style: TextStyle(fontSize: screenHeight/55),)
                        ],
                      ),
                      LinearProgressIndicator(
                        value: (staticsController.totalCalories.value) /
                            userController.dailyIntake['total_calories']!,
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
                               Text("protein",style: TextStyle(fontSize: screenHeight/55),),
                              Text(
                                  "${staticsController.totalProtein.value.truncateToDouble()}/${userController.dailyIntake["protein"]}",style: TextStyle(fontSize: screenHeight/55),),
                              SizedBox(
                                  width: screenWidth / 6,
                                  child: LinearProgressIndicator(
                                    value:
                                        (staticsController.totalProtein.value) /
                                            300,
                                  )),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                               Text("fats",style: TextStyle(fontSize: screenHeight/55),),
                              Text(
                                  "${staticsController.totalFats.value.truncateToDouble()}/${userController.dailyIntake["fat"]}",style: TextStyle(fontSize: screenHeight/55),),
                              SizedBox(
                                  width: screenWidth / 6,
                                  child: LinearProgressIndicator(
                                    value: (staticsController.totalFats.value) /
                                        userController.dailyIntake["fat"]!,
                                  )),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                               Text("carbs",style: TextStyle(fontSize: screenHeight/55),),
                              Text(
                                  "${staticsController.totalCarbs.value.truncateToDouble()}/${userController.dailyIntake["carbohydrates"]}",style: TextStyle(fontSize: screenHeight/55),),
                              SizedBox(
                                  width: screenWidth / 6,
                                  child: LinearProgressIndicator(
                                    value:
                                        (staticsController.totalCarbs.value) /
                                            userController
                                                .dailyIntake["carbohydrates"]!,
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
                height: screenHeight / 50,
              ),
              Container(
                //padding: EdgeInsets.all(screenHeight/160),
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:  EdgeInsets.all(screenHeight/150),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Current Workout Plan",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: screenHeight / 200,
                          ),
                          const Text(
                            "Functional Fitness",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w500),
                          ),
                           Text(". 12 week",style: TextStyle(fontSize: screenHeight/55),),
                           Text(".  beginner",style: TextStyle(fontSize: screenHeight/55),),
                          SizedBox(
                            height: screenHeight / 130,
                          ),
                          SizedBox(
                              width: screenWidth / 3,
                              child: const LinearProgressIndicator(
                                value: 0.1,
                              ))
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child:  ClipRRect(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.zero,
                              topRight: Radius.circular(12),
                              bottomLeft: Radius.zero,
                              bottomRight: Radius.circular(12)), // Image border
                          // Image radius
                          child: Image(
                            image:
                                AssetImage("assets/images/fitness preview.png"),
                          )),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: screenHeight / 50,
              ),
              Container(
                padding:  EdgeInsets.all(screenHeight/150),
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
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Step Counter",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        InkWell(
                          child: Text(
                            "see details ",
                            style: TextStyle(
                                color: Colors.indigo[400],
                                fontWeight: FontWeight.bold),
                          ),
                          onTap: () {
                            Get.to(() => StepCounter());
                          },
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Obx(() => Text(
                                  '${stepsController.steps.value}',
                                  style: TextStyle(
                                      fontSize: screenHeight/45,
                                      fontWeight: FontWeight.bold),
                                )),
                            Text("Today Steps",style: TextStyle(fontSize: screenHeight/55),),
                          ],
                        ),
                        ImageIcon(
                          AssetImage("assets/images/running.png"),
                          size: screenHeight/12,
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: screenHeight / 50,
              ),
              Container(
                padding:  EdgeInsets.all(screenHeight/150),
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
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Water Tracker",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        InkWell(
                          child: Text(
                            "see details ",
                            style: TextStyle(
                                color: Colors.indigo[400],
                                fontWeight: FontWeight.bold),
                          ),
                          onTap: () {
                            Get.to(() => WaterView());
                          },
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text(
                              "${staticsController.waterIntakes}/${(int.parse(userController.waterIntake[0])??0) * 1000}  ml",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text("Today Intake"),
                          ],
                        ),
                        ImageIcon(
                          AssetImage("assets/images/icons8-water-64.png"),
                          size: screenHeight/12,
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: screenHeight / 50,
              ),
              Container(
                padding:  EdgeInsets.all(screenHeight/150),
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
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Sleep Tracker",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        InkWell(
                          child: Text(
                            "see details ",
                            style: TextStyle(
                                color: Colors.indigo[400],
                                fontWeight: FontWeight.bold),
                          ),
                          onTap: () {
                            Get.to(() => SleepView());
                          },
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text("Log Sleep Intake ",style: TextStyle(fontWeight: FontWeight.w500,fontSize: screenHeight/57),),
                            Text(
                              "& Set Alarms",style: TextStyle(fontWeight: FontWeight.w500,fontSize: screenHeight/57
                            )),
                          ],
                        ),
                        ImageIcon(
                          AssetImage("assets/icons/sleep_1422872.png"),
                          size: screenHeight/12,
                        )
                      ],
                    )
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
