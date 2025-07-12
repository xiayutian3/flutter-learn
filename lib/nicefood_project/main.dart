import 'package:flutter/material.dart';
import './ui/shared/app_theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        //去掉调试模式
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        theme: HYAppTheme.norTheme,
        darkTheme: HYAppTheme.darkTheme,
    );
  }
}


