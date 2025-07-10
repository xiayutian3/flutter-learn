import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //去掉调试模式
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        home: HYHome(),
        theme: ThemeData(
          // 直接设置AppBar背景色
          // appBarTheme: AppBarTheme(
          //   backgroundColor: Colors.red,
          // ),
          colorScheme: ColorScheme.fromSeed(
          // 3.控制导航栏和 TabBar 的颜色。
          //   primary:Colors.orange,
            // 2.相当于原来的 primarySwatch
            //   应传入 MaterialColor（包含 primaryColor 和 accentColor），而不是普通的 Color
//          用于基于种子颜色 (seedColor) 动态生成完整的 ColorScheme（包括 primary、secondary、surface 等颜色）
            seedColor: Colors.red,
            // 1.亮度
            brightness: Brightness.light,
          ),
        ),
    );
  }
}

class HYHome extends StatefulWidget {
  const HYHome({super.key});

  @override
  State<HYHome> createState() => _HYHomeState();
}

class _HYHomeState extends State<HYHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('首页'),
        ),
//        单独设置appbar
        // backgroundColor: Colors.blueAccent,
        //使用主题色
          backgroundColor:Theme.of(context).colorScheme.primary,
      ),
      body: Center(
        child: Container(
          child: Text('Hello World'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.ac_unit),
        onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (ctx){
            return HYDetailPage();
          }));
        },
      ),
    );
  }
}



//局部主题覆盖
class HYDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Theme(

      // data: Theme.of(context).copyWith(
      //     primaryColor: Colors.purple,
      //     appBarTheme: AppBarTheme( // 显式覆盖 AppBar 主题
      //       color: Colors.purple,   // 直接设置 AppBar 背景色
      //     ),
      // ),

      // 另一种写法
      data: Theme.of(context).copyWith(
        colorScheme: Theme.of(context).colorScheme.copyWith(
          primary: Colors.purple,    // 主色
          surface: Colors.purple,   // AppBar 背景色（Material 3 默认用这个）
        )
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text("详情页"),
          // 无需再写 backgroundColor，自动继承 Theme
          // backgroundColor:Theme.of(context).colorScheme.surface,
        ),
        body: Center(
          child: Text("detail page"),
        ),
      ),
    );
  }
}
