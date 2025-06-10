import 'package:flutter/material.dart';

void main() {
  runApp(
      Myapp()
  );
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return   MaterialApp(
      //去掉调试模式
        debugShowCheckedModeBanner: false,
        home: HyHomepage()
    );
  }
}

class HyHomepage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('第一个flutter'),
          ),
          backgroundColor: Colors.blueAccent,
        ),
        body:HyHomeContent(),
        // 悬浮按钮
        floatingActionButton: FloatingActionButton(
          child: Text('FloatingActionButton'),
          onPressed: () {},
        ),
        floatingActionButtonLocation:FloatingActionButtonLocation.centerDocked
    );
  }
}
class HyHomeContent extends StatefulWidget {
  //初始化构造函数
  const HyHomeContent({super.key});

  @override
  State<HyHomeContent> createState() => _HyHomeContentState();
}


// button
class _HyHomeContentState extends State<HyHomeContent> {

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          ElevatedButton(
            child: Text('ElevatedButton'),
            style:ElevatedButton.styleFrom(
              foregroundColor:Colors.red
            ),
            onPressed: () {},
          ),
          OutlinedButton(
            child: Text('OutlinedButton'),
            style:OutlinedButton.styleFrom(
              foregroundColor:Colors.amber
            ),
            onPressed: () {},
          ),
          TextButton(
            child: Text('TextButton'),
            style:TextButton.styleFrom(
                foregroundColor: Color(0xFF4A69BD)
            ),
            onPressed: () {},
          ),
          FloatingActionButton(
            child: Text('FloatingActionButton'),
            onPressed: () {},
          ),

          //自定义实现  图标 文字 背景 圆角
          TextButton(
            style:TextButton.styleFrom(
              //圆角
                shape:RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)
                ),
                backgroundColor: Colors.deepOrangeAccent
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.ac_unit_outlined,color: Colors.red),
                Text('data')
              ],
            ),
            onPressed: () {},
          )
        ]
    );
  }
}










