import 'package:flutter/material.dart';

import '../../../core/model/meal_model.dart';


class HYDetail extends StatefulWidget {
  //路由名称
  static const String routeName = "/detail";

  const HYDetail({super.key});

  @override
  State<HYDetail> createState() => _HYDetailState();
}

class _HYDetailState extends State<HYDetail> {
  @override
  Widget build(BuildContext context) {
    //路由数据获取
    final meal = ModalRoute.of(context)?.settings.arguments as HyMealModel;

    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title,
        ),
        centerTitle: true, //标题居中
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Container(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
