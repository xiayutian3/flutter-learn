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
        // appBar: AppBar(
        //   title: const Center(
        //     child: Text('第一个flutter'),
        //   ),
        //   backgroundColor: Colors.blueAccent,
        // ),
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
    // CustomScrollView 多个sliver
    return CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
              flexibleSpace: FlexibleSpaceBar(
                title: Text('好好的肌肤的思考'),
                background: Image.asset('assets/images/13.jpg',fit: BoxFit.cover,),
              ),
              // backgroundColor: Colors.red
            pinned: true,//头部固定不能滚动
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate(
                      (BuildContext ctx, int index){
                            return ListTile(
                              leading: Icon(Icons.ac_unit),
                              trailing: Icon(Icons.abc),
                              title: Text('联系人${index + 1}'),
                              subtitle: Text('联系的电话号码154625366552'),
                            );
                      },
                      childCount:20
            )
          ),
          SliverGrid(
            // SliverChildBuilderDelegate 性能更好一点，显示区域才创建
            delegate: SliverChildBuilderDelegate(
                    (BuildContext ctx, int index){
                  return Container(
                    // Random().nextInt(256) 0-256 随机数
                    color: Color.fromARGB(255, Random().nextInt(256),
                        Random().nextInt(256), Random().nextInt(256)),
                  );
                },
                childCount:10
            ),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                childAspectRatio: 2
            ),

          )
        ],
    );





      // CustomScrollView  SliverGrid 的基础使用
    // // 因为我们需要把很多的Sliver放在一个CustomScrollView中，所以CustomScrollView有一个slivers属性，
    //
    // return CustomScrollView(
    //   slivers: [
    //   // SliverPadding 可以上面的padding滚动
    //     SliverPadding(
    //         padding: EdgeInsets.all(8),
    //         sliver:  SliverGrid(
    //           // SliverChildBuilderDelegate 性能更好一点，显示区域才创建
    //           delegate: SliverChildBuilderDelegate(
    //                   (BuildContext ctx, int index){
    //                 return Container(
    //                   // Random().nextInt(256) 0-256 随机数
    //                   color: Color.fromARGB(255, Random().nextInt(256),
    //                       Random().nextInt(256), Random().nextInt(256)),
    //                 );
    //               },
    //               childCount:100
    //           ),
    //           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    //               crossAxisCount: 2,
    //               crossAxisSpacing: 8,
    //               mainAxisSpacing: 8,
    //               childAspectRatio: 1.5
    //           ),
    //
    //         )
    //     )
    //
    //   ],
    // );


  }
}
