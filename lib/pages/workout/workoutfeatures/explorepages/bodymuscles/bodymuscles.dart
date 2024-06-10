import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nutrifit/pages/workout/workoutfeatures/explorepages/bodymuscles/muscledetails/muscledetails.dart';

import 'musclecontainer.dart';

class BodyMuscles extends StatelessWidget {
  BodyMuscles({super.key});
  List muscles = [
    Muscle(muscleName: "Abs", imagePath: "assets/images/muscles/abs.png"),
    Muscle(muscleName: "Chest", imagePath:"assets/images/muscles/chest.png"),
    Muscle(muscleName: "Traps", imagePath:"assets/images/muscles/traps.png"),
    Muscle(muscleName: "Forearms", imagePath:"assets/images/muscles/forearms.png"),
    Muscle(muscleName: "Triceps", imagePath:"assets/images/muscles/triceps.png"),
    Muscle(muscleName: "Biceps", imagePath:"assets/images/muscles/biceps.png"),
    Muscle(muscleName: "Hamstrings", imagePath:"assets/images/muscles/Hamstringsmuscle.png"),
    Muscle(muscleName: "Quads", imagePath:"assets/images/muscles/Quads.png"),
    Muscle(muscleName: "Calves", imagePath:"assets/images/muscles/calves.png"),
    Muscle(muscleName: "Shoulders", imagePath:"assets/images/muscles/shoulder.png"),
    Muscle(muscleName: "Lats", imagePath:"assets/images/muscles/lats.png"),
    Muscle(muscleName: "Glutes", imagePath:"assets/images/muscles/glutes.png"),



  ];
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Column(
      //mainAxisSize: MainAxisSize.min,
      //mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: screenHeight/14,
        ),
        Expanded(
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, mainAxisSpacing: screenHeight/90, crossAxisSpacing: screenWidth/20),
              itemCount: muscles.length,
              itemBuilder: (context, index) => InkWell(
                onTap: (){Get.to(MuscleDetails(muscle: muscles[index].muscleName, imagePath:muscles[index].imagePath));},
                child:MuscleWidget(imagePath: muscles[index].imagePath, size: 100))
              ),
        ),

      ],
    );
  }
}
class Muscle{
  Muscle({required this.muscleName,required this.imagePath});
  String muscleName;
  String imagePath;
}
