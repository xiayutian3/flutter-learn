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
        body:HyHomeContent()
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
    return Text(
      '123'
    );
  }
}










