
import '../services/json_parse.dart';
import 'package:flutter/material.dart';
import '../model/meal_model.dart';

//状态管理数据
class HYMealViewModel extends ChangeNotifier {
  List<HyMealModel> _meals = [];

  List<HyMealModel> get meals {
    return _meals;
  }

  HYMealViewModel(){
    JsonParse.getMealData().then((res){
      // print(res);
      _meals = res;
      //通知跟新
      notifyListeners();
    });
  }
}