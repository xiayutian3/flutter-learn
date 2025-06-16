import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import './service/http_request.dart';

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
  void initState() {
    // TODO: implement initState
    super.initState();

    // 发送网络请求
    // getHttp();



    //封装的请求
    HttpRequest.request('/get',params: {'name':'hui'}).then((value){
      print(value);
    }).catchError((err){print(err);});

  }

  final dio = Dio();
  void getHttp() async {
    final response = await dio.get('https://dart.dev');
    print(response);
  }


  @override
  Widget build(BuildContext context) {
    return Text('hello');
  }
}
