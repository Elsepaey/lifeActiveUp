import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nutrifit/core/themes.dart';
import 'package:nutrifit/pages/hompage/homePageController.dart';

import '../../core/dailystatics.dart';
import '../../model/user controller.dart';

class HomePage extends StatelessWidget {

  final HomeController controller = Get.put(HomeController());
   AppUserController userController = Get.find();
  final  DailyStatics staticsController = Get.put(DailyStatics(),permanent: true);

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16),
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
                          //padding: EdgeInsets.symmetric(horizontal: 15),

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
                height: screenHeight / 50,
              ),
              Container(
                //padding: EdgeInsets.all(8),
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
                      padding: const EdgeInsets.all(8.0),
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
                          const Text(". 12 week"),
                          const Text(".  beginner"),
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
                    const ClipRRect(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.zero,
                            topRight: Radius.circular(12),
                            bottomLeft: Radius.zero,
                            bottomRight: Radius.circular(12)), // Image border
                        // Image radius
                        child: Image(
                          image: AssetImage(
                              "assets/images/medium-shot-woman-practicing-with-dumbbells.jpg"),
                        ))
                  ],
                ),
              ),
              SizedBox(
                height: screenHeight / 50,
              ),
              // Container(
              //   padding: const EdgeInsets.all(8),
              //   height: screenHeight / 7,
              //   decoration: BoxDecoration(
              //       color: Colors.white,
              //       borderRadius: BorderRadius.circular(12),
              //       boxShadow: [
              //         BoxShadow(
              //           color: Colors.grey.withOpacity(0.3),
              //           spreadRadius: 5,
              //           blurRadius: 4,
              //           offset: const Offset(0, 1), // changes position of shadow
              //         ),
              //       ]),
              // ),
              // ElevatedButton(
              //     onPressed: () {
              //       controller.getTotalNutrient("protein");
              //     },
              //     child: Text("calculateCalories")),
            ],
          ),
        ),
      ),
    );
  }
}
