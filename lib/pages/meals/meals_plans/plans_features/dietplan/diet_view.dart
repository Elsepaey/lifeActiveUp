import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nutrifit/core/themes.dart';

import '../../mealsplans_api.dart';

class DietView extends StatelessWidget {
   DietView({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Padding(padding: EdgeInsets.only(
        top: height/66,bottom: height / 11.40, left: width / 60, right: width / 60),
    child: SingleChildScrollView(
      child: Column(
        children: [
          FutureBuilder (
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
                return
                  SizedBox(
                    height: height/1.2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Text("breakfast",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: MyTheme.primary_color),),
                        ),
                        Expanded(

                          //height:height/4,
                          child: ListView.builder(

                            itemBuilder: (context, index) {
                              var elementdata = data["breakfast"][index];
                              return
                                ExpandablePanel(
                                  header: Text(
                                    elementdata["Name"],
                                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
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
                            itemCount:data["breakfast"].length,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Text("lunch",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: MyTheme.primary_color),),
                        ),

                        Expanded(
                          //height:height/3,
                          child: ListView.builder(

                            itemBuilder: (context, index) {
                              var elementdata = data["lunch"][index];
                              return
                                ExpandablePanel(
                                  header: Text(
                                    elementdata["Name"],
                                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
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
                            itemCount:data["lunch"].length,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Text("dinner",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: MyTheme.primary_color),),
                        ),

                        Expanded(
                          //height:height/3,
                          child: ListView.builder(

                            itemBuilder: (context, index) {
                              var elementdata = data["dinner"][index];
                              return
                                ExpandablePanel(
                                  header: Text(
                                    elementdata["Name"],
                                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
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
                            itemCount:data["dinner"].length,
                          ),
                        ),

                      ],
                    ),
                  );
              }
            },
          ),

        ],
      ),
    ),
    );
  }
   Future<dynamic> getData()
   async {

     var data= await MealsApi.postDiet();
     print(data);
     return data;

   }
}
