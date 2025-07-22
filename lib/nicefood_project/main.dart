import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './ui/shared/app_theme.dart';
import './core/router/router.dart';
import './core/shared/size_fit.dart';
import './core/viewmodel/meal_view_model.dart';

void main() => runApp(
    // Provider → ViewModel/Provider/Consumer(Selector)
//  状态管理
  ChangeNotifierProvider(
      create: (ctx)=> HYMealViewModel(),
      child:  MyApp()
  )

);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 初始化屏幕适配
    ScreenMetrics.initialize();

    return MaterialApp(
        //去掉调试模式
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        // 主题设置
        theme: HYAppTheme.norTheme,
        darkTheme: HYAppTheme.darkTheme,
        //路由配置
        initialRoute: HYRouter.initialRoute,
        routes: HYRouter.routes,
        onGenerateRoute: HYRouter.generateRoute,
        onUnknownRoute: HYRouter.unknownRoute,
    );
  }
}


