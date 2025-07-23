import 'package:flutter/material.dart';

import '../../../core/model/category_model.dart';
import './meal_content.dart';


class HYMeal extends StatefulWidget {
//  定义路由名称
  static final String routeName = '/meal';

  // const HYMeal({super.key});

  @override
  State<HYMeal> createState() => _HYMealState();
}

class _HYMealState extends State<HYMeal> {
  @override
  Widget build(BuildContext context) {
    //获取参数，路由传递过来
    final category = ModalRoute.of(context)?.settings.arguments as Category;


    return Scaffold(
      appBar: AppBar(
        title:Text( category.title! ),
        centerTitle: true, //标题居中
        backgroundColor: Colors.blueAccent,
      ),
      body: HYMealContent()
    );
  }
}
