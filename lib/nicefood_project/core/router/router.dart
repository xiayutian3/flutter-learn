import 'package:flutter/material.dart';
import '../../ui/pages/main/main.dart';
import '../../ui/pages/meal/meal.dart';
import '../../ui/pages/detail/detail.dart';

class HYRouter {
  static final String initialRoute = HYMainScreen.routeName;

  static final Map<String, WidgetBuilder> routes = {
    HYMainScreen.routeName: (ctx) => HYMainScreen(),
    HYMeal.routeName: (ctx) => HYMeal(),
    HYDetail.routeName: (ctx) => HYDetail(),
  };

//  自定义路由
  static final RouteFactory generateRoute = (settings) {
    return null;
  };

  //404路由
  static final RouteFactory unknownRoute = (settings) {
    return null;
  };
}