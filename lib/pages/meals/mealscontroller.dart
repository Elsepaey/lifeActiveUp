

import 'package:csv/csv.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class MealsController extends GetxController{

  Future<void> loadCsv() async {
      String csvString = await rootBundle.loadString('assets/meals/meals.csv');
     //  List<List<dynamic>> csvTable = const CsvToListConverter().convert(csvString).toList();
      List<String>data=csvString.split("\n");
      List<dynamic>rowData=[];
for(String i in data )
  {
    rowData.add(i.split(","));

  }
//print(rowData[0][1]);
meals=rowData;
      //String data=csvTable[0] as String;
// csvString.split("\n");
//       print(csvTable[0][0]);0

      // for (var row in ) {
      //   meals.add(row); // Each row is a list of cells from the CSV file
      // }
      print("loaded");
      print(meals.length);
  }
 List<dynamic> meals=[];

  @override

  void onInit() async {
    await loadCsv();
    super.onInit();
  }
}