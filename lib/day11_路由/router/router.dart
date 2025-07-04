import 'package:flutter/material.dart';

import '../main.dart';
import '../404.dart';
import '../about.dart';
import '../HYdetail.dart';


class HYRouter {
  static final Map<String, WidgetBuilder> routes = {
    AppPage.routeName: (ctx)=> AppPage(),
    HYAboutPage.routeName: (ctx)=> HYAboutPage()
  };

  static final String initialRoute = AppPage.routeName;

  static final RouteFactory onGenerateRoute =  (settings){
    if(settings.name == HYdetail.routeName ){
      return MaterialPageRoute(
          builder: (ctx){
            return HYdetail(settings.arguments as String);
          }
      );
    }
    return null;
  };

  static final RouteFactory onUnknownRoute = (settings){
    return MaterialPageRoute(builder: (ctx){
      return HY404();
    });
  };

}
