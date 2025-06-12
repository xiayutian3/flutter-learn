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
    // Stack 继承 元素重叠
    // Positioned 定位元素

    // return Stack(
    //   children: [
    //     Container(
    //       color: Colors.purple,
    //       width: 300,
    //       height: 300,
    //     ),
    //     Positioned(
    //         left: 20,
    //         top: 20,
    //         child: Icon(Icons.favorite, size: 50, color: Colors.white)),
    //     Positioned(
    //       bottom: 20,
    //       right: 20,
    //       child: Text("你好啊，李银河",
    //           style: TextStyle(fontSize: 20, color: Colors.white)),
    //     )
    //   ],
    // );

    //stack的使用案例

    return Stack(
      children: [
        Image.asset(
          'assets/images/13.jpg',
          width: double.infinity, //宽度填充100%
          height: 300,
          fit: BoxFit.fill, //图片填充完
        ),
        Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              // width: double.infinity, //宽度填充100%
              padding: EdgeInsets.all(8),
              color: Color.fromARGB(150, 0, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'helopp jdjdj jdjdj ',
                    style: TextStyle(fontSize: 20, color: Colors.orange),
                  ),
                  Icon(Icons.ac_unit ,color: Colors.white,)
                ],
              ),
            ))
      ],
    );
  }
}
