import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../../../../core/themes.dart';
import '../bodymuscles/musclecontainer.dart';

class Routine extends StatelessWidget {
  Routine(
      {super.key,
      required this.title,
      required this.muscles,
      required this.exercises});
  String title;
  List<Muscle> muscles;
  List <Excercise>exercises;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 4),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.bookmark,
                    ),
                    Text(
                      "Save",
                      style: TextStyle(
                          color: Colors.indigo, fontWeight: FontWeight.bold),
                    ),
                  ],
                )
              ],
            ),
            Divider(),
            Expanded(
              child: ListView.builder(

                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: muscles.length,
                  padding: EdgeInsets.all(8),
                  itemBuilder: (context, index) =>
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4.0),
                        child: Column(
                          children: [
                            MuscleWidget(
                              imagePath: muscles[index].imagePath,
                              size: 50,
                            ),
                            Text(
                              muscles[index].name,
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      )),
            ),
            SizedBox(
              height: 60,
              child:
              ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: exercises.length,
                itemBuilder: (context, index) => Container(
                    margin: const EdgeInsets.symmetric(horizontal: 4.0),
                    width: 80,
                    clipBehavior: Clip.antiAlias,

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(6)),
                      color: MyTheme.greyAccent,
                    ),
                    child: Image(
                      image: AssetImage(exercises[index].imagePath),
                      fit: BoxFit.fill,
                    )),
              ),
            ),
            SizedBox(height: 5,)
          ],
        ),
      ),
    );
  }
}

class Muscle {
  String name;
  String imagePath;
  Muscle({required this.name, required this.imagePath});
}
class Excercise{
  String title;
  String imagePath;
  String muscleFocusedImagePath;
  String instructions;
  Excercise({required this.title,required this.imagePath,required this.muscleFocusedImagePath,required this.instructions});
}
