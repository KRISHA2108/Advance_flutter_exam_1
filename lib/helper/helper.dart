import 'dart:convert';
import 'package:andvance_exam_1/model/model.dart';
import 'package:http/http.dart' as http;

class ShrHelper {
  Future<WelcomeModel?> getData() async {
    String link =
        "https://newsapi.org/v2/everything?q=tesla&tata&jio&bmw&honda&Bajajfrom=2024-11-17&sortBy=publishedAt&apiKey=999e8dc91a1741f7b3427908709b5308";

    http.Response response = await http.get(Uri.parse(link));

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      WelcomeModel model = WelcomeModel.mapToModel(data);
      return model;
    }
    return null;
  }
}
