import 'package:flutter/services.dart';
import 'dart:convert';
import '../model/category_model.dart';
import '../model/meal_model.dart';

class JsonParse {
//  加载分类数据
  static Future<List<Category>> getCategoryData() async {
    // 1. 加载 JSON 文件
    final jsonString = await rootBundle.loadString("assets/json/category.json");

    // 2. 将 JSON 字符串解析为 Map/List
    final result = json.decode(jsonString);

    // 3. 提取 "category" 数据并转换为模型对象
    final resultList = result["category"];
    List<Category> categories = [];
    for (var json in resultList) {
      categories.add(Category.fromJson(json));
    }

    return categories;
  }


//  详情内容list
  static Future<List<HyMealModel>> getMealData() async {
    // 1. 加载 JSON 文件
    final jsonString = await rootBundle.loadString("assets/json/meal.json");

    // 2. 将 JSON 字符串解析为 Map/List
    final result = json.decode(jsonString);

    // 3. 提取 "meal" 数据并转换为模型对象
    final resultList = result["meal"];
    // print(resultList);
    List<HyMealModel> meals = [];
    for (var json in resultList) {
      meals.add(HyMealModel.fromJson(json));
    }

    return meals;
  }

}