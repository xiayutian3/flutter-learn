import 'package:flutter/material.dart';

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

class _HYHomeState extends State<HYHome> with SingleTickerProviderStateMixin {
//  创建AnimationController
  late AnimationController _controller;
  late Animation<double> _animation;
  late Animation<double> _sizeanimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // 1.初始化AnimationController
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
//      加了CurvedAnimation 后不能设置
      // lowerBound: 50,
      // upperBound: 150
    );

    // 2.设置动画速率
    _animation =
        CurvedAnimation(parent: _controller, curve: Curves.bounceInOut);
    // 3.tween 设置范围
    _sizeanimation = Tween<double>(begin: 50, end: 150).animate(_animation);

    // 监听变化 触发更新setState
    // _controller.addListener(() {
    //   setState(() {});
    // });

    //监听动画状态
    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _controller.reverse();
      } else if (status == AnimationStatus.dismissed) {
        _controller.forward();
      }
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    //动画去除
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // 1.Animation: 抽象类
    // 监听动画值的改变
    // 监听动画状态的改变
    // value
    // status
    // 2.AnimationController继承自Animation
    // vsync: 同步信号(this -> with SingleTickerProviderStateMixin)
    // forward(): 向前执行动画
    // reverse(): 反转执行动画
    // 3.CurvedAnimation:
    // 作用：设置动画执行的速率(速度曲线)
    // 4.Tween: 设置动画执行的value范围
    // begin: 开始值
    // end: 结束值

    // 例子
    // final controller = AnimationController(vsync: this);
    // final animation = CurvedAnimation(parent: controller, curve: Curves.eLasticInOut);
    // final valueAnimation = Tween(begin: 100, end: 200).animate(animation);

    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('首页'),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Container(
          // AnimatedBuilder 用的比较多
          child: AnimatedBuilder(
            animation: _controller,
            builder: (ctx,child){
              return  Icon(
                Icons.favorite,
                color: Colors.red,
                size: _sizeanimation.value,
              );
            },

          )

        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.ac_unit),
        onPressed: () {
          //动画开始执行
          // _controller.forward();
          if (_controller.isAnimating) {
            _controller.stop();
          } else if (_controller.status == AnimationStatus.forward) {
            _controller.forward();
          } else if (_controller.status == AnimationStatus.reverse) {
            _controller.reverse();
          } else {
            _controller.forward();
          }
        },
      ),
    );
  }
}


