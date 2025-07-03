import 'package:flutter/material.dart';



class HYAboutPage extends StatelessWidget {
  static const String routeName = "/about";
  final String message;

  HYAboutPage(this.message);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("关于页面"),
      ),
      body: Center(
        child: Text(message, style: TextStyle(fontSize: 30, color: Colors.red),),
      ),
    );
  }
}
