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
          backgroundColor: Colors.red,
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
  final img = 'https://cdn.pixabay.com/photo/2024/07/16/12/20/pipe-8899206_640.jpg';

  @override
  Widget build(BuildContext context) {
    // icon字体图标和图片图标
    // 1.字体图标矢量图（方法不失真）
    // 2.字体图标可以设置颜色
    // 3.很多图标时，占用空间小
    return Icon(
        Icons.onetwothree_outlined,
      size: 300,
      color: Colors.red,

    );


  }
}










