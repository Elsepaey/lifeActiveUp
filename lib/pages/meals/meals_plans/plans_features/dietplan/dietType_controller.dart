import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DietTypeController extends GetxController {
  Rx<String?>  selectedDiet = "No".obs;
  final _dietOptions = [
    {'label': 'No', 'icon': "assets/icons/no-50.png"},
    {'label': 'Vegetarian', 'icon': "assets/icons/vegetable.png"},
    {'label': 'Low-carb', 'icon':"assets/icons/transparent-easter-egg-5e4aabc7682362.9952964415819519434266.png"},
    {'label': 'Keto', 'icon':"assets/icons/kisspng-apple-color-emoji-iphone-emojipedia-5afa8ac83a75d1.7674795015263689682395.png"},
    {'label': 'Clean eating', 'icon': "assets/icons/transparent-washing-machine-5f3b510eadaf82.5709761315977228947114.png"},
  ];

  void selectDiet(String dietLabel) {
    selectedDiet.value = dietLabel;
  }

  List<Map<String, dynamic>> get dietOptions => _dietOptions;
}