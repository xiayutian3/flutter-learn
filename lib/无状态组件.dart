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
      body:HyBody()
    );
  }
}

//无状态组件
class HyBody extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: [
        HTextItem('hello1','hellop123','https://cdn.pixabay.com/photo/2024/07/16/12/20/pipe-8899206_640.jpg'),
        SizedBox(height: 8),
        HTextItem('hello1','hellop123','https://cdn.pixabay.com/photo/2024/07/16/12/20/pipe-8899206_640.jpg'),
        SizedBox(height: 8),
        HTextItem('hello1','hellop123','https://cdn.pixabay.com/photo/2024/07/16/12/20/pipe-8899206_640.jpg'),
      ],
    );
  }
}

@immutable
class HTextItem extends StatelessWidget{
  final String title;
  final String desc;
  final String imagesurl;

  final style1 = const TextStyle(fontSize: 25, color: Colors.lightBlue);
  final style2 = const TextStyle(fontSize: 20, color: Colors.cyan);


 const HTextItem(this.title,this.desc,this.imagesurl);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      //内边距
      padding: EdgeInsets.all(12),
      // 边框
      decoration: BoxDecoration(
        border: Border.all(
          width: 8,
          color: Colors.cyan,
        )
      ),

      child: Column(
        // 主轴对齐方式
        // mainAxisAlignment: MainAxisAlignment.start,
        //交叉轴对其方式
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,style:style1),
          //间距 8像素
          SizedBox(height: 8),
          Text(desc,style:style2),
          SizedBox(height: 8),
          Image.network(imagesurl),
        ],
      ),
    );
  }
}



