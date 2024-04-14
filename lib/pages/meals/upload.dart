// import 'package:flutter/services.dart' show ByteData, rootBundle;
// import 'package:csv/csv.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
//
// Future<void> uploadCSVToFirestore() async {
//   // Read the CSV file
//   String csvString = await rootBundle.loadString('assets/meals/data.csv');
//   print('filechoosecd');
//
//   // Convert CSV string to List<List<dynamic>>
//   List<List<dynamic>> csvTable = const CsvToListConverter().convert(csvString);
// print ("csv to list");
//   // Convert each row of the CSV to a map
//   List<Map<String, dynamic>> data = [];
//   List<String> headers = csvTable[0].map((header) => header.toString()).toList();
//   for (int i = 1; i < csvTable.length; i++) {
//     Map<String, dynamic> rowMap = {};
//     for (int j = 0; j < headers.length; j++) {
//       rowMap[headers[j]] = csvTable[i][j];
//     }
//     data.add(rowMap);
//   }
//   //print(data[1]);
//
//   // Upload data to Firestore
//   CollectionReference collectionRef = FirebaseFirestore.instance.collection('meals');
//   data.forEach((rowData) async {
//    // print("start");
//     await collectionRef.add(rowData);
//     print("row uploaded");
//   });
// }
//
