import 'package:flutter/material.dart';
import './widgets/star_rating.dart';
import './widgets/dashed_line.dart';
import './pages/main/main.dart';


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
        title: 'Flutter',
        theme:ThemeData(
            primaryColor:Colors.blue,
            splashColor:Colors.transparent,
            highlightColor: Colors.transparent, //点击的水波纹效果，关闭

        ),
        home: HYMainPage(),

        // home: HyHomepage()


    );

  }
}

// class HyHomepage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Scaffold(
//         appBar: AppBar(
//           title: const Center(
//             child: Text('豆瓣app'),
//           ),
//           backgroundColor: Colors.blueAccent,
//         ),
//         body: HyHomeContent(),
//         // // 悬浮按钮
//         // floatingActionButton: FloatingActionButton(
//         //   child: Text('FloatingActionButton'),
//         //   backgroundColor: Colors.red,
//         //   onPressed: () {},
//         // ),
//         // floatingActionButtonLocation:FloatingActionButtonLocation.centerDocked
//     );
//   }
// }






