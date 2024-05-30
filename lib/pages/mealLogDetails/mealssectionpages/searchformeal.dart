import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nutrifit/pages/mealLogDetails/addingdialog/addingdialog.dart';

import '../../meals/explore_meals/mealscontroller.dart';
import '../addingdialog/addinddialogcontroller.dart';

class SearchForMeal extends StatelessWidget {
  SearchForMeal({required this.mealType,super.key, required this.date});
  final MealsController controller = Get.put(MealsController());


  final String mealType;
  final DateTime date;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: height / 18,
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Search for an meal',
//floatingLabelBehavior: FloatingLabelBehavior.values.first,
                prefixIcon: const Icon(Icons.search_outlined),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    16.0,
                  ),
                ),
              ),
              onChanged: (value) {
                controller.search(value);
              },
            ),
          ),
          SizedBox(
            height: height / 140,
          ),
          GetX<MealsController>(builder: (controller) {
            return Expanded(
              child: ListView.builder(

                  // shrinkWrap: true,
                  itemCount: controller.meals.length,
                  itemBuilder: (context, index) {
                    return Card(
                        child: Padding(
                            padding: const EdgeInsets.all(8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Text(controller.meals.value[index][1]),
                                    Text(
                                        "${controller.meals[index][3]} kcal for 100 g "),
                                  ],
                                ),
                                InkWell(
                                  onTap: () {
                                    AddingDialogController dialogController=Get.put(AddingDialogController());
                                    dialogController.initialValues(index);
                                    showDialog(
                                        context: context,
                                        builder: (BuildContext context) =>
                                            AddingDialog(index: index,mealType: mealType,date: date,));


                                  },
                                  child: const Row(
                                    children: [
                                      Icon(Icons.add),
                                      Text("Add "),
                                    ],
                                  ),
                                )
                              ],
                            )));
                    // CustomWidgets.recipeWidget(
                    //   controller.meals.value[index][1],
                    //   "${controller.meals[index][3]} kcal for 100 g ",
                    //   controller.meals[index][38],
                    //   controller.meals[index][4],
                    //   controller.meals[index][58],
                    //   controller.meals[index][60]);
                  }),
            );
          })
        ],
      ),
    );
  }
}
