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
  final img = 'https://cdn.pixabay.com/photo/2024/07/16/12/20/pipe-8899206_640.jpg';

  @override
  Widget build(BuildContext context) {
    // Image.network(imageurl) 简写方式
    return Image(
      //颜色混入
      color: Colors.red,
      //颜色混入模式
        colorBlendMode: BlendMode.colorDodge,
        image:NetworkImage(img),
        width: 200,
        height: 200,
        // fit: BoxFit.fill,
      // //高度一定。宽度自适应
      // fit: BoxFit.fitHeight,
      // 宽度一定，高度自适应
      // fit: BoxFit.fitWidth,
      fit: BoxFit.contain,
      //在y轴上重复
      repeat: ImageRepeat.repeatY,

      // 对齐方式
      // alignment: Alignment.bottomCenter,
      // 范围 -1 到 1
      alignment: Alignment(0,0),
    );

  }
}










