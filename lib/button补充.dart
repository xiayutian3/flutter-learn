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
    return Column(
      children: [
        TextButton(
        style:TextButton.styleFrom(
          foregroundColor: Colors.red,
          backgroundColor: Colors.blue

        ),
        onPressed:(){},
        child: Text('hello'),

        ),

         TextButton(
            style:TextButton.styleFrom(
                foregroundColor: Colors.red,
                backgroundColor: Colors.blue,
                padding: EdgeInsets.all(20.0), // 设置按钮的内边距为10像素
            ),
            onPressed:(){},
            child: Text('hellp'),

          )


      ],
    );


  }
}










