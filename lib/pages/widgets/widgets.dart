import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:nutrifit/pages/Questioning/QuestioningController.dart';
import 'package:nutrifit/pages/profile/profilecontroller.dart';

class CustomWidgets {
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
      double screenWidth,
      QuestioningController controller,
      String question,
      String value,
      List<String> values) {
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
    return
      Column(
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

                          await controller.updateField(context, fieldName, newValue);
                          initialValue = newValue;
                          Enabled.value = false;
                          Editing.value = false;
                          Get.showSnackbar(GetSnackBar(message: "modified successfully",duration: Duration(milliseconds:1600 ),snackPosition: SnackPosition.TOP,backgroundColor: Colors.black87,),);
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
}
