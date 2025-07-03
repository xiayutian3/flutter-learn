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
              onTapDown: (detail){
                print('w外面');
              },
              child: Container(
                width: 200,
                height: 200,
                color: Colors.pink,
                alignment: Alignment.center,
                child: GestureDetector(
                  // 阻止冒泡行为
                  behavior: HitTestBehavior.opaque,
                  onTapDown: (detail){
                    print('里面');
                  },
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.orange,
                  ),
                ),
              ),
            ),
        ),
      ),
    );
  }
}
