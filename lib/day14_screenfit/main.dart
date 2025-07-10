import 'package:flutter/material.dart';
import './shared/size_fit.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 屏幕相关尺寸
    ScreenMetrics.initialize();

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
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('首页'),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Container(
          width: ScreenMetrics.setRpx(400), //设计稿750上的尺寸
          height: ScreenMetrics.setPx(200),  //设计稿375上的尺寸
          color: Colors.orange,
          alignment: Alignment.center,
          child: Text('Hello World',style: TextStyle(fontSize: ScreenMetrics.setPx(20)),),
        ),
      ),
    );
  }
}
