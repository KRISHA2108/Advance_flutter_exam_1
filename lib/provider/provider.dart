import 'package:andvance_exam_1/helper/helper.dart';
import 'package:flutter/material.dart';

class HomeProvider with ChangeNotifier {
  List articles = [];
  List<Map> company = [
    {
      "name": "Tesla",
    },
    {
      "name": "Tata",
    },
    {
      "name": "Jio",
    },
    {
      "name": "Bmw",
    },
    {
      "name": "Honda",
    },
    {
      "name": "Bajaj",
    },
  ];
  void getNewsData() {
    ShrHelper helper = ShrHelper();
    helper.getData().then((value) {
      notifyListeners();
    });
  }
}
