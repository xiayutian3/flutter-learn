import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        //去掉调试模式
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        home: HYHome());
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

    // 1.Animation: 抽象类
      // 监听动画值的改变
      // 监听动画状态的改变
      // value
      // status
    // 2.AnimationController继承自Animation
      // vsync: 同步信号(this -> with SingleTickerProviderStateMixin)
      // forward(): 向前执行动画
      // reverse(): 反转执行动画
    // 3.CurvedAnimation:
      // 作用：设置动画执行的速率(速度曲线)
    // 4.Tween: 设置动画执行的value范围
      // begin: 开始值
      // end: 结束值

    
    // 例子
    // final controller = AnimationController(vsync: this);
    // final animation = CurvedAnimation(parent: controller, curve: Curves.eLasticInOut);
    // final valueAnimation = Tween(begin: 100, end: 200).animate(animation);

    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('首页'),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Container(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
