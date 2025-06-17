
import 'package:flutter/material.dart';

class HYHomeContent extends StatefulWidget {
  const HYHomeContent({super.key});

  @override
  State<HYHomeContent> createState() => _HYHomeContentState();
}

class _HYHomeContentState extends State<HYHomeContent> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('hello',style: TextStyle(color: Colors.red,fontSize: 30),),
    );
  }
}
