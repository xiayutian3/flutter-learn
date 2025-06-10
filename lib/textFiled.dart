import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        //去掉调试模式
        debugShowCheckedModeBanner: false,
        home: HyHomepage());
  }
}

class HyHomepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('第一个flutter'),
          ),
          backgroundColor: Colors.blueAccent,
        ),
        body: HyHomeContent(),
        // 悬浮按钮
        floatingActionButton: FloatingActionButton(
          child: Text('FloatingActionButton'),
          backgroundColor: Colors.red,
          onPressed: () {},
        ),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.centerDocked);
  }
}

class HyHomeContent extends StatefulWidget {
  //初始化构造函数
  const HyHomeContent({super.key});

  @override
  State<HyHomeContent> createState() => _HyHomeContentState();
}

// 文本输入框
class _HyHomeContentState extends State<HyHomeContent> {
  final usernameController = TextEditingController();
  final pwsController = TextEditingController();
  
  final img =
      'https://cdn.pixabay.com/photo/2024/07/16/12/20/pipe-8899206_640.jpg';

  @override
  Widget build(BuildContext context) {

    // 局部修改主题颜色，比如修改输入框边框颜色
    return Theme(
        data: Theme.of(context).copyWith(
          colorScheme: Theme.of(context).colorScheme.copyWith(
            primary: Colors.orange, // 主要颜色（包括标签、光标等）
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
                controller: usernameController,
                decoration: InputDecoration(
                    labelText: 'username',
                    icon: Icon(Icons.ac_unit),
                    hintText: '请输入用户名',
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.red[100]),
                onChanged: (value){
                  print(value);
                },
                onSubmitted: (val){
                  print(val);
                },
              ),

              SizedBox(height: 10,),
              TextField(
                controller: pwsController,
                decoration: InputDecoration(
                  labelText: 'password',
                  icon: Icon(Icons.lock),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10,),
              Container(
                // width: 300,
                width: double.infinity,
                height: 40,
                child:     ElevatedButton(
                    child:Text('登录',style: TextStyle(fontSize: 20, color: Colors.red),),
                    style:OutlinedButton.styleFrom(
                        backgroundColor: Colors.cyan,
                        foregroundColor:Colors.amber
                    ),
                    onPressed:(){
                      final username = usernameController.text;
                      final pws = pwsController.text;
                      print('账号密码 $username $pws');

                      // 清空输入
                      usernameController.text = '';
                      pwsController.text = '';
                    }
                ),
              )

            ],
          ),
        )
    );

  }
}
