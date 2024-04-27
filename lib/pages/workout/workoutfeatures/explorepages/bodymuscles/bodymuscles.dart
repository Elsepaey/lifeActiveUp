import 'package:flutter/material.dart';

import '../../musclecontainer.dart';

class BodyMuscles extends StatelessWidget {
  const BodyMuscles({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 40,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Muscle(
              imagePath: "assets/images/pngegg (5).png",
              size: 100,
            ),
            Muscle(
              imagePath: "assets/images/pngaaa.com-908004.png",
              size: 100,
            ),
            Muscle(
              imagePath:
                  "assets/images/Know-Your-Anatomy_-Build-Bigger-Traps (1).png",
              size: 100,
            ),
          ],
        ),
        SizedBox(
          height: 8,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Muscle(
              imagePath:
                  "assets/images/1000_F_54052154_Boy1wnR27p1yMHWKncVC1Ezsaq4T98IB.png",
              size: 100,
            ),
            Muscle(
              imagePath: "assets/images/klipartz.com (6).png",
              size: 100,
            ),
            Muscle(
              imagePath: "assets/images/Untitled.png",
              size: 100,
            )
          ],
        ),
        SizedBox(
          height: 8,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Muscle(
              imagePath: "assets/images/Hamstringsmuscle.png",
              size: 100,
            ),
            Muscle(
              imagePath: "assets/images/Quads.png",
              size: 100,
            ),
            Muscle(
              imagePath: "assets/images/mollet-anatomy-1024x1024-1.png",
              size: 100,
            )
          ],
        ),
        SizedBox(
          height: 8,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Muscle(
              imagePath: "assets/images/shoulder.png",
              size: 100,
            ),
            Muscle(
              imagePath: "assets/images/klipartz.com (2).png",
              size: 100,
            ),
            Muscle(
              imagePath: "assets/images/glutes.png",
              size: 100,
            )
          ],
        ),
        SizedBox(
          height: 12,
        ),
      ],
    );
  }
}
