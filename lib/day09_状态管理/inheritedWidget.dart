import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// 数据共享的一种方式
class HYCounterWidget extends InheritedWidget {
  // 1.数据共享
  final int counter;

  // 2.定义构造方法 - 需要将key传递给父类
  const HYCounterWidget({
    Key? key,
    required this.counter,
    required Widget child,
  }) : super(key: key, child: child);

  // 3.获取组件最近的当前的InheritedWidget
  static HYCounterWidget? of(BuildContext context) {
    // 沿着element树，去寻找最近的HYCounterElement，从HYCounterElement中取出widget对象
    return context.dependOnInheritedWidgetOfExactType<HYCounterWidget>();
  }

  // 4.决定要不要回调StatefulWidget中生命周期钩子didChangeDependencies方法
  @override
  bool updateShouldNotify(HYCounterWidget oldWidget) {
    return oldWidget.counter != counter;
  }
}


class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _counter = 100;


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: HYCounterWidget(
          counter: _counter,
          child: Center(
            child: Column(
              children: [
                HYContent01(),
                HYContent02(),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Text('FloatingActionButton'),
          backgroundColor: Colors.red,
          onPressed: () {
            setState(() {
              _counter++;
            });
          },
        ),
      ),
    );
  }
}

class HYContent01 extends StatefulWidget {
  const HYContent01({super.key});

  @override
  State<HYContent01> createState() => _HYContent01State();
}

class _HYContent01State extends State<HYContent01> {

  //生命周期 didChangeDependencies
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    print('我执行了');
  }

  @override
  Widget build(BuildContext context) {
    // 在子组件中获取值
    final currentCounter = HYCounterWidget.of(context)?.counter;

    return Text('01-${currentCounter}');

  }
}


class HYContent02 extends StatelessWidget {
  const HYContent02({super.key});


  @override
  Widget build(BuildContext context) {
    // 在子组件中获取值
    final currentCounter = HYCounterWidget.of(context)?.counter;
    return Text('02-${currentCounter}');
  }
}


