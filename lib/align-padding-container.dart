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

// 文本输入框
class _HyHomeContentState extends State<HyHomeContent> {
  final usernameController = TextEditingController();
  final pwsController = TextEditingController();
  
  final img =
      'https://cdn.pixabay.com/photo/2024/07/16/12/20/pipe-8899206_640.jpg';

  @override
  Widget build(BuildContext context) {

    // Align 使用
    // return Container(
    //   width: 200,
    //   height:200,
    //   color:Colors.red,
    //   child: Align(
    //     alignment: Alignment(1,1),
    //     child: Icon(Icons.abc_rounded,size: 50,),
    //   ),
    // );

    // padding的使用
    // return Column(
    //   children: [
    //     Padding(
    //         padding: EdgeInsets.only(bottom: 10),
    //       child: Text('你好',style: TextStyle(fontSize: 30,backgroundColor: Colors.red),),
    //     ),
    //     Text('你好',style: TextStyle(fontSize: 30,backgroundColor: Colors.red),),
    //     Text('你好',style: TextStyle(fontSize: 30,backgroundColor: Colors.red),),
    //   ],
    // );


    // container的使用
    return Container(
      // color: Colors.red, //color不能同时设置decoration
      width: 200,
      height: 200,
      alignment: Alignment(-1,-1),
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(10),
      child: Icon(Icons.ac_unit,size: 50,color: Colors.blue,),
      // transform: Matrix4.rotationZ(50),
      decoration: BoxDecoration(
        color: Colors.red,
        border: Border.all(
          width: 5,
          color: Colors.white70
        ),
        boxShadow: [
          BoxShadow(color: Colors.orange,offset: Offset(10,10),spreadRadius: 5,blurRadius: 10),
          BoxShadow(color: Colors.pink,offset: Offset(-10,10),spreadRadius: 5,blurRadius: 10),
        ]
      ),
    );

  }
}
