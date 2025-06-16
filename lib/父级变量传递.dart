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
      body:HyBody('hello')
    );
  }
}

//状态组件
class HyBody extends StatefulWidget{
  final String message;

  //同名构造函数
  HyBody(this.message);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HyBody();
  }
}
class _HyBody extends State<HyBody>{
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  // 点击事件处理
                  setState((){
                    // _count++;
                    this._count++;
                  });

                },
                child: Text('+'),
              ),
              ElevatedButton(
                onPressed: () {
                  // 点击事件处理
                  setState((){
                    // _count--;
                    this._count--;
                  });

                },
                child: Text('-'),
              ),
            ],
          ),
          Text('当前计数$_count'),
          //就收父级传递的变量
          Text('父级传递的变量${widget.message}')
        ],
      ),
    );
  }
}






