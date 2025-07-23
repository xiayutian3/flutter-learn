// To parse this JSON data, do
//
//     final hyMealModel = hyMealModelFromJson(jsonString);

import 'dart:convert';

HyMealModel hyMealModelFromJson(String str) => HyMealModel.fromJson(json.decode(str));

String hyMealModelToJson(HyMealModel data) => json.encode(data.toJson());

List<String> complexs = ['简单','中等','困难'];

class HyMealModel {
  String id;
  List<String> categories;
  String title;
  int affordability;
  int complexity;
  String complexityStr;
  String imageUrl;
  int duration;
  List<String> ingredients;
  List<String> steps;
  bool isGlutenFree;
  bool isVegan;
  bool isVegetarian;
  bool isLactoseFree;

  HyMealModel({
    required this.id,
    required this.categories,
    required this.title,
    required this.affordability,
    required this.complexity,
    required this.complexityStr,
    required this.imageUrl,
    required this.duration,
    required this.ingredients,
    required this.steps,
    required this.isGlutenFree,
    required this.isVegan,
    required this.isVegetarian,
    required this.isLactoseFree,
  });

  factory HyMealModel.fromJson(Map<String, dynamic> json) => HyMealModel(
    id: json["id"],
    categories: List<String>.from(json["categories"].map((x) => x)),
    title: json["title"],
    affordability: json["affordability"],
    complexity: json["complexity"],
    complexityStr: complexs[json["complexity"]],
    imageUrl: json["imageUrl"],
    duration: json["duration"],
    ingredients: List<String>.from(json["ingredients"].map((x) => x)),
    steps: List<String>.from(json["steps"].map((x) => x)),
    isGlutenFree: json["isGlutenFree"],
    isVegan: json["isVegan"],
    isVegetarian: json["isVegetarian"],
    isLactoseFree: json["isLactoseFree"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "categories": List<dynamic>.from(categories.map((x) => x)),
    "title": title,
    "affordability": affordability,
    "complexity": complexity,
    "imageUrl": imageUrl,
    "duration": duration,
    "ingredients": List<dynamic>.from(ingredients.map((x) => x)),
    "steps": List<dynamic>.from(steps.map((x) => x)),
    "isGlutenFree": isGlutenFree,
    "isVegan": isVegan,
    "isVegetarian": isVegetarian,
    "isLactoseFree": isLactoseFree,
  };
}
