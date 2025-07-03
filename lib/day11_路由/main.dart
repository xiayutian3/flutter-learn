import 'package:flutter/material.dart';
import './HYdetail.dart';
import 'about.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      routes: {
        AppPage.routeName: (ctx)=> AppPage(),
        HYAboutPage.routeName: (ctx)=> HYAboutPage('jklj'),
      },
      // home:AppPage(),
      // 默认启动的路由
      // initialRoute: '/',
      initialRoute: AppPage.routeName,

    );
  }
}


class AppPage extends StatelessWidget {
  static const String routeName = "/";

  const AppPage({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
        child:  Column(
          children: [
            ElevatedButton(
              child: Text('跳转到详情'),
              style:ElevatedButton.styleFrom(
                  foregroundColor:Colors.red
              ),
              onPressed: () {_jumptodetail(context);},
            ),
            ElevatedButton(
              child: Text('跳转到about'),
              style:ElevatedButton.styleFrom(
                  foregroundColor:Colors.red
              ),
              onPressed: () {_jumptoabout(context);},
            ),
          ],
        )

      ),
    );
  }
  void _jumptodetail(BuildContext context){
    // 1.普通的跳转方式
    // 通过构造器直接传递参数
    Future res =  Navigator.of(context).push(MaterialPageRoute(
        builder: (ctx){
          return HYdetail('传递数据');
        }
    )
    );

    // 返回携带的数据
    res.then((value){
      print(value);
    });
  }

  void _jumptoabout(BuildContext context){
    // 2.通过路由器配置跳转
    Navigator.of(context).pushNamed(HYAboutPage.routeName);
  }
}
