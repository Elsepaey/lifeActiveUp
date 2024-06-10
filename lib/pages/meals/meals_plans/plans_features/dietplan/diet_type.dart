// diet_selection_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:nutrifit/core/themes.dart';
import 'package:nutrifit/pages/meals/meals_plans/plans_features/dietplan/dietType_controller.dart';
import 'package:nutrifit/pages/meals/meals_plans/plans_features/dietplan/diet_view.dart';
import 'diet_controller.dart';

class DietSelectionScreen extends StatelessWidget {
  DietTypeController controller = Get.put(DietTypeController());
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: screenHeight / 120,
          ),
          Center(
            child: const Text(
              'Do you follow any of these diets?',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 26),
          SingleChildScrollView(
            child: SizedBox(
              height: screenHeight / 2,
              child: ListView.builder(
                itemCount: controller.dietOptions.length,
                itemBuilder: (context, index) {
                  final diet = controller.dietOptions[index];
                  return GestureDetector(
                    onTap: () {
                      controller.selectDiet(diet['label']);
                    },
                    child: Obx(() => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Card(
                            surfaceTintColor: Colors.transparent,
                            elevation: 3,
                            color:
                                controller.selectedDiet.value == diet['label']
                                    ? Colors.grey[200]
                                    : Colors.white,
                            child: ListTile(
                              leading: Image(image: AssetImage(diet['icon'])),
                              title: Text(diet['label']),
                            ),
                          ),
                        )),
                  );
                },
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Get.to(DietView(dietType:controller.selectedDiet.value!));
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(width: 1.6, color: MyTheme.primary_color),
              ),
              height: screenHeight / 24,
              width: screenWidth / 2.3,
              child: const Center(child: Text("Generate")),
            ),
          ),
        ],
      ),
    );
  }
}
