import 'package:flutter/services.dart';
import 'dart:convert';
import '../model/category_model.dart';

class JsonParse {
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
}