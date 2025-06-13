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
        home: HyBody());
  }
}
class HyBody extends StatefulWidget{
  @override
  State createState(){
    return HyHomepage();
  }
}
class HyHomepage extends State<HyBody> {
  // 滚动监听
  // 两种方式实现
  //   1.controller
//      1。可以设置默认值 offset
//      2.监听滚动，也可以监听滚动位置
  //   2.notificationlistner
      // 1.开始滚动和滚动结束

  //初始化位置 100
  ScrollController controller = ScrollController(
      initialScrollOffset: 100);

  bool isshow = false;


  //初始化监听
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.addListener(() {
      // print('监听滚动到：${controller.offset}');

      setState(() {
        isshow = controller.offset >= 1000;
      });
    });

  }

  //销毁生命周期
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    //销毁controler
    controller.dispose();
  }


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
      body: NotificationListener(
        onNotification: (ScrollNotification notification){
          if(notification is ScrollStartNotification){
            print('开始滚动');
          }else if(notification is ScrollUpdateNotification){
            print('滚动中。。。。总距离${notification.metrics.maxScrollExtent} 当前位置${notification.metrics.pixels}');
          }else if(notification is ScrollEndNotification){
            print('滚动结束');
          }
          // 不冒泡
          return true;
        },
        child:  ListView.builder(
          controller: controller,
          itemBuilder: (BuildContext ctx, int index) {
            return ListTile(
              leading: Icon(Icons.ac_unit),
              trailing: Icon(Icons.abc),
              title: Text('联系人${index + 1}'),
              subtitle: Text('联系的电话号码154625366552'),
            );
          },
          itemCount: 100, //数据总数

        ),
      ),

    // 悬浮按钮
    floatingActionButton: isshow? FloatingActionButton(
      child: Text('👆'),
      backgroundColor: Colors.red,
      onPressed: () {
        controller.animateTo(0,duration:Duration(seconds: 1),curve:Curves.bounceIn);
        print('hellop');
      }
    ): null,
    // floatingActionButtonLocation:
    //     FloatingActionButtonLocation.centerDocked
    );
  }
}

