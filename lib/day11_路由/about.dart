import 'package:flutter/material.dart';



class HYAboutPage extends StatelessWidget {
  static const String routeName = "/about";

  // final String message;
  // HYAboutPage(this.message);

  @override
  Widget build(BuildContext context) {
    //接收命名路由的参数
    final String _msg = ModalRoute.of(context)?.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        title: Text("关于页面"),
      ),
      body: Center(
        child: Column(
          children: [
            Text(_msg, style: TextStyle(fontSize: 30, color: Colors.red),),
            ElevatedButton(
              child: Text('回到首页'),
              style:ElevatedButton.styleFrom(
                  foregroundColor:Colors.red
              ),
              onPressed: () {
                _goback(context);
              },
            ),
          ],
        )
      ),
    );
  }

  void _goback (BuildContext context){
    // 返回首页
    Navigator.of(context).pop('放回的数据');
  }
}
