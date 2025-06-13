import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        //去掉调试模式
        debugShowCheckedModeBanner: false,
        home: HyHomepage());
  }
}

class HyHomepage extends StatelessWidget {
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
        body: HyHomeContent(),
        // 悬浮按钮
        floatingActionButton: FloatingActionButton(
          child: Text('FloatingActionButton'),
          backgroundColor: Colors.red,
          onPressed: () {},
        ),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.centerDocked);
  }
}

class HyHomeContent extends StatefulWidget {
  //初始化构造函数
  const HyHomeContent({super.key});

  @override
  State<HyHomeContent> createState() => _HyHomeContentState();
}

class _HyHomeContentState extends State<HyHomeContent> {
  final img =
      'https://cdn.pixabay.com/photo/2024/07/16/12/20/pipe-8899206_640.jpg';

  @override
  Widget build(BuildContext context) {
    // GridView.builder 显示的内容才创建，性能好

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0),
      child: GridView.builder(
        //一个的大小 排布
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: .8,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8),
        itemBuilder: (BuildContext ctx, int index){
          return Container(
            // Random().nextInt(256) 0-256 随机数
            color: Color.fromARGB(255, Random().nextInt(256),
                Random().nextInt(256), Random().nextInt(256)),
          );
        },
      ),
    );



    // GridView SliverGridDelegateWithMaxCrossAxisExtent //一个的大小 排布 使用

    // return Padding(
    //   padding: EdgeInsets.symmetric(horizontal: 0),
    //   child: GridView(
    //     //一个的大小 排布
    //     gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
    //       maxCrossAxisExtent: 300,
    //         childAspectRatio: 1,
    //         crossAxisSpacing: 8,
    //         mainAxisSpacing: 8),
    //     children: List.generate(100, (index) {
    //       return Container(
    //         // Random().nextInt(256) 0-256 随机数
    //         color: Color.fromARGB(255, Random().nextInt(256),
    //             Random().nextInt(256), Random().nextInt(256)),
    //       );
    //     }),
    //   ),
    // );



    // GridView SliverGridDelegateWithFixedCrossAxisCount  //按数量 排布 使用

    // return Padding(
    //   padding: EdgeInsets.symmetric(horizontal: 8),
    //   child: GridView(
    //     //按数量 排布
    //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    //         crossAxisCount: 3,
    //         childAspectRatio: .8,
    //         crossAxisSpacing: 8,
    //         mainAxisSpacing: 8),
    //     children: List.generate(100, (index) {
    //       return Container(
    //           // Random().nextInt(256) 0-256 随机数
    //         color: Color.fromARGB(255, Random().nextInt(256),
    //             Random().nextInt(256), Random().nextInt(256)),
    //       );
    //     }),
    //   ),
    // );
  }
}
