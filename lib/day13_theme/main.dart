import 'package:flutter/material.dart';
import './shared/app_theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //去掉调试模式
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        home: HYHome(),
        theme: HYAppTheme.norTheme,
        darkTheme: HYAppTheme.darkTheme,
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
