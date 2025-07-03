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
          child: Listener(
            onPointerDown: (event){
              print("指针按下：${event}");
              // 相对与整个屏幕
              print(event.position);
              // 相对与这个盒子区域
              print(event.localPosition);
            },
            onPointerMove: (event){
              print("指针${event}");
            },
            onPointerUp: (event){
              print("指针${event}");
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
