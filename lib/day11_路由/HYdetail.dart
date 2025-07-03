import 'package:flutter/material.dart';


class HYdetail extends StatelessWidget {
  static const String routeName = "/detail";

  String _message;
  HYdetail(this._message);


  @override
  Widget build(BuildContext context) {
    // 监听返回事件 第二种方式
    return WillPopScope(
      // 当返回为true时,可以自动返回(flutter帮助我们执行返回操作)
      // 当返回为false时，自行写返回代码
      onWillPop: () {
        _goback(context);
        return Future.value(false);
      },
      child: Scaffold(
          appBar: AppBar(
            title: Text('Material App Bar'),
            // 自定义返回按钮 监听返回事件 第一种方式
            // leading: IconButton(
            //   icon: Icon(Icons.access_alarm),
            //   onPressed: (){
            //     _goback(context);
            //   },
            // ),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('${_message}'),
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
            ),
          ),
      ),
    );
  }

  void _goback (BuildContext context){
    // 返回首页
    Navigator.of(context).pop('放回的数据');
  }
}
