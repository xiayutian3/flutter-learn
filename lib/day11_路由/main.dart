import './404.dart';
import 'package:flutter/material.dart';
import './HYdetail.dart';
import 'about.dart';
import './router/router.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      routes: HYRouter.routes,
      // home:AppPage(),
      // 默认启动的路由
      // initialRoute: '/',
      initialRoute: HYRouter.initialRoute,
      // 处理自定义路由，不在routes里面配置的，
      onGenerateRoute: HYRouter.onGenerateRoute,

      //匹配没有找的路由
      onUnknownRoute: HYRouter.onUnknownRoute,

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
            ElevatedButton(
              child: Text('跳转到详情222'),
              style:ElevatedButton.styleFrom(
                  foregroundColor:Colors.red
              ),
              onPressed: () {_jumptodetail2(context);},
            ),
            ElevatedButton(
              child: Text('跳转到setting'),
              style:ElevatedButton.styleFrom(
                  foregroundColor:Colors.red
              ),
              onPressed: () {_jumptosetting(context);},
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
    Future res =  Navigator.of(context).pushNamed(HYAboutPage.routeName,arguments: 'home page');
    //接受返回的数据
    res.then((value){
      print(value);
    });
  }

  //跳转匹配的自定义路由
  void _jumptodetail2(BuildContext context){
    Navigator.of(context).pushNamed(HYdetail.routeName,arguments: 'home page');
  }
  //跳转没有匹配的路由
  void _jumptosetting(BuildContext context){
    Navigator.of(context).pushNamed('/setting');
  }
}
