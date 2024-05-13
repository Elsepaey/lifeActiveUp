import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:nutrifit/pages/workout/workoutfeatures/explorepages/routines/routinedetails/routinedetails.dart';
import 'package:nutrifit/pages/workout/workoutfeatures/explorepages/routines/routinewidget.dart';

class Routines extends StatelessWidget {
   Routines({super.key});
  Map<String,dynamic> muscles={
    "Broad Shoulders":[
      Muscle(
          name: "Shoulders",
          imagePath: "assets/images/muscles/shoulder.png"),
      Muscle(
          name: "tricebs",
          imagePath: "assets/images/muscles/triceps.png"),
      Muscle(name: "abs", imagePath: "assets/images/muscles/abs.png"),
      Muscle(
          name: "chest", imagePath: "assets/images/muscles/chest.png")
    ],
    "Chest Tricebs":[
      Muscle(
          name: "calves",
          imagePath: "assets/images/muscles/calves.png"),
      Muscle(
          name: "chest",
          imagePath: "assets/images/muscles/chest.png"),
      Muscle(
          name: "triceps",
          imagePath: "assets/images/muscles/triceps.png"),
      Muscle(
          name: "biceps",
          imagePath: "assets/images/muscles/biceps.png"),
      Muscle(
          name: "shoulder",
          imagePath: "assets/images/muscles/shoulder.png")
    ],
    "Upper-Body Cardio at Home":[
      Muscle(
          name: "chest",
          imagePath: "assets/images/muscles/chest.png"),
      Muscle(
          name: "triceps",
          imagePath: "assets/images/muscles/triceps.png"),
      Muscle(
          name: "shoulder",
          imagePath: "assets/images/muscles/shoulder.png")
    ]

  };
   Map<String,dynamic> exercises={
     "Broad Shoulders":[
       Excercise(
           imagePath:"assets/images/routines/broadshoulders/cable-face-pull-muscles-1024x482.png",
           muscleFocusedImagePath:
           "assets/images/muscles/shoulder.png", title: 'Cable Standing Face Pull', instructions: '3 sets x 12 reps'),

       Excercise(
           imagePath:
           "assets/images/routines/broadshoulders/cable.png",
           muscleFocusedImagePath:
           "assets/images/muscles/shoulder.png", title: 'Cable One Arm', instructions: '3 sets x 12 reps'),
       Excercise(
           imagePath:
           "assets/images/routines/broadshoulders/dumbbell-face-pull.png",
           muscleFocusedImagePath:
           "assets/images/muscles/shoulder.png", title: 'Dumbbell Bent-Over', instructions: '3 sets x 12 reps'),
       Excercise(
           imagePath:
           "assets/images/routines/broadshoulders/dumbbell-front-raise.jpg",
           muscleFocusedImagePath:
           "assets/images/muscles/shoulder.png", title: 'Dumbbell Front Raise', instructions: '3 sets x 12 reps'),
       Excercise(
           imagePath:
           "assets/images/routines/broadshoulders/pike-push-up.jpg",
           muscleFocusedImagePath: "assets/images/muscles/chest.png", title: 'Pike Push Up', instructions: '3 sets x 12 reps'),
       Excercise(
           imagePath:
           "assets/images/routines/broadshoulders/Seated+Side+Raises.png",
           muscleFocusedImagePath:
           "assets/images/muscles/shoulder.png", title: 'Dumbbell Seated Shoulder', instructions: '3 sets x 12 reps'),
       Excercise(
           imagePath:
           "assets/images/routines/broadshoulders/Standing+Dumbbell+Lateral+Raises.jpg",
           muscleFocusedImagePath:
           "assets/images/muscles/shoulder.png", title: 'Dumbbell Standing Overhead', instructions: '3 sets x 12 reps'),
       Excercise(
           imagePath:
           "assets/images/routines/broadshoulders/Standing+Dumbbell+Lateral+Raises.jpg",
           muscleFocusedImagePath:
           "assets/images/muscles/shoulder.png", title: 'Dumbbell Standing Lateral', instructions: '3 sets x 12 reps')
     ],
     "Chest Tricebs": [
       Excercise(
           imagePath:
           "assets/images/routines/chesttriceps/Barbell-Floor-Calf-Rais.jpg",
           muscleFocusedImagePath: "assets/images/muscles/calves.png", title: 'Barbell Floor Calf Raise', instructions: '3 sets x 10 reps'),
       Excercise(
           imagePath:
           "assets/images/routines/chesttriceps/dumbbell-bench-press.jpg",
           muscleFocusedImagePath: "assets/images/muscles/chest.png", title: 'Dumbbell Bench Press', instructions: '3 sets x 10 reps'),
       Excercise(
           imagePath:
           "assets/images/routines/chesttriceps/Barbell Curl.jpg",
           muscleFocusedImagePath: "assets/images/muscles/biceps.png", title: 'Barbell Curl', instructions: '3 sets x 10 reps'),
       Excercise(
           imagePath: "assets/images/routines/chesttriceps/Dumbbell Close Grip.jpg",
           muscleFocusedImagePath:
           "assets/images/muscles/triceps.png", title: 'Dumbbell Close Grip', instructions: '3 sets x 10 reps'),
       Excercise(
           imagePath: "assets/images/routines/chesttriceps/Push Press.png",
           muscleFocusedImagePath: "assets/images/muscles/chest.png", title: 'Push Press', instructions: '3 sets x 10 reps'),
       Excercise(
           imagePath:
           "assets/images/routines/chesttriceps/barbell-bent-over.jpg",
           muscleFocusedImagePath: "assets/images/muscles/lats.png", title: 'Barbell Bent Over', instructions: '3 sets x 10 reps'),
     ],
     "Upper-Body Cardio at Home":[
       Excercise(
           imagePath:
           "assets/images/routines/upperbodycardio/jackstep.png",
           muscleFocusedImagePath: "assets/images/muscles/glutes.png", title: 'Jack Step', instructions: '3 sets x 60 sec'),
       Excercise(
           imagePath:
           "assets/images/routines/upperbodycardio/standingmarch.png",
           muscleFocusedImagePath: "assets/images/muscles/chest.png", title: 'Standing March Shoulders', instructions: '3 sets x 60 sec'),
       Excercise(
           imagePath:
           "assets/images/routines/upperbodycardio/wall.png",
           muscleFocusedImagePath: "assets/images/muscles/chest.png", title: 'Push-Up(wall)', instructions: '3 sets x 10 reps'),
       Excercise(
           imagePath:
           "assets/images/routines/upperbodycardio/Diamond-Push-up-on-knees.png",
           muscleFocusedImagePath:
           "assets/images/muscles/triceps.png", title: 'Diamond Push-up(on knees)', instructions: '3 sets x 10 reps'),
       Excercise(
           imagePath:
           "assets/images/routines/upperbodycardio/Triceps-Dips-Floor_Uppe.png",
           muscleFocusedImagePath:
           "assets/images/muscles/triceps.png", title: 'Triceps Dip On Floor', instructions: '3 sets x 10 reps'),
       Excercise(
           imagePath:
           "assets/images/routines/upperbodycardio/push-on-knees.jpg",
           muscleFocusedImagePath: "assets/images/muscles/chest.png", title: 'Push-Up(on knees)', instructions: '3 sets x 10 reps'),
       Excercise(
           imagePath:
           "assets/images/routines/upperbodycardio/reverse-dip.jpg",
           muscleFocusedImagePath:
           "assets/images/muscles/triceps.png", title: 'Reverse Dip', instructions: '3 sets x 10 reps'),
     ]

   };
   @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 12,
        ),
        Expanded(
            child: ListView(
          children: [
            InkWell(

              child: Container(
                height: 230,
                child: Routine(title: "Broad Shoulders", muscles: muscles["Broad Shoulders"]
                , exercises:exercises["Broad Shoulders"]
                ),
              ),
              onTap: (){
                Get.to(RoutineDetails(title: "Broad Shoulders", muscles: muscles["Broad Shoulders"], exercises: exercises["Broad Shoulders"]));
              },
            ),
            InkWell(
              onTap: (){
                Get.to(RoutineDetails(title: "Chest Tricebs", muscles: muscles["Chest Tricebs"], exercises: exercises["Chest Tricebs"]));
              },
              child: Container(
                height: 230,
                child: Routine(title: "Chest Tricebs", muscles:
               muscles["Chest Tricebs"], exercises:
               exercises["Chest Tricebs"]),
              ),
            ),
            InkWell(
              onTap: (){
                Get.to(RoutineDetails(title: "Upper-Body Cardio at Home", muscles: muscles["Upper-Body Cardio at Home"], exercises: exercises["Upper-Body Cardio at Home"]));
              },
              child: Container(
                height: 230,
                child: Routine(title: "Upper-Body Cardio at Home", muscles:
               muscles["Upper-Body Cardio at Home"], exercises:
               exercises["Upper-Body Cardio at Home"]),
              ),
            ),
          ],
        )),
      ],
    );
  }
}
