import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: GestureDetector(
            onTapDown: (details) {
              print("手指按下");
              //全局位置
              print(details.globalPosition);
              // 相对于这个盒子
              print(details.localPosition);
            },
            onTapUp: (details) {
              print("手指抬起");
            },
            onTapCancel: () {
              print("手势取消");
            },
            onTap: () {
              print("手势点击");
            },
            onDoubleTap: () {
              print("手指双击");
            },
            onLongPress: () {
              print("长按手势");
            },
            child: Container(
              width: 200,
                height: 200,
              color: Colors.pink,
              child: Text('Hello World'),
            ),
          ),
        ),
      ),
    );
  }
}
