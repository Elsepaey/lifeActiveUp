import 'package:flutter/material.dart';

import '../../../core/themes.dart';

class Muscle extends StatelessWidget {
   Muscle({super.key,required this.imagePath,required this.size});
String imagePath;
double size;
  @override
  Widget build(BuildContext context) {
    return
      Container(
        width: size,
        height: size,
        clipBehavior: Clip.antiAlias,
        decoration:  BoxDecoration(
          color: MyTheme.greyAccent,
          shape: BoxShape.circle,
        ),
        child: Image(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ))
    ;
  }
}
