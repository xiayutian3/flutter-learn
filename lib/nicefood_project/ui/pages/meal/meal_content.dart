

import 'package:first_flutter_project/nicefood_project/ui/pages/meal/meal.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/model/category_model.dart';
import '../../../core/model/meal_model.dart';
import '../../../core/viewmodel/meal_view_model.dart';
import 'package:collection/collection.dart';

import '../../widgets/meal_item.dart';


class HYMealContent extends StatelessWidget {
  const HYMealContent({super.key});

  @override
  Widget build(BuildContext context) {
    //获取参数，路由传递过来
    final category = ModalRoute.of(context)?.settings.arguments as Category;

    return Selector<HYMealViewModel, List<HyMealModel>>(
      //条件转换、过滤
        selector: (ctx, mealvm) =>  mealvm.meals.where((meal) => meal.categories.contains(category.id)).toList(),
        // 是否应该更新
        shouldRebuild: (pre, next) => ListEquality().equals(pre,next),
        // 输出的内容
        builder: (ctx, meals,child){
          return ListView.builder(
            itemCount: meals.length,
              itemBuilder: (ctx, index){
                return HYMealItem(meals[index]);
                  ListTile(title: Text(meals[index].title),);
            }
          );
        });
  }
}

// Consumer 使用方式
// class HYMealContent extends StatelessWidget {
//   const HYMealContent({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     //获取参数，路由传递过来
//     final category = ModalRoute.of(context)?.settings.arguments as Category;
//
//     return Consumer<HYMealViewModel>(
//         builder: (ctx, mealvm, child){
//           // print(mealvm.meals);
//           final meals = mealvm.meals.where((meal) => meal.categories.contains(category.id)).toList();
//
//           return ListView.builder(
//               itemCount: meals.length,
//               itemBuilder: (ctx, index){
//                 return ListTile(title: Text(meals[index].title),);
//               }
//           );
//         }
//     );
//   }
// }
