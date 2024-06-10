import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nutrifit/pages/workout/workoutfeatures/explorepages/bodymuscles/muscledetails/muscledetailscontroller.dart';
import 'package:nutrifit/pages/workout/workoutfeatures/explorepages/bodymuscles/musclecontainer.dart';
import 'package:nutrifit/pages/workout/workoutfeatures/explorepages/exercises/exerciseWidget.dart';

class MuscleDetails extends StatelessWidget {
  MuscleDetails({super.key, required this.muscle, required this.imagePath});
  MuscleController controller = Get.put(MuscleController());
  String muscle;
  String imagePath;
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: MyTheme.primary_color,
        title: Text(
          "$muscle muscle",
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        //centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 18,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 2,
                    child:
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Main function :-",
                          style: TextStyle(
                              fontSize: screenWidth / 23,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(controller.muscles[muscle]?["Function"]),
                      ],
                    ),
                  ),
                  Expanded(
                      flex: 1,
                      child: MuscleWidget(
                          imagePath: imagePath, size: screenWidth / 3.5))
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Exercises:-",
                    style: TextStyle(
                        fontSize: screenWidth / 23,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  SizedBox(
                    height: screenHeight/8,
                    child: ListView(
                      scrollDirection: Axis.horizontal,

                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ExerciseWidget(
                              title: "Push Up",
                              imagePath: "assets/images/exercises/pushUp.jpg",
                              muscles: const ["chest", "triceps"]),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ExerciseWidget(
                              title: "Blank",
                              imagePath: "assets/images/exercises/Blank.gif",
                              muscles: const ["shoulders", "abs","glutes"]),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Related Machines:-",
                    style: TextStyle(
                        fontSize: screenWidth / 23,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  SizedBox(
                    height: screenHeight/8,
                    child: ListView(
                      scrollDirection: Axis.horizontal,

                      children: [
                        Container(
                          margin: const EdgeInsets.all(4),

                          decoration: BoxDecoration(
                    boxShadow: [
                        BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 4,
                    offset: const Offset(0, 1), // changes position of shadow
                  ),
                ],
                            borderRadius: BorderRadius.circular(22),

                          ),
                          child:
                          const ClipRRect(
                              borderRadius: BorderRadius.all(Radius.circular(12)),// Image border
                              // Image radius
                              child: Image(image: AssetImage("assets/images/machines/lat pulldown.jpg"),fit: BoxFit.fill,),),


                        ),
                        Container(
                          margin: const EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 2,
                                blurRadius: 4,
                                offset: const Offset(0, 1), // changes position of shadow
                              ),
                            ],
                            borderRadius: BorderRadius.circular(22),

                          ),
                          child:
                          const ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(12)),// Image border
                            // Image radius
                            child: Image(image: AssetImage("assets/images/machines/dip station.jpg"),fit: BoxFit.fill,),),


                        ),
                        Container(
                          margin: const EdgeInsets.all(4),

                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 2,
                                blurRadius: 4,
                                offset: const Offset(0, 1), // changes position of shadow
                              ),
                            ],
                            borderRadius: BorderRadius.circular(22),

                          ),
                          child:
                          const ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(12)),// Image border
                            // Image radius
                            child: Image(image: AssetImage("assets/images/machines/lat pulldown.jpg"),fit: BoxFit.fill,),),


                        ),
                        Container(
                          margin: const EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 2,
                                blurRadius: 4,
                                offset: const Offset(0, 1), // changes position of shadow
                              ),
                            ],
                            borderRadius: BorderRadius.circular(22),

                          ),
                          child:
                          const ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(12)),// Image border
                            // Image radius
                            child: Image(image: AssetImage("assets/images/machines/dip station.jpg"),fit: BoxFit.fill,),),


                        ),


                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(height: 12,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Nutrition and Supplements :-",
                    style: TextStyle(
                        fontSize: screenWidth / 23,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(controller.muscles[muscle]?["Nutrition and Supplements"],style: TextStyle(fontSize: screenWidth/30),),
                ],
              ),



            ],
          ),
        ),
      ),
    );
  }
}
