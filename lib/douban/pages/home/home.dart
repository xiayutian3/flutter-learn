
import 'package:flutter/material.dart';
import './home_content.dart';

class HYHomePage extends StatelessWidget {
  const HYHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('首页',style:TextStyle(color: Colors.white)),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: HYHomeContent(),
    );
  }
}
