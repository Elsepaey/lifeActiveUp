import 'package:flutter/material.dart';
import 'package:nutrifit/pages/widgets/widgets.dart';

class MealWidget extends StatelessWidget {
  const MealWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return
SingleChildScrollView(
  child: Column(
    children: [
      CustomWidgets.recipeWidget("Salami", "200 kcal for 100 g ", "protein", "fat")
    ],
  ),
);
  }
}
