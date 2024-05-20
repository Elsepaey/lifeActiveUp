import 'dart:convert';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:http/http.dart' as http;

import '../../../model/user controller.dart';

class MealsApi {
  static AppUserController userController = Get.find();

  static Future<Map<String, dynamic>> postDiet({required String gender,required String weight,required String height,required String age}) async {
    var url = Uri.parse('http://10.0.2.2:8000/predict/');
    var headers = {
      'accept': 'application/json',
      'Content-Type': 'application/json',
    };

    var body = json.encode({
      "metrics_input": [
        gender,
        "$weight",
        "$height",
        "$age"
      ],
      "ingredients": [],
      "params": {
        "n_neighbors": 5,
        "return_distance": false
      }
    });

    var response = await http.post(url, headers: headers, body: body);
    Map<String, dynamic> responseBody =  await json.decode(response.body);

    return responseBody;
  }

  static  postCustom(List nutritions,List ingredients) async {
    var url = Uri.parse('http://10.0.2.2:8000/recommendCustomFood/');
    var headers = {
      'accept': 'application/json',
      'Content-Type': 'application/json',
    };

    var body = json.encode({
      "metrics_input": nutritions,
      "ingredients": ingredients,
      "params": {
        "n_neighbors": 5,
        "return_distance": false
      }
    });

    var response = await http.post(url, headers: headers, body: body);
    var responseBody =  await json.decode(response.body);

    return responseBody;
  }

}
