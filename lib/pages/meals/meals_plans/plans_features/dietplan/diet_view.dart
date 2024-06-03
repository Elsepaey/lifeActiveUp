import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:nutrifit/core/themes.dart';
import 'package:nutrifit/pages/meals/meals_plans/plans_features/dietplan/diet_controller.dart';
import 'package:toggle_list/toggle_list.dart';
import '../../../../../model/user controller.dart';
import '../../mealsplans_api.dart';

class DietView extends StatelessWidget {
  DietView({super.key});
  final AppUserController userController = Get.find();
final DietController controller=Get.put(DietController());
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.only(top: height / 66,
          bottom: height / 13.869,
          left: width / 80,
          right: width / 80),
      child: Column(
        children: [
          FutureBuilder(
            future: getData(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(child: CircularProgressIndicator());
              } else if (snapshot.hasError) {
                return Center(child: Text('Error: ${snapshot.error}'));
              } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                return Center(child: Text('No data available'));
              } else {
                var data = snapshot.data!["output"];
                var breakfastData = data["breakfast"];
                var lunchData = data["lunch"];
                var dinnerData=data["dinner"];

                List<ToggleListItem> breakfastToggleListItems = breakfastData.map<ToggleListItem>((item)
                {
                  return ToggleListItem(

                    title: Card(
                      surfaceTintColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                        elevation: 2,
                        margin: EdgeInsets.all(0),
                        color: Colors.grey.shade200,
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
                List<ToggleListItem> lunchToggleListItems = lunchData.map<ToggleListItem>((item)
                {
                  return ToggleListItem(

                    title: Card(
                        surfaceTintColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                        elevation: 2,
                        margin: EdgeInsets.all(0),
                        color: Colors.grey.shade200,
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
                }).toList();List<ToggleListItem> dinnerToggleListItems = dinnerData.map<ToggleListItem>((item)
                {
                  return ToggleListItem(

                    title: Card(

                        surfaceTintColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                        elevation: 2,
                        margin: EdgeInsets.all(0),
                        color: Colors.grey.shade200,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(item["Name"], style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500)),
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
                return SizedBox(
                  height: height / 1.43,
                  child:                         PageView(
                    controller: controller.pageController,
                    onPageChanged: (index) {
                      controller.currentPageIndex = index;
                    },
                    children: [
                      Column(children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                          child: Text(
                            "Breakfast",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: MyTheme.primary_color),
                          ),
                        ),
                        Expanded(
                          child: ToggleList(
                            children: breakfastToggleListItems,
                          ),
                        ),

                      ],),
                      Column(children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                          child: Text(
                            "Lunch",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: MyTheme.primary_color),
                          ),
                        ),
                        Expanded(
                          child: ToggleList(
                            children: lunchToggleListItems,
                          ),
                        ),

                      ],),
                      Column(children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                          child: Text(
                            "Dinner",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: MyTheme.primary_color),
                          ),
                        ),
                        Expanded(
                          child: ToggleList(
                            children: dinnerToggleListItems,
                          ),
                        ),

                      ],),

                    ],
                  )

                );
              }
            },
          ),
        ],
      ),
    );
  }

  Future<dynamic> getData() async {
    var data = await MealsApi.postDiet(
        gender: userController.gender,
        weight: userController.weight,
        height: userController.height,
        age: "${calculateAge(userController.dateOfBirth)}",
        diseases: userController.allergiesList.join(","),
        activityLevel: userController.fitnessLevel);
    print(data);
    return data;
  }

  int calculateAge(String birthDateString) {
    // Parse the date of birth string to a DateTime object
    DateFormat dateFormat = DateFormat('MM/dd/yyyy');
    DateTime birthDate = dateFormat.parse(birthDateString);

    // Get the current date
    DateTime currentDate = DateTime.now();

    // Calculate age in years
    int age = currentDate.year - birthDate.year;

    // Check if the current date has already passed the birth date this year
    if (currentDate.month < birthDate.month ||
        (currentDate.month == birthDate.month &&
            currentDate.day < birthDate.day)) {
      age--;
    }
    print(age);
    return age;
  }
}

