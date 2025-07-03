import 'package:flutter/material.dart';
import 'package:event_bus/event_bus.dart';
//事件总线
EventBus eventBus = EventBus();

class UserInfo{
   String nickname;
   int level;
  UserInfo(this.nickname,this.level);

}

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body:Column(
          children: [
            HYButton(),
            HYText()
          ],
        ),
      ),
    );
  }
}
class HYButton extends StatelessWidget {
  const HYButton({super.key});

  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
      child: Text('ElevatedButton'),
      style:ElevatedButton.styleFrom(
          foregroundColor:Colors.red
      ),
      onPressed: () {
        // 2.发出事件
        UserInfo _userInfo = UserInfo('hi',12);
        eventBus.fire(_userInfo);
      },
    );
  }
}

class HYText extends StatefulWidget {
  const HYText({super.key});

  @override
  State<HYText> createState() => _HYTextState();
}

class _HYTextState extends State<HYText> {

  String _message = "1234564";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    // 3.监听事件类型
    eventBus.on<UserInfo>().listen((data) {
      print(data.level);
      print(data.nickname);
      setState(() {
        _message = "${data.nickname}--${data.level}";
      });

    });
  }

  @override
  Widget build(BuildContext context) {
    return Text('${_message}');
  }
}


