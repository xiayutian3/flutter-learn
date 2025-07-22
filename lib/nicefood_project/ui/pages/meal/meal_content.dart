import 'package:first_flutter_project/nicefood_project/ui/pages/meal/meal.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/model/category_model.dart';
import '../../../core/viewmodel/meal_view_model.dart';


class HYMealContent extends StatelessWidget {
  const HYMealContent({super.key});

  @override
  Widget build(BuildContext context) {
    //获取参数，路由传递过来
    final category = ModalRoute.of(context)?.settings.arguments as Category;

    return Consumer<HYMealViewModel>(
        builder: (ctx, mealvm, child){
          print(mealvm.meals);

          return Text('${mealvm.meals.length}');
        }
    );
  }
}
