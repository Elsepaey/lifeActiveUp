import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nutrifit/core/themes.dart';
import 'package:nutrifit/pages/workout/workoutplans/workoutplanscontroller.dart';

import '../../../model/user controller.dart';

class WorkoutPlansView extends StatelessWidget {
   WorkoutPlansView({super.key,required this.plan});
   AppUserController userController = Get.find();


   final  Map<String, List<Map<String, dynamic>>>?plan;
  WorkoutPlansController controller=Get.put(WorkoutPlansController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(surfaceTintColor: Colors.transparent,backgroundColor: Colors.white,),
      body:       Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: 900,
            child: ListView.builder(
                itemCount: plan?.length,
                itemBuilder: (BuildContext context, int index) {
                  List<Map<String, dynamic>>? dayExercises=plan?["Day ${index+1}"];
                  List<DataRow>? items= dayExercises?.map<DataRow>((item)=>
                      DataRow(

                    cells: [

                      DataCell(Text(item['exercise'])),
                      DataCell(Text(item['sets'].toString())),
                      DataCell(Text(item['reps'].toString())),
                    ],

                  )).toList();
              return  Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,

                children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Day ${index+1}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                    ),
                    DataTable(

                      columns: [
                        DataColumn(label: Text("Exercise")),
                        DataColumn(label: Text("Sets")),
                        DataColumn(label: Text("Reps")),
                      ],
                      rows:items!,
                      horizontalMargin: 8
                      ,
                      border: TableBorder(horizontalInside: BorderSide(color: MyTheme.primary_color) ),
                    ),

                    // Add more tables for each day
                  ],
                );}),
          )
      )
      ,
    );
  }
}
