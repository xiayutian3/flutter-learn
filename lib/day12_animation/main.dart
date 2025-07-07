import 'package:flutter/material.dart';
import './pages/HYModalPage.dart';
import './pages/image_detail.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        //去掉调试模式
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        home: HYHome());
  }
}

class HYHome extends StatefulWidget {
  const HYHome({super.key});

  @override
  State<HYHome> createState() => _HYHomeState();
}

class _HYHomeState extends State<HYHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('首页'),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Container(
          child:  GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                childAspectRatio: 16/9
            ), // SliverGridDelegateWithFixedCrossAxisCount
            children: List.generate(20, (index) {
              final imageURL = "https://picsum.photos/500/500?random=$index";

              return GestureDetector(
                onTap: (){
                  // Navigator.of(context).push(MaterialPageRoute(
                  //     builder: (ctx){
                  //       return HYImageDetailPage(imageURL);
                  //     }
                  // ));

                  // 换种方式控制背景变化
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (ctx,anim1,anim2){
                        return FadeTransition(opacity: anim1,child: HYImageDetailPage(imageURL),);
                      }
                  )
                  );
                },
                child:  Hero(
                  tag: imageURL,
                    child: Image.network(imageURL, fit: BoxFit.cover,)
                ),
              );

            }), // List.generate
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.ac_unit),
        onPressed: (){
          // iOS -> Modal方式
          // Navigator.of(context).push(MaterialPageRoute(
          //     builder: (ctx) {
          //       return HYModalPage();
          //     },
          //     fullscreenDialog: true //向上弹出，默认是左右切换
          // ));

          // 第2种方式

          Navigator.of(context).push(PageRouteBuilder(
            // 过渡时间
            transitionDuration: Duration(seconds: 3),
              pageBuilder: (ctx, animation1, animation2) {
                return FadeTransition(
                  opacity: animation1,
                    child: HYModalPage()
                );
              }
          ));


        },
      ),
    );
  }
}
