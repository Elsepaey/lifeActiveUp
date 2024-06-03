import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:nutrifit/core/themes.dart';
import 'package:nutrifit/pages/meals/meals_plans/mealsplans_api.dart';
import 'package:toggle_list/toggle_list.dart';
import 'customfood_controller.dart';

class CustomOutput extends StatelessWidget {
   CustomOutput({super.key});
  final CustomFoodController controller = Get.find();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,),
      body:
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          SizedBox(
              height: 200,
              child: Image(image: AssetImage("assets/images/chef_2.png",),)),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 28.0,horizontal: 12),
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
                    List<ToggleListItem> toggleListItems = data.map<ToggleListItem>((item)
                    {
                      return ToggleListItem(

                        title: Card(
                          margin: EdgeInsets.all(0),
                            color: MyTheme.primary_color,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(item["Name"], style: TextStyle(fontSize: 18)),
                            )),
            
                        content: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Column(
                           // mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Text("RecipeIngredients",style: TextStyle(fontWeight: FontWeight.bold),),
                              SizedBox(
                                  height:40,
                                  child: ListView(children:item["RecipeIngredientParts"].map<Card>((item)=>Card(

                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(item),
                                      ))).toList(),scrollDirection: Axis.horizontal,)),

                              Text("Calories:                          ${item["Calories"]}",style: TextStyle(fontWeight: FontWeight.bold)),
                              Text("Fat Content:                      ${item["FatContent"]}",style: TextStyle(fontWeight: FontWeight.bold)),
                              Text("Saturated Fat Content:     ${item["SaturatedFatContent"]}",style: TextStyle(fontWeight: FontWeight.bold)),
                              Text("Cholesterol Content:        ${item["CholesterolContent"]}",style: TextStyle(fontWeight: FontWeight.bold)),
                              Text("Sodium Content:             ${item["SodiumContent"]}",style: TextStyle(fontWeight: FontWeight.bold)),
                              Text("Carbohydrate Content:     ${item["CarbohydrateContent"]}",style: TextStyle(fontWeight: FontWeight.bold)),
                              Text("Fiber Content:                     ${item["FiberContent"]}",style: TextStyle(fontWeight: FontWeight.bold)),
                              Text("Sugar Content:                    ${item["SugarContent"]}",style: TextStyle(fontWeight: FontWeight.bold)),
                              Text("Protein Content:                ${item["ProteinContent"]}",style: TextStyle(fontWeight: FontWeight.bold)),
                            ].map((text) => Padding(
                              padding: EdgeInsets.only(bottom: 8.0),
                              child: text,
                            )).toList(),
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
  Future<dynamic> getData()
  async {
    List nutritions=[controller.calorieSliderValue,controller.fatSliderValue,controller.saturatedFatSliderValue,controller.cholesterolSliderValue,controller.sodiumSliderValue,controller.carbSliderValue,controller.fiberSliderValue,controller.sugarSliderValue,controller.proteinSliderValue];

var data= await MealsApi.postCustom(nutritions, []);
print(data);
   return data;

  }
}

