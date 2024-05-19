import 'dart:convert';
import 'package:http/http.dart' as http;

class MealsApi {
  static Future<Map<String, dynamic>> postDiet() async {
    var url = Uri.parse('http://10.0.2.2:8000/predict/');
    var headers = {
      'accept': 'application/json',
      'Content-Type': 'application/json',
    };

    var body = json.encode({
      "metrics_input": [
        "male",
        "72",
        "170",
        "23"
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
