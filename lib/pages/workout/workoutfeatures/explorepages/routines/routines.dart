import 'package:flutter/material.dart';
import '../../../../../core/themes.dart';
import '../../musclecontainer.dart';

class Routines extends StatelessWidget {
  const Routines({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20,),
        Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 8,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Brouad Shoulders at Gym",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.bookmark,
                        ),
                        Text(
                          "Save",
                          style: TextStyle(
                              color: Colors.indigo,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  ],
                ),
                Divider(),
                // SizedBox(height: 8,),
                Row(
                  children: [
                    Column(
                      children: [
                        Muscle(
                          imagePath:
                          "assets/images/1000_F_54052154_Boy1wnR27p1yMHWKncVC1Ezsaq4T98IB.png",
                          size: 50,
                        ),
                        Text(
                          "forearms",
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Column(
                      children: [
                        Muscle(
                          imagePath: "assets/images/klipartz.com (6).png",
                          size: 50,
                        ),
                        Text(
                          "tricebs",
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Column(
                      children: [
                        Muscle(
                          imagePath: "assets/images/Untitled.png",
                          size: 50,
                        ),
                        Text(
                          "bicebs",
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.bold),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 13,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                          width: 60,
                          height: 40,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            color: MyTheme.greyAccent,
                            shape: BoxShape.rectangle,
                          ),
                          child: Image(
                            image: AssetImage(
                                "assets/images/machines/dip station.jpg"),
                            fit: BoxFit.cover,
                          )),
                      SizedBox(
                        width: 3,
                      ),
                      Container(
                          width: 60,
                          height: 40,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            color: MyTheme.greyAccent,
                            shape: BoxShape.rectangle,
                          ),
                          child: Image(
                            image: AssetImage(
                                "assets/images/machines/lat pulldown.jpg"),
                            fit: BoxFit.cover,
                          )),
                      SizedBox(
                        width: 3,
                      ),
                      Container(
                          width: 60,
                          height: 40,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            color: MyTheme.greyAccent,
                            shape: BoxShape.rectangle,
                          ),
                          child: Image(
                            image: AssetImage(
                                "assets/images/machines/dumbel.jpg"),
                            fit: BoxFit.cover,
                          )),
                      SizedBox(
                        width: 3,
                      ),
                      Container(
                          width: 60,
                          height: 40,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            color: MyTheme.greyAccent,
                            shape: BoxShape.rectangle,
                          ),
                          child: Image(
                            image: AssetImage(
                                "assets/images/machines/lat pulldown.jpg"),
                            fit: BoxFit.cover,
                          )),
                      SizedBox(
                        width: 3,
                      ),
                      Container(
                          width: 60,
                          height: 40,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            color: MyTheme.greyAccent,
                            shape: BoxShape.rectangle,
                          ),
                          child: Image(
                            image: AssetImage(
                                "assets/images/machines/dip station.jpg"),
                            fit: BoxFit.cover,
                          )),
                      SizedBox(
                        width: 3,
                      ),
                      Container(
                          width: 60,
                          height: 40,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            color: MyTheme.greyAccent,
                            shape: BoxShape.rectangle,
                          ),
                          child: Image(
                            image: AssetImage(
                                "assets/images/machines/dumbel.jpg"),
                            fit: BoxFit.cover,
                          )),
                      SizedBox(
                        width: 3,
                      ),
                      Container(
                          width: 60,
                          height: 40,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            color: MyTheme.greyAccent,
                            shape: BoxShape.rectangle,
                          ),
                          child: Image(
                            image: AssetImage(
                                "assets/images/machines/lat pulldown.jpg"),
                            fit: BoxFit.cover,
                          )),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 8,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Brouad Shoulders at Gym",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.bookmark,
                        ),
                        Text(
                          "Save",
                          style: TextStyle(
                              color: Colors.indigo,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  ],
                ),
                Divider(),
                // SizedBox(height: 8,),
                Row(
                  children: [
                    Column(
                      children: [
                        Muscle(
                          imagePath:
                          "assets/images/1000_F_54052154_Boy1wnR27p1yMHWKncVC1Ezsaq4T98IB.png",
                          size: 50,
                        ),
                        Text(
                          "forearms",
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Column(
                      children: [
                        Muscle(
                          imagePath: "assets/images/klipartz.com (6).png",
                          size: 50,
                        ),
                        Text(
                          "tricebs",
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Column(
                      children: [
                        Muscle(
                          imagePath: "assets/images/Untitled.png",
                          size: 50,
                        ),
                        Text(
                          "bicebs",
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.bold),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 13,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                          width: 60,
                          height: 40,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            color: MyTheme.greyAccent,
                            shape: BoxShape.rectangle,
                          ),
                          child: Image(
                            image: AssetImage(
                                "assets/images/machines/dip station.jpg"),
                            fit: BoxFit.cover,
                          )),
                      SizedBox(
                        width: 3,
                      ),
                      Container(
                          width: 60,
                          height: 40,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            color: MyTheme.greyAccent,
                            shape: BoxShape.rectangle,
                          ),
                          child: Image(
                            image: AssetImage(
                                "assets/images/machines/lat pulldown.jpg"),
                            fit: BoxFit.cover,
                          )),
                      SizedBox(
                        width: 3,
                      ),
                      Container(
                          width: 60,
                          height: 40,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            color: MyTheme.greyAccent,
                            shape: BoxShape.rectangle,
                          ),
                          child: Image(
                            image: AssetImage(
                                "assets/images/machines/dumbel.jpg"),
                            fit: BoxFit.cover,
                          )),
                      SizedBox(
                        width: 3,
                      ),
                      Container(
                          width: 60,
                          height: 40,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            color: MyTheme.greyAccent,
                            shape: BoxShape.rectangle,
                          ),
                          child: Image(
                            image: AssetImage(
                                "assets/images/machines/lat pulldown.jpg"),
                            fit: BoxFit.cover,
                          )),
                      SizedBox(
                        width: 3,
                      ),
                      Container(
                          width: 60,
                          height: 40,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            color: MyTheme.greyAccent,
                            shape: BoxShape.rectangle,
                          ),
                          child: Image(
                            image: AssetImage(
                                "assets/images/machines/dip station.jpg"),
                            fit: BoxFit.cover,
                          )),
                      SizedBox(
                        width: 3,
                      ),
                      Container(
                          width: 60,
                          height: 40,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            color: MyTheme.greyAccent,
                            shape: BoxShape.rectangle,
                          ),
                          child: Image(
                            image: AssetImage(
                                "assets/images/machines/dumbel.jpg"),
                            fit: BoxFit.cover,
                          )),
                      SizedBox(
                        width: 3,
                      ),
                      Container(
                          width: 60,
                          height: 40,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            color: MyTheme.greyAccent,
                            shape: BoxShape.rectangle,
                          ),
                          child: Image(
                            image: AssetImage(
                                "assets/images/machines/lat pulldown.jpg"),
                            fit: BoxFit.cover,
                          )),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 8,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Brouad Shoulders at Gym",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.bookmark,
                        ),
                        Text(
                          "Save",
                          style: TextStyle(
                              color: Colors.indigo,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  ],
                ),
                Divider(),
                // SizedBox(height: 8,),
                Row(
                  children: [
                    Column(
                      children: [
                        Muscle(
                          imagePath:
                          "assets/images/1000_F_54052154_Boy1wnR27p1yMHWKncVC1Ezsaq4T98IB.png",
                          size: 50,
                        ),
                        Text(
                          "forearms",
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Column(
                      children: [
                        Muscle(
                          imagePath: "assets/images/klipartz.com (6).png",
                          size: 50,
                        ),
                        Text(
                          "tricebs",
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Column(
                      children: [
                        Muscle(
                          imagePath: "assets/images/Untitled.png",
                          size: 50,
                        ),
                        Text(
                          "bicebs",
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.bold),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 13,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                          width: 60,
                          height: 40,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            color: MyTheme.greyAccent,
                            shape: BoxShape.rectangle,
                          ),
                          child: Image(
                            image: AssetImage(
                                "assets/images/machines/dip station.jpg"),
                            fit: BoxFit.cover,
                          )),
                      SizedBox(
                        width: 3,
                      ),
                      Container(
                          width: 60,
                          height: 40,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            color: MyTheme.greyAccent,
                            shape: BoxShape.rectangle,
                          ),
                          child: Image(
                            image: AssetImage(
                                "assets/images/machines/lat pulldown.jpg"),
                            fit: BoxFit.cover,
                          )),
                      SizedBox(
                        width: 3,
                      ),
                      Container(
                          width: 60,
                          height: 40,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            color: MyTheme.greyAccent,
                            shape: BoxShape.rectangle,
                          ),
                          child: Image(
                            image: AssetImage(
                                "assets/images/machines/dumbel.jpg"),
                            fit: BoxFit.cover,
                          )),
                      SizedBox(
                        width: 3,
                      ),
                      Container(
                          width: 60,
                          height: 40,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            color: MyTheme.greyAccent,
                            shape: BoxShape.rectangle,
                          ),
                          child: Image(
                            image: AssetImage(
                                "assets/images/machines/lat pulldown.jpg"),
                            fit: BoxFit.cover,
                          )),
                      SizedBox(
                        width: 3,
                      ),
                      Container(
                          width: 60,
                          height: 40,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            color: MyTheme.greyAccent,
                            shape: BoxShape.rectangle,
                          ),
                          child: Image(
                            image: AssetImage(
                                "assets/images/machines/dip station.jpg"),
                            fit: BoxFit.cover,
                          )),
                      SizedBox(
                        width: 3,
                      ),
                      Container(
                          width: 60,
                          height: 40,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            color: MyTheme.greyAccent,
                            shape: BoxShape.rectangle,
                          ),
                          child: Image(
                            image: AssetImage(
                                "assets/images/machines/dumbel.jpg"),
                            fit: BoxFit.cover,
                          )),
                      SizedBox(
                        width: 3,
                      ),
                      Container(
                          width: 60,
                          height: 40,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            color: MyTheme.greyAccent,
                            shape: BoxShape.rectangle,
                          ),
                          child: Image(
                            image: AssetImage(
                                "assets/images/machines/lat pulldown.jpg"),
                            fit: BoxFit.cover,
                          )),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),


      ],
    );
  }
}
