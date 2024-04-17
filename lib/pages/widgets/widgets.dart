import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:nutrifit/pages/Questioning/QuestioningController.dart';
import 'package:nutrifit/pages/profile/profilecontroller.dart';

class CustomWidgets {
  final QuestioningController controller = Get.find();

  static Widget customTextFormField(
      {required Icon icon,
      required String label,
      bool isPassword = false,
      bool obscure = false,
      bool isEmail = false,
      Widget? suffix,
      FormFieldValidator<String>? validator,
      FormFieldSetter<String>? onChanged,
      bool? enabled = true,
      String? initial}) {
    return Container(
      decoration: BoxDecoration(
          color: const Color(0xFFD9D9D9),
          borderRadius: BorderRadius.circular(13)),
      child: TextFormField(
        initialValue: initial,
        enabled: enabled,
        onChanged: onChanged,
        obscureText: obscure,
        validator: validator,
        decoration: InputDecoration(
          enabledBorder: InputBorder.none,
          contentPadding: const EdgeInsets.all(8.0),
          prefixIcon: icon,
          labelText: label,
          suffixIcon: suffix,
        ),
      ),
    );
  }

  static Widget customQuestionContainer(
      BuildContext context, String question, Widget options) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: [
          Card(
            child: Center(
                child: Text(
              question,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            )),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 8,
          ),
          options
        ],
      ),
    );
  }

  static Widget customDropdownButton(

  {
    required double screenWidth,
      required QuestioningController controller,
      required String question,
      required String value,
      required List<String> values,
    required int select
  }) {
    return Container(
      decoration: BoxDecoration(
          // color: Colors.grey,

          borderRadius: BorderRadius.circular(12)),
      padding: EdgeInsets.all(4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            question,
            style: TextStyle(fontSize: 12.0),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 5),
            width: screenWidth / 3.1,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Color(0xff52D1C6).withOpacity(0.3)),
            child: DropdownButton<String>(
              isExpanded: true,
              borderRadius: BorderRadius.circular(12),
              dropdownColor: Colors.grey.shade100,
              value: value,

              onChanged: (String? newValue) {
                value = newValue!;
                controller.onValueChange(value: newValue, select: select);

              },
              items: values.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }

  static Widget profileRow(
      {required double screenWidth,
      required double screenHeight,
      required String initialValue,
      required RxBool Enabled,
      required RxBool Editing,
      required BuildContext context,
      required String fieldName,
      required String newValue,
      required String title}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                width: screenWidth / 1.5,
                height: screenHeight / 30,
                decoration: BoxDecoration(
                    //color: const Color(0xFFD2CFCF),
                    borderRadius: BorderRadius.circular(3)),
                child: TextFormField(
                  onChanged: (value) {
                    newValue = value;
                  },
                  initialValue: initialValue,
                  enabled: Enabled.value,
                  //onChanged: onChanged,
                  //validator: validator,
                  decoration: InputDecoration(
                      enabledBorder: InputBorder.none,
                      contentPadding: const EdgeInsets.symmetric(vertical: 8.0),
                      disabledBorder: InputBorder.none),
                )),
            Editing.value
                ? Row(
                    children: [
                      InkWell(
                        onTap: () async {
                          var controller = Get.put(ProfileController());

                          await controller.updateField(
                              context, fieldName, newValue);
                          initialValue = newValue;
                          Enabled.value = false;
                          Editing.value = false;
                          Get.showSnackbar(
                            GetSnackBar(
                              message: "modified successfully",
                              duration: Duration(milliseconds: 1600),
                              snackPosition: SnackPosition.TOP,
                              backgroundColor: Colors.black87,
                            ),
                          );
                        },
                        child: Text(
                          "Save",
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      InkWell(
                        onTap: () {
                          Editing.value = false;
                          Enabled.value = false;
                        },
                        child: Text(
                          "cancel",
                          style: TextStyle(color: Colors.blue),
                        ),
                      )
                    ],
                  )
                : InkWell(
                    onTap: () {
                      Editing.value = true;
                      Enabled.value = true;
                    },
                    child: Text(
                      "Edit",
                      style: TextStyle(color: Colors.blue),
                    ),
                  )
          ],
        ),
        Divider(),
        SizedBox(
          height: screenHeight / 80,
        ),
      ],
    );
  }

  static recipeWidget(String name, String calories, String protein, String fat,
      String carbs, String sugars) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 250,
                            child:  Text(
                              name,
                              style: TextStyle(
                                fontSize: 14,
                              ),
                              //softWrap: true,
                              //overflow: TextOverflow.fade,
                            ),
                          )                          // Container(
                          //   height: 40,
                          //   child: Text(
                          //     name,
                          //     style: TextStyle(
                          //       fontWeight: FontWeight.bold,
                          //       fontSize: 11,
                          //     ),
                          //   ),
                          // ),

                          ,Text(calories),
                        ],
                      ),
                    ),
                  ],
                ),
                const Icon(Icons.more_vert_outlined)
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                calMeasure(25, "Protein", protein, Colors.green),
                calMeasure(21, "Fat", fat, Colors.green),
                calMeasure(14, "Carbs", carbs, Colors.green),
                calMeasure(14, "Sugars", sugars, Colors.green),
              ],
            ),
          ],
        ),
      ),
    );
  }

  static Row calMeasure(
    int gram,
    String type,
    String perc,
    Color color,
  ) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        SizedBox(
          height: 40,
          child: RotatedBox(
            quarterTurns: -1,
            child: LinearProgressIndicator(
              minHeight: 7,
              value: getNumbers(perc) / 100,
              backgroundColor: Colors.lightBlueAccent,
              color: color,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                perc,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
              ),
              Text(type),
            ],
          ),
        )
      ],
    );
  }

  static double getNumbers(String measure) {
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
  static Widget mealTypeBox ({required String title,required String startTime,required String endTime,required bool checked}) {
    return Column(children: [
      Text(title,style: TextStyle(fontWeight: FontWeight.bold,color: checked ? Colors.white:Colors.black)),
    Text("""($startTime - $endTime)""",style: TextStyle(color: checked ? Colors.white:Colors.black))
    ]);
}
}
