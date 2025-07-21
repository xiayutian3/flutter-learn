import 'package:flutter/material.dart';

class HYFavor extends StatefulWidget {
  const HYFavor({super.key});

  @override
  State<HYFavor> createState() => _HYFavorState();
}

class _HYFavorState extends State<HYFavor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('我的收藏'),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Container(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}