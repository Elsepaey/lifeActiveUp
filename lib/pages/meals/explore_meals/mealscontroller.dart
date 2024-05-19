import 'package:flutter/services.dart';
import 'package:get/get.dart';

class MealsController extends GetxController {
 RxList<dynamic> meals = [].obs;
 RxString keyword="".obs;


  Future<List> loadCsv() async {
    String csvString = await rootBundle.loadString('assets/meals/meals.csv');
    List<String> data = csvString.split("\n");
    List<dynamic> rowData = [];
    for (String i in data) {
      rowData.add(i.split(","));
    }
    return rowData;
  }
  search(String value)  async {
    var showResults = [];
    keyword.value=value;

    if (keyword.value.isEmpty) {
      meals.value=await loadCsv();

    }

    else
    {
      meals.value=await loadCsv();

      for (var elementsnap in meals) {
        var Name = elementsnap[1].toString().toLowerCase();
        if (Name.contains(keyword.value.toString().toLowerCase()))
            {
          showResults.add(elementsnap);
            }
      }
      print(showResults);
      meals.value = showResults;

    }
  }
  sortMeals(int index)
  {
    if (index ==3)
      {
        meals.sort((a, b) {
          var x=int.parse(b[index]);
          var y=int.parse(a[index]);
          return  x .compareTo(y);
        });
      }
    else
      {
        meals.sort((a, b) {
          var x=getNumbers(b[index]);
          var y=getNumbers(a[index]);

          return  x .compareTo(y);
        });
      }

  }
   double getNumbers(String measure) {
    // Extracting only numbers using regular expression
    RegExp regex = RegExp(r'\d+(\.\d+)?');
    Iterable<Match> matches = regex.allMatches(measure);

    // Getting the first match (assuming there is only one)
    Match match = matches.first;
    String matched = match.group(0)!;
    // Converting the matched numbers to a double
    double numbersOnly = double.parse(matched);
    return numbersOnly;
  }


  @override
  void onInit() async {
    meals.value=await loadCsv();
    super.onInit();
  }
}
