import 'package:flutter/material.dart';


class HYModalPage extends StatefulWidget {
  const HYModalPage({super.key});

  @override
  State<HYModalPage> createState() => _HYModalPageState();
}

class _HYModalPageState extends State<HYModalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: const Center(
          child: Text('modal page'),
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
