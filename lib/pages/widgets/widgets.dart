import 'package:flutter/material.dart';
import 'package:nutrifit/pages/Questioning/QuestioningController.dart';

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
      bool? enabled=true,
        String? initial
      }) {
    return Container(
      decoration: BoxDecoration(
          color: const Color(0xFFD9D9D9),
          borderRadius: BorderRadius.circular(13)),
      child: TextFormField(
        initialValue: initial,
        enabled:enabled ,
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
              items: values
                  .map<DropdownMenuItem<String>>((String value) {
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
  static Widget profileRow({
    required double screenWidth,
    required double screenHeight,required String fullName,required nameEnabled,required nameEditing}){
    return         Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
            width: screenWidth / 1.5,
            height: screenHeight / 30,
            decoration: BoxDecoration(
              //color: const Color(0xFFD2CFCF),
                borderRadius: BorderRadius.circular(3)),
            child: TextFormField(
              initialValue: fullName,
              enabled: nameEnabled,
              //onChanged: onChanged,
              //validator: validator,
              decoration: InputDecoration(
                  enabledBorder: InputBorder.none,
                  contentPadding:
                  const EdgeInsets.symmetric(vertical: 8.0),
                  disabledBorder: InputBorder.none),
            )),
        nameEditing?
        Row(
          children: [
            InkWell(
              child: Text(
                "Save",
                style: TextStyle(color: Colors.blue),
              ),
            )
            ,
            SizedBox(width: 8,),
            InkWell(
              onTap: (){nameEditing=false;
              nameEnabled=false;
              },
              child: Text(
                "cancel",
                style: TextStyle(color: Colors.blue),
              ),
            )
          ],
        )
            :
        InkWell(
          onTap: (){
            nameEditing=true;
            nameEnabled=true;
          },
          child: Text(
            "Edit",
            style: TextStyle(color: Colors.blue),
          ),
        )
      ],
    );

  }
}
