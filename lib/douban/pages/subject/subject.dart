import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HYSubject extends StatelessWidget {
  const HYSubject({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('书影音',style:TextStyle(color: Colors.white)),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(child: Text('书影音'),),
    );
  }
}
