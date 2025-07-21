import 'package:flutter/material.dart';

class HYAppTheme{
//  常量定义
  // static const double smallsize = 16;


  static final ThemeData norTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      // 2.相当于原来的 primarySwatch
      //   应传入 MaterialColor（包含 primaryColor 和 accentColor），而不是普通的 Color
//          用于基于种子颜色 (seedColor) 动态生成完整的 ColorScheme（包括 primary、secondary、surface 等颜色）
      seedColor: Colors.blue,
      // 1.亮度
      brightness: Brightness.light,
      // 设置通用背景颜色
      background: Color.fromRGBO(255, 254, 222, 1)
    ),

      //相关的字体设置
      // textTheme:TextTheme(
      //   // displayLarge: const TextStyle(
      //   //   fontSize: 72,
      //   //   fontWeight: FontWeight.bold,
      //   // ),
      // )
  );

  static final ThemeData darkTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      // 2.相当于原来的 primarySwatch
      //   应传入 MaterialColor（包含 primaryColor 和 accentColor），而不是普通的 Color
//          用于基于种子颜色 (seedColor) 动态生成完整的 ColorScheme（包括 primary、secondary、surface 等颜色）
      seedColor: Colors.orange,
      // 1.亮度
      brightness: Brightness.dark,
    ),

    //相关的字体设置
    // textTheme:TextTheme(
    //   // displayLarge: const TextStyle(
    //   //   fontSize: 72,
    //   //   fontWeight: FontWeight.bold,
    //   // ),
    // )
  );

}