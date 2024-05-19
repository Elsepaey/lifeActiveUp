import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nutrifit/pages/meals/meals_plans/mealsplans_api.dart';
import 'customfood_controller.dart';

class CustomOutput extends StatelessWidget {
   CustomOutput({super.key});
  final CustomFoodController controller = Get.find();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(),
      body:
      Padding(
        padding: const EdgeInsets.all(8.0),
        child:
        FutureBuilder <dynamic>(
          future: getData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
              return Center(child: Text('No data available'));
            } else {
              var data=snapshot.data!["output"];
              print(data.length);
              return
                ListView.builder(

                itemBuilder: (context, index) {
                   var elementdata = data[index];
                  return
                    ExpandablePanel(
                    header: Text(
                        elementdata["Name"],
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    collapsed: Text(
                      "See details",
                      softWrap: true,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    expanded: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Calories: ${elementdata["Calories"]}"),
                        Text("Fat Content:${elementdata["FatContent"]}"),
                        Text("Saturated Fat Content: ${elementdata["SaturatedFatContent"]}"),
                        Text("Cholesterol Content: ${elementdata["CholesterolContent"]}"),
                        Text("Sodium Content: ${elementdata["SodiumContent"]}"),
                        Text("Carbohydrate Content: ${elementdata["CarbohydrateContent"]}"),
                        Text("Fiber Content: ${elementdata["FiberContent"]}"),
                        Text("Sugar Content: ${elementdata["SugarContent"]}"),
                        Text("Protein Content: ${elementdata["ProteinContent"]}"),
                      ].map((text) => Padding(
                        padding: EdgeInsets.only(bottom: 8.0),
                        child: text,
                      )).toList(),
                    ),
                  );

                },
                itemCount:data.length,
              );
            }
          },
        ),
      ),
    );
  }
  Future<dynamic> getData()
  async {
    List nutritions=[controller.calorieSliderValue,controller.fatSliderValue,controller.saturatedFatSliderValue,controller.cholesterolSliderValue,controller.sodiumSliderValue,controller.carbSliderValue,controller.fiberSliderValue,controller.sugarSliderValue,controller.proteinSliderValue];

var data= await MealsApi.postCustom(nutritions, ["carrots"]);
print(data);
   return data;

  }
}
