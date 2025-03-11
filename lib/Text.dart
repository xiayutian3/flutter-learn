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


//普通文本使用 Text
// class _HyHomeContentState extends State<HyHomeContent> {
//
//   @override
//   Widget build(BuildContext context) {
//     return Text(
//       '123456 \n hjdk反对反对反对反对反对法',
//       textAlign: TextAlign.center,
//       maxLines: 2,
//       overflow: TextOverflow.ellipsis,
//       style: TextStyle(
//         fontSize: 20,
//         color: Colors.blue,
//         fontWeight: FontWeight.bold
//       ),
//     );
//   }
// }


//富文本使用 Text.rich
class _HyHomeContentState extends State<HyHomeContent> {

  @override
  Widget build(BuildContext context) {
    return Text.rich(
        TextSpan(
          // text: 'hellop',
          // style: TextStyle(color: Colors.blue,fontSize: 20)

            children: [
              TextSpan(text: 'hellop',style: TextStyle(color: Colors.blue,fontSize: 20)),
              WidgetSpan(child: Icon(Icons.ac_unit,color: Colors.red)),
              TextSpan(text: 'hellop',style: TextStyle(color: Colors.blue,fontSize: 20)),
              TextSpan(text: 'hellop',style: TextStyle(color: Colors.blue,fontSize: 20)),
            ]
        )
    );
  }
}











