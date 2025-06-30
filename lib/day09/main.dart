import 'package:first_flutter_project/day09/viewModel/counter.dart';
import 'package:first_flutter_project/day09/viewModel/user.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
//    使用多个共享数据
    MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (ctx )=> HYCounter(),),
          ChangeNotifierProvider(create: (ctx )=> HYUser(),),
        ],
      child: MyApp(),
    )



    // 使用单个 provider传递数据的情况
    // // 2.在应用程序的顶层 ChangeNotifierProvider
    // ChangeNotifierProvider(
    //   create: (ctx)=> HYCounter(),
    //   child: MyApp(),
    // )
  );
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
            child: Column(
              children: [
                HYContent01(),
                HYContent02(),
                HYContent03()
              ],
            ),
          ),


        // Consumer的方式
        // floatingActionButton: Consumer<HYCounter>(
        //   builder: (ctx,countervm,child){
        //     return  FloatingActionButton(
        //       // 与外层child属性相对应，减少不必要的构建
        //       child: child,
        //       backgroundColor: Colors.red,
        //       onPressed: () {
        //         countervm.counter++;
        //       },
        //     );
        //   },
        //   child: Text('FloatingActionButton'),
        // ),


        // selector 的方式
        floatingActionButton: Selector<HYCounter,HYCounter>(
          //可以转换类型
          selector: (ctx,countervm)=>countervm,
          // 是否需要重新构建
          shouldRebuild: (pre,next)=>false,
          builder: (ctx,countervm,child){
            return  FloatingActionButton(
              // 与外层child属性相对应，减少不必要的构建
              child: child,
              backgroundColor: Colors.red,
              onPressed: () {
                countervm.counter++;
              },
            );
          },
          child: Text('FloatingActionButton'),
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
    // 3.在其他位置使用共享数据
    int currentCounter = Provider.of<HYCounter>(context).counter;

    return Text('01-${currentCounter}');

  }
}


class HYContent02 extends StatelessWidget {
  const HYContent02({super.key});


  @override
  Widget build(BuildContext context) {
// // 3.在其他位置使用共享数据
//     int currentCounter = Provider.of<HYCounter>(context).counter;
//     return Text('02-${currentCounter}');


  // 使用consmer的方式
    return Consumer<HYCounter>(builder:  (ctx,countervm,child) {
      return  Text('02-${countervm.counter}');
    });

  }
}



//测试多数据provider
class HYContent03 extends StatelessWidget {
  const HYContent03({super.key});

  @override
  Widget build(BuildContext context) {
    // Provider.of Consumer Selector Consumer2 Consumer3 ...
    // return Consumer<HYUser>(
    //     builder: (ctx,uservm,child){
    //       return Text('用户的名字：${uservm.name}');
    //     }
    // );

    // 同时使用多个viewmdel数据
    return Consumer2<HYUser,HYCounter>(
        builder: (ctx,uservm,contervm,child){
          return Text('用户的名字：${uservm.name}--${contervm.counter}');
        }
    );
  }
}


