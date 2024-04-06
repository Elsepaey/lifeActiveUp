import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:nutrifit/view/Questioning/QuestioningController.dart';

class CustomWidgets {
  static Widget customTextFormField(
      {required Icon icon,
      required String label,
      bool isPassword = false,
      bool obscure = false,
      bool isEmail = false,
      Widget? suffix,
      FormFieldValidator<String>? validator,
      FormFieldSetter<String>? onChanged}) {
    return Container(
      decoration: BoxDecoration(
          color: const Color(0xFFD9D9D9),
          borderRadius: BorderRadius.circular(13)),
      child: TextFormField(
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
}
