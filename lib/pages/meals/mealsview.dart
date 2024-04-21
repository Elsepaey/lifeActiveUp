
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nutrifit/core/themes.dart';
import 'package:nutrifit/pages/meals/mealscontroller.dart';
import '../widgets/widgets.dart';

class Meals extends StatelessWidget {
  Meals({super.key});
  MealsController controller = Get.put(MealsController());
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.only(
          top: height/66,bottom: height / 11.40, left: width / 60, right: width / 60),
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
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(" Sort by :",style: TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(width: width/40,),
              Row(
                children: [

                  InkWell(

                    onTap: (){
                      controller.sortMeals(3);
                    },
                    child: Container(padding: const EdgeInsets.symmetric(horizontal: 4,vertical: 2),decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(

                        width: 2,
                        color: MyTheme.primary_color,

                      ),
                    ),
                    child: const Text("Calories"),),
                  ),
                  SizedBox(width: width/50,),
                  InkWell(
                    onTap: (){
                      controller.sortMeals(38);
                    },
                    child: Container(padding: const EdgeInsets.symmetric(horizontal: 4,vertical: 2),decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(

                        width: 2,
                        color: MyTheme.primary_color,

                      ),
                    ),
                      child: const Text("Protein"),),
                  ),
                  SizedBox(width: width/50,),
                  InkWell(
                    onTap: (){
                      controller.sortMeals(4);
                    },
                    child: Container(padding: const EdgeInsets.symmetric(horizontal: 4,vertical: 2),decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(

                        width: 2,
                        color: MyTheme.primary_color,

                      ),
                    ),
                      child: const Text("Fat"),),
                  ),
                  SizedBox(width: width/50,),
                  InkWell(
                    onTap: (){
                      controller.sortMeals(58);
                    },
                    child: Container(padding: const EdgeInsets.symmetric(horizontal: 4,vertical: 2),decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(

                        width: 2,
                        color: MyTheme.primary_color,

                      ),
                    ),
                      child: const Text("Carbs"),),
                  ),
                  SizedBox(width: width/50,),
                  InkWell(
                    onTap: (){
                      controller.sortMeals(60);
                    },
                    child: Container(padding: const EdgeInsets.symmetric(horizontal: 4,vertical: 2),decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(

                        width: 2,
                        color: MyTheme.primary_color,

                      ),
                    ),
                      child: const Text("Sugars"),),
                  ),

                  // Card(child: Padding(
                  //   padding: const EdgeInsets.all(3.0),
                  //   child: Text("Calories"),
                  //
                  // ),
                  // color: Colors.transparent,)
                ],
              ),
            ],
          ),
          SizedBox(
            height:height/140,
          ),


          GetX<MealsController>(builder: (controller)   {   return   Expanded(
            child: ListView.builder(

              // shrinkWrap: true,
                itemCount: controller.meals.length,
                itemBuilder: (context, index) {
                  return CustomWidgets.recipeWidget(
                      controller.meals.value[index][1],
                      "${controller.meals[index][3]} kcal for 100 g ",
                      controller.meals[index][38],
                      controller.meals[index][4],
                      controller.meals[index][58],
                      controller.meals[index][60]);
                }),
          );}
          )        ],
      ),
    );
  }
}
