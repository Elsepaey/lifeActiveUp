import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nutrifit/core/themes.dart';
import 'package:nutrifit/pages/meals/meals_plans/mealsplans_api.dart';
import 'package:nutrifit/pages/meals/meals_plans/plans_features/custom_meal_plan/outputController.dart';
import 'package:toggle_list/toggle_list.dart';
import 'customfood_controller.dart';

class CustomOutput extends StatelessWidget {
  CustomOutput({super.key});
  final CustomFoodController controller = Get.find();
  OutputController outputController = Get.put(OutputController());
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
              height: screenHeight / 4.2,
              child: Image(
                image: AssetImage(
                  "assets/images/chef_2.png",
                ),
              )),
          Expanded(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 28.0, horizontal: 12),
              child: FutureBuilder<dynamic>(
                future: getData(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (snapshot.hasError) {
                    return Center(child: Text('Error: ${snapshot.error}'));
                  } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                    return const Center(child: Text('No data available'));
                  } else {
                    var data = snapshot.data!["output"];
                    List<ToggleListItem> toggleListItems =
                        data.map<ToggleListItem>((item) {
                      return ToggleListItem(
                        title: Card(
                            margin: const EdgeInsets.all(0),
                            color: MyTheme.primary_color,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(item["Name"],
                                  style: const TextStyle(fontSize: 18)),
                            )),
                        content: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              const Text(
                                "RecipeIngredients",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                  height: 40,
                                  child: ListView(
                                    children: item["RecipeIngredientParts"]
                                        .map<Card>((item) => Card(
                                                child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Text(item),
                                            )))
                                        .toList(),
                                    scrollDirection: Axis.horizontal,
                                  )),
                              ExpansionTile(
                                tilePadding: EdgeInsets.symmetric(vertical: 4),
                                title: Text("RecipeInstructions",style: TextStyle(fontWeight: FontWeight.bold),),
                              children: item["RecipeInstructions"]
                                  .map<Text>((item) => Text(item))
                                  .toList(),
                              ),

                              Text(
                                  "Calories:                          ${item["Calories"]}",
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold)),
                              Text(
                                  "Fat Content:                      ${item["FatContent"]}",
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold)),
                              Text(
                                  "Saturated Fat Content:     ${item["SaturatedFatContent"]}",
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold)),
                              Text(
                                  "Cholesterol Content:        ${item["CholesterolContent"]}",
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold)),
                              Text(
                                  "Sodium Content:             ${item["SodiumContent"]}",
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold)),
                              Text(
                                  "Carbohydrate Content:     ${item["CarbohydrateContent"]}",
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold)),
                              Text(
                                  "Fiber Content:                     ${item["FiberContent"]}",
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold)),
                              Text(
                                  "Sugar Content:                    ${item["SugarContent"]}",
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold)),
                              Text(
                                  "Protein Content:                ${item["ProteinContent"]}",
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold)),
                              GetX<OutputController>(
                                  builder: (controller) => Card(
                                        color: Colors.white,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: [
                                                  Text(
                                                    "Add this meal to :",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                  DropdownButton<String>(
                                                    menuMaxHeight: 300,
                                                    value: outputController
                                                        .mealType.value,
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.w400),
                                                    items: [
                                                      DropdownMenuItem(
                                                        value: 'Breakfast',
                                                        child:
                                                            Text('Breakfast'),
                                                      ),
                                                      DropdownMenuItem(
                                                        value: 'Launch',
                                                        child: Text('Launch'),
                                                      ),
                                                      DropdownMenuItem(
                                                        value: 'Dinner',
                                                        child: Text('Dinner'),
                                                      ),
                                                      DropdownMenuItem(
                                                        value: 'snack',
                                                        child: Text('snack'),
                                                      ),
                                                    ],
                                                    onChanged:
                                                        (String? newValue) {
                                                      outputController.mealType
                                                          .value = newValue!;
                                                    },
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                  height: 25,
                                                  child: ElevatedButton(
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                      foregroundColor:
                                                          MyTheme.primary_color,
                                                      backgroundColor: Colors
                                                          .white, // text color
                                                      side: BorderSide(
                                                        width: 1.2,
                                                        color: MyTheme
                                                            .primary_color,
                                                        style: BorderStyle
                                                            .solid, // solid border
                                                      ),
                                                    ),
                                                    onPressed: () {
                                                      outputController.confirm(
                                                          context,
                                                          item["Name"],
                                                          item["Calories"],
                                                          item[
                                                              "ProteinContent"],
                                                          item["FatContent"],
                                                          item[
                                                              "CarbohydrateContent"],
                                                          item["SugarContent"]);
                                                    },
                                                    child: Text('Confirm'),
                                                  ))
                                            ],
                                          ),
                                        ),
                                      ))
                            ]
                                .map((text) => Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 8.0),
                                      child: text,
                                    ))
                                .toList(),
                          ),
                        ),
                      );
                    }).toList();
                    return ToggleList(
                      children: toggleListItems,
                    );
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<dynamic> getData() async {
    List nutritions = [
      controller.calorieSliderValue,
      controller.fatSliderValue,
      controller.saturatedFatSliderValue,
      controller.cholesterolSliderValue,
      controller.sodiumSliderValue,
      controller.carbSliderValue,
      controller.fiberSliderValue,
      controller.sugarSliderValue,
      controller.proteinSliderValue
    ];

    var data = await MealsApi.postCustom(nutritions, []);
    return data;
  }
}
