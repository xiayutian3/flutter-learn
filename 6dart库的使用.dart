

//使用自己写的库
import './pkg/Calc.dart';
// 使用别人的
import 'package:http/http.dart' as http;

//dart自带的包
// import 'dart:math';

//延时加载
import 'dart:math' deferred as math;

void main() async {
    int res = add(3, 1);
    print(res);

    var m = new Calc(10,2);
    m.minus();


    // //测试 http
    // var url = Uri.https('example.com', 'whatsit/create');
    // var response = await http.post(url, body: {'name': 'doodle', 'color': 'blue'});
    // print('Response status: ${response.statusCode}');
    // print('Response body: ${response.body}');


    // var r = new Random();
    // //最大是10
    // print(r.nextInt(10));


    //告诉dart 开始加载包
    await math.loadLibrary();
    var r = new math.Random();
    //最大是10
    print(r.nextInt(10));

}