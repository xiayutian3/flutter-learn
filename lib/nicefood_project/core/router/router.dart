import 'package:flutter/material.dart';
import '../../ui/pages/main/main.dart';

class HYRouter {
  static final String initialRoute = HYMainScreen.routeName;

  static final Map<String, WidgetBuilder> routes = {
    HYMainScreen.routeName: (ctx) => HYMainScreen(),
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