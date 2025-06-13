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
    // ListView.separated带有分割线

    return ListView.separated(
        itemCount: 100, //数据总数
        itemBuilder: (BuildContext ctx, int index) {
          return Text(
            'heloo $index',
            style: TextStyle(fontSize: 20),
          );
        },
      separatorBuilder:  (BuildContext ctx, int index) {
        return Divider(
          color: Colors.red,
          height: 30,  //线所占区域的高度
          indent: 30, //前面缩进
          endIndent: 30,  //后面缩进
          thickness: 10, //线的高度
        );
      },
        );



    // ListView.builder 使用与大量数据，展示的部分创建，不显示的部分没有创建,性能比较好
    // return ListView.builder(
    //     itemCount: 100, //数据总数
    //     itemExtent: 60, //每个的高度
    //     itemBuilder: (BuildContext ctx, int index) {
    //       return Text(
    //         'heloo $index',
    //         style: TextStyle(fontSize: 20),
    //       );
    //     });




    //listview（）一次性创建出来 所有的数据

    // return ListView(
    //   // scrollDirection: Axis.horizontal, 设置方向
    //   // reverse: true, //倒叙
    //   // itemExtent: 100, //每个item的宽或者高（不写默认内容高度）
    //   children: List.generate(100, (index) {
    //     return ListTile(
    //       leading: Icon(Icons.ac_unit),
    //       trailing: Icon(Icons.abc),
    //       title: Text('联系人${index + 1}'),
    //       subtitle: Text('联系的电话号码154625366552'),
    //     );
    //   }),
    // );
  }
}
