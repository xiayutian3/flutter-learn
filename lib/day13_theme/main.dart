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
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.red,
          ),
          colorScheme: ColorScheme.fromSeed(
            primary:Colors.red,
            // 2.相当于原来的 primarySwatch
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
      ),
      body: Center(
        child: Container(
          child: Text('Hello World'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.ac_unit),
        onPressed: (){

        },
      ),
    );
  }
}
