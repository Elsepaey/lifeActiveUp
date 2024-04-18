import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/themes.dart';
import '../../meals/mealscontroller.dart';
import '../../widgets/widgets.dart';

class SearchForMeal extends StatelessWidget {
   SearchForMeal({super.key});
  final MealsController controller = Get.put(MealsController());

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.all(8),
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
            height:height/140,
          ),



          GetX<MealsController>(builder: (controller)   {   return   Expanded(
            child: ListView.builder(

              // shrinkWrap: true,
                itemCount: controller.meals.length,
                itemBuilder: (context, index) {
                  return Card(child:Padding(padding: EdgeInsets.all(8),child: 
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text( controller.meals.value[index][1]),
                          Text("${controller.meals[index][3]} kcal for 100 g "),
                        ],
                      ),
                      Icon(Icons.add)
                    ],
                    )
                    ) );
                    // CustomWidgets.recipeWidget(
                    //   controller.meals.value[index][1],
                    //   "${controller.meals[index][3]} kcal for 100 g ",
                    //   controller.meals[index][38],
                    //   controller.meals[index][4],
                    //   controller.meals[index][58],
                    //   controller.meals[index][60]);
                }),
          );}
          )        ],
      ),
    );
  }
}
