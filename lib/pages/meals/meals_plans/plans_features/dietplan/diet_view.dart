import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:nutrifit/core/themes.dart';
import 'package:nutrifit/pages/meals/meals_plans/plans_features/dietplan/diet_controller.dart';
import 'package:toggle_list/toggle_list.dart';
import '../../../../../model/user controller.dart';
import '../../mealsplans_api.dart';
import '../custom_meal_plan/outputController.dart';

class DietView extends StatelessWidget {
  DietView({super.key,required this.dietType });
  String dietType;
  final AppUserController userController = Get.find();
final DietController controller=Get.put(DietController());
  OutputController outputController=Get.put(OutputController());

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(

      appBar: AppBar(),
      body:       Padding(
        padding: EdgeInsets.only(top: screenHeight / 66,
            //bottom: screenHeight / 22.869,
            left: width / 80,
            right: width / 80),
        child: Column(
          children: [
             SizedBox(
                height:screenHeight/4.2 ,
                child: const Image(image: AssetImage("assets/images/chef_2.png",),)),
            FutureBuilder(
              future: getData(dietType:dietType),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                } else if (snapshot.hasError) {
                  return Center(child: Text('Error: ${snapshot.error}'));
                } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                  return const Center(child: Text('No data available'));
                } else {
                  var data = snapshot.data!["output"];
                  var breakfastData = data["breakfast"];
                  var lunchData = data["lunch"];
                  var dinnerData=data["dinner"];

                  List<ToggleListItem> breakfastToggleListItems = breakfastData.map<ToggleListItem>((item)
                  {
                    return
                      ToggleListItem(

                        title: Card(
                            surfaceTintColor: Colors.transparent,
                            shadowColor: Colors.transparent,
                            elevation: 2,
                            margin: const EdgeInsets.all(0),
                            color: Colors.grey.shade200,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(item["Name"], style:  TextStyle(fontSize: screenHeight/46)),
                            )),

                        content: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              const Text("RecipeIngredients",style: TextStyle(fontWeight: FontWeight.bold),),
                              SizedBox(
                                  height:40,
                                  child: ListView(children:item["RecipeIngredientParts"].map<Card>((item)=>Card(

                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(item),
                                      ))).toList(),scrollDirection: Axis.horizontal,)),
                              ExpansionTile(
                                tilePadding: const EdgeInsets.symmetric(vertical: 4),
                                title: const Text("RecipeInstructions",style: TextStyle(fontWeight: FontWeight.bold),),
                                children: item["RecipeInstructions"]
                                    .map<Text>((item) => Text(item))
                                    .toList(),
                              ),

                              Text("Calories:                          ${item["Calories"]}",style: const TextStyle(fontWeight: FontWeight.bold)),
                              Text("Fat Content:                      ${item["FatContent"]}",style: const TextStyle(fontWeight: FontWeight.bold)),
                              Text("Saturated Fat Content:     ${item["SaturatedFatContent"]}",style: const TextStyle(fontWeight: FontWeight.bold)),
                              Text("Cholesterol Content:        ${item["CholesterolContent"]}",style: const TextStyle(fontWeight: FontWeight.bold)),
                              Text("Sodium Content:             ${item["SodiumContent"]}",style: const TextStyle(fontWeight: FontWeight.bold)),
                              Text("Carbohydrate Content:     ${item["CarbohydrateContent"]}",style: const TextStyle(fontWeight: FontWeight.bold)),
                              Text("Fiber Content:                     ${item["FiberContent"]}",style: const TextStyle(fontWeight: FontWeight.bold)),
                              Text("Sugar Content:                    ${item["SugarContent"]}",style: const TextStyle(fontWeight: FontWeight.bold)),
                              Text("Protein Content:                ${item["ProteinContent"]}",style: const TextStyle(fontWeight: FontWeight.bold)),

                              GetX<OutputController>(builder: (controller)=>
                                  Card(
                                    color: Colors.white,

                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                                            children: [
                                              const Text("Add this meal to :",style: TextStyle(fontWeight: FontWeight.w500),),

                                              DropdownButton<String>(
                                                menuMaxHeight: 300,
                                                value: outputController.mealType.value,
                                                style: const TextStyle(color: Colors.black,fontWeight: FontWeight.w400),
                                                items: const [
                                                  DropdownMenuItem(
                                                    value:'Breakfast',
                                                    child: Text('Breakfast'),
                                                  ),
                                                  DropdownMenuItem(
                                                    value: 'Launch',
                                                    child: Text('Launch'),
                                                  ),DropdownMenuItem(
                                                    value: 'Dinner',
                                                    child: Text('Dinner'),
                                                  ),
                                                  DropdownMenuItem(
                                                    value: 'snack',
                                                    child: Text('snack'),
                                                  ),
                                                ],
                                                onChanged: (String? newValue) {
                                                  outputController.mealType.value=newValue!;
                                                },
                                              ),


                                            ],
                                          ),
                                          SizedBox(
                                              height: 25,
                                              child: ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                  foregroundColor: MyTheme.primary_color, backgroundColor: Colors.white, // text color
                                                  side: BorderSide(
                                                    width: 1.2,
                                                    color: MyTheme.primary_color,
                                                    style: BorderStyle.solid, // solid border
                                                  ),
                                                ),
                                                onPressed: () {
                                                  outputController.confirm(context, item["Name"],item["Calories"], item["ProteinContent"], item["FatContent"], item["CarbohydrateContent"], item["SugarContent"]);
                                                },
                                                child: const Text('Confirm'),
                                              )
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                              )
                            ].map((text) => Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
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
                          margin: const EdgeInsets.all(0),
                          color: Colors.grey.shade200,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(item["Name"], style:  TextStyle(fontSize: screenHeight/46)),
                          )),

                      content: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            const Text("RecipeIngredients",style: TextStyle(fontWeight: FontWeight.bold),),
                            SizedBox(
                                height:40,
                                child: ListView(children:item["RecipeIngredientParts"].map<Card>((item)=>Card(

                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(item),
                                    ))).toList(),scrollDirection: Axis.horizontal,)),

                            Text("Calories:                          ${item["Calories"]}",style: const TextStyle(fontWeight: FontWeight.bold)),
                            Text("Fat Content:                      ${item["FatContent"]}",style: const TextStyle(fontWeight: FontWeight.bold)),
                            Text("Saturated Fat Content:     ${item["SaturatedFatContent"]}",style: const TextStyle(fontWeight: FontWeight.bold)),
                            Text("Cholesterol Content:        ${item["CholesterolContent"]}",style: const TextStyle(fontWeight: FontWeight.bold)),
                            Text("Sodium Content:             ${item["SodiumContent"]}",style: const TextStyle(fontWeight: FontWeight.bold)),
                            Text("Carbohydrate Content:     ${item["CarbohydrateContent"]}",style: const TextStyle(fontWeight: FontWeight.bold)),
                            Text("Fiber Content:                     ${item["FiberContent"]}",style: const TextStyle(fontWeight: FontWeight.bold)),
                            Text("Sugar Content:                    ${item["SugarContent"]}",style: const TextStyle(fontWeight: FontWeight.bold)),
                            Text("Protein Content:                ${item["ProteinContent"]}",style: const TextStyle(fontWeight: FontWeight.bold)),
                            GetX<OutputController>(builder: (controller)=>
                                Card(
                                  color: Colors.white,

                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          children: [
                                            const Text("Add this meal to :",style: TextStyle(fontWeight: FontWeight.w500),),

                                            DropdownButton<String>(
                                              menuMaxHeight: 300,
                                              value: outputController.mealType.value,
                                              style: const TextStyle(color: Colors.black,fontWeight: FontWeight.w400),
                                              items: const [
                                                DropdownMenuItem(
                                                  value:'Breakfast',
                                                  child: Text('Breakfast'),
                                                ),
                                                DropdownMenuItem(
                                                  value: 'Launch',
                                                  child: Text('Launch'),
                                                ),DropdownMenuItem(
                                                  value: 'Dinner',
                                                  child: Text('Dinner'),
                                                ),
                                                DropdownMenuItem(
                                                  value: 'snack',
                                                  child: Text('snack'),
                                                ),
                                              ],
                                              onChanged: (String? newValue) {
                                                outputController.mealType.value=newValue!;
                                              },
                                            ),


                                          ],
                                        ),
                                        SizedBox(
                                            height: 25,
                                            child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                foregroundColor: MyTheme.primary_color, backgroundColor: Colors.white, // text color
                                                side: BorderSide(
                                                  width: 1.2,
                                                  color: MyTheme.primary_color,
                                                  style: BorderStyle.solid, // solid border
                                                ),
                                              ),
                                              onPressed: () {
                                                outputController.confirm(context, item["Name"],item["Calories"], item["ProteinContent"], item["FatContent"], item["CarbohydrateContent"], item["SugarContent"]);
                                              },
                                              child: const Text('Confirm'),
                                            )
                                        )
                                      ],
                                    ),
                                  ),
                                )
                            )
                          ].map((text) => Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
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
                          margin: const EdgeInsets.all(0),
                          color: Colors.grey.shade200,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(item["Name"], style:  TextStyle(fontSize: screenHeight/46,fontWeight: FontWeight.w500)),
                          )),

                      content: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            const Text("RecipeIngredients",style: TextStyle(fontWeight: FontWeight.bold),),
                            SizedBox(
                                height:40,
                                child: ListView(children:item["RecipeIngredientParts"].map<Card>((item)=>Card(

                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(item),
                                    ))).toList(),scrollDirection: Axis.horizontal,)),

                            Text("Calories:                          ${item["Calories"]}",style: const TextStyle(fontWeight: FontWeight.bold)),
                            Text("Fat Content:                      ${item["FatContent"]}",style: const TextStyle(fontWeight: FontWeight.bold)),
                            Text("Saturated Fat Content:     ${item["SaturatedFatContent"]}",style: const TextStyle(fontWeight: FontWeight.bold)),
                            Text("Cholesterol Content:        ${item["CholesterolContent"]}",style: const TextStyle(fontWeight: FontWeight.bold)),
                            Text("Sodium Content:             ${item["SodiumContent"]}",style: const TextStyle(fontWeight: FontWeight.bold)),
                            Text("Carbohydrate Content:     ${item["CarbohydrateContent"]}",style: const TextStyle(fontWeight: FontWeight.bold)),
                            Text("Fiber Content:                     ${item["FiberContent"]}",style: const TextStyle(fontWeight: FontWeight.bold)),
                            Text("Sugar Content:                    ${item["SugarContent"]}",style: const TextStyle(fontWeight: FontWeight.bold)),
                            Text("Protein Content:                ${item["ProteinContent"]}",style: const TextStyle(fontWeight: FontWeight.bold)),
                            GetX<OutputController>(builder: (controller)=>
                                Card(
                                  color: Colors.white,

                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          children: [
                                            const Text("Add this meal to :",style: TextStyle(fontWeight: FontWeight.w500),),

                                            DropdownButton<String>(
                                              menuMaxHeight: 300,
                                              value: outputController.mealType.value,
                                              style: const TextStyle(color: Colors.black,fontWeight: FontWeight.w400),
                                              items: const [
                                                DropdownMenuItem(
                                                  value:'Breakfast',
                                                  child: Text('Breakfast'),
                                                ),
                                                DropdownMenuItem(
                                                  value: 'Launch',
                                                  child: Text('Launch'),
                                                ),DropdownMenuItem(
                                                  value: 'Dinner',
                                                  child: Text('Dinner'),
                                                ),
                                                DropdownMenuItem(
                                                  value: 'snack',
                                                  child: Text('snack'),
                                                ),
                                              ],
                                              onChanged: (String? newValue) {
                                                outputController.mealType.value=newValue!;
                                              },
                                            ),


                                          ],
                                        ),
                                        SizedBox(
                                            height: 25,
                                            child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                foregroundColor: MyTheme.primary_color, backgroundColor: Colors.white, // text color
                                                side: BorderSide(
                                                  width: 1.2,
                                                  color: MyTheme.primary_color,
                                                  style: BorderStyle.solid, // solid border
                                                ),
                                              ),
                                              onPressed: () {
                                                outputController.confirm(context, item["Name"],item["Calories"], item["ProteinContent"], item["FatContent"], item["CarbohydrateContent"], item["SugarContent"]);
                                              },
                                              child: const Text('Confirm'),
                                            )
                                        )
                                      ],
                                    ),
                                  ),
                                )
                            )
                          ].map((text) => Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: text,
                          )).toList(),
                        ),
                      ),
                    );
                  }).toList();
                  return Expanded(
                    child: PageView(
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
                                  fontSize: screenHeight/40,
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
                                  fontSize: screenHeight/40,
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
                                  fontSize: screenHeight/40,
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
                    ),
                  );
                }
              },
            ),
          ],
        ),
      )
      ,
    )
    ;
  }

  Future<dynamic> getData({required String dietType}) async {
    var data = await MealsApi.postDiet(
        gender: userController.gender,
        weight: userController.weight,
        height: userController.height,
        age: "${calculateAge(userController.dateOfBirth)}",
        diseases: userController.allergiesList.join(","),
        activityLevel: userController.fitnessLevel, dietType: dietType);

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
    return age;
  }
}

