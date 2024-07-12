import 'package:flutter/material.dart';

import '../../bodymuscles/musclecontainer.dart';

class RoutineDetails extends StatelessWidget {
  RoutineDetails(
      {super.key,
      required this.title,
      required this.muscles,
      required this.exercises});
  String title;
  List muscles;
  List exercises;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Row(
              children: [
                ImageIcon(
                  AssetImage(
                    "assets/icons/arm.png",
                  ),
                  size: 36,
                ),
                Text(
                  "Working Muscles",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                )
              ],
            ),
            Expanded(
              flex: 1,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: muscles.length,
                  padding: const EdgeInsets.all(8),
                  itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4.0),
                        child: Column(
                          children: [
                            MuscleWidget(
                              imagePath: muscles[index].imagePath,
                              size: 80,
                            ),
                            Text(
                              muscles[index].name,
                              style: const TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      )),
            ),
            const Divider(),
            const Text(
              "Exercises",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Expanded(
              flex: 4,
              child: ListView.builder(
                padding: const EdgeInsets.all(5),
                shrinkWrap: true,
                itemCount: exercises.length,
                itemBuilder: (context, index) => Container(
                  margin: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(10)),
                  //padding: EdgeInsets.all(2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: Container(
                          // margin: const EdgeInsets.symmetric(horizontal: 4.0),
                          clipBehavior: Clip.antiAlias,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(6)),
                            //color: MyTheme.greyAccent,
                          ),
                          width: screenWidth / 3, height: screenHeight / 13,
                          child: Image(
                            image: AssetImage(
                              exercises[index].imagePath,
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Column(
                        children: [
                          Text(exercises[index].title),
                          Text(exercises[index].instructions)
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: MuscleWidget(
                          imagePath: exercises[index].muscleFocusedImagePath,
                          size: 66,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
