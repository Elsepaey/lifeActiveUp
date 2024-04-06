import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nutrifit/view/Questioning/QuestioningController.dart';
import 'package:nutrifit/view/widgets/widgets.dart';

class Age extends StatelessWidget {
  final QuestioningController controller = Get.find();

  Age({super.key});

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime(2000),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );

    if (picked != null ) {
     controller.birth.value='${picked.day}/${picked.month}/${picked.year}';
    }
  }
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return CustomWidgets.customQuestionContainer(
        context,
        "Set Your Birth Date",
        Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
        Container(
          decoration: BoxDecoration(color: Colors.cyan.shade300,borderRadius: BorderRadius.circular(12)),
          child: MaterialButton(
          onPressed: () => _selectDate(context),
              child: const Text(
               'Choose Birthdate'

              ),
              ),
        ),
    const SizedBox(height: 20),

    GetX<QuestioningController>(builder: (controller){
      return
      Text(controller.birth.value,style: const TextStyle(fontSize: 18),)

      ;})
    ],
    )); }
}
