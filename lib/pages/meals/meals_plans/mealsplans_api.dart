import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import '../../../model/user controller.dart';
class MealsApi {
  static AppUserController userController = Get.find();

  static Future<Map<String, dynamic>> postDiet({required String gender,required String weight,required String height,required String age,required String diseases,required activityLevel}) async {
    var url = Uri.parse('http://dietrecommender.live/predict/');
    var headers = {
      'accept': 'application/json',
      'Content-Type': 'application/json',
    };

    var body = json.encode({
      "metrics_input": [
        gender,
        weight,
        height,
        age,
        diseases,
        activityLevel
      ],
      "ingredients": [],
      "allergies": userController.allergiesList,
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
    var url = Uri.parse('http://dietrecommender.live/recommendCustomFood/');
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
