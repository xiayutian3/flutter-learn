import 'package:flutter/material.dart';
import './init_items.dart';

class HYMainScreen extends StatefulWidget {
  static const String routeName = "/";

  const HYMainScreen({super.key});

  @override
  State<HYMainScreen> createState() => _HYMainScreenState();
}

class _HYMainScreenState extends State<HYMainScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        // 选中字体大小一致
        selectedFontSize: 14,
        unselectedFontSize: 14,
        currentIndex: _currentIndex,
        items: items, // 需要填充具体内容
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
