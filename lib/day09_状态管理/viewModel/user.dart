import 'package:flutter/material.dart';

// 1.创建数据
// 2.在应用程序的顶层 ChangeNotifierProvider
// 3.在其他位置使用共享数据
//       Provider.of: 当Provider中的数据发生改变时，Provider.of所在的Widget整个build方法都会重新构建
//       Consumer(相对推荐): 当Provider中的数据发生改变时，执行重新执行Consumer的builder
//       Selector:
//         selector方法(作用: 对原有的数据进行转换)
//         shouldRebuild(作用: 要不要重新构建)

class HYUser extends ChangeNotifier {
  String _name = 'aaa';


  String get name => _name;

  set name(String value) {
    _name = value;
    //通知所有的监听者
    notifyListeners();
  }
}