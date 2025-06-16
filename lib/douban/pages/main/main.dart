import 'package:flutter/material.dart';

class HYMainPage extends StatefulWidget {
  const HYMainPage({super.key});

  @override
  State<HYMainPage> createState() => _HYMainPageState();
}

class _HYMainPageState extends State<HYMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: 2,
//        页面
        children: [

        ],
      ),
      //底部导航
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          // BottomNavigationBarItem(
          //     label:'首页',
          //     icon: Icon(Icons.ac_unit_rounded),
          //     activeIcon:Icon(Icons.ac_unit_rounded,color: Colors.red,),
          //     // icon: Image.asset('../') //可以使用图片 icon
          // ),
          HYBottomNavigationBarItem(
            label:'首页',
            icon: Icon(Icons.ac_unit_rounded),
            activeIcon:Icon(Icons.ac_unit_rounded,color: Colors.red,),
          ),
          HYBottomNavigationBarItem(
            label:'书影音',
            icon: Icon(Icons.ac_unit_rounded),
            activeIcon:Icon(Icons.ac_unit_rounded,color: Colors.red,),
          ),
          HYBottomNavigationBarItem(
            label:'小组',
            icon: Icon(Icons.ac_unit_rounded),
            activeIcon:Icon(Icons.ac_unit_rounded,color: Colors.red,),
          ),
          HYBottomNavigationBarItem(
            label:'市集',
            icon: Icon(Icons.ac_unit_rounded),
            activeIcon:Icon(Icons.ac_unit_rounded,color: Colors.red,),
          ),
          HYBottomNavigationBarItem(
            label:'我的',
            icon: Icon(Icons.ac_unit_rounded),
            activeIcon:Icon(Icons.ac_unit_rounded,color: Colors.red,),
          ),
        ],
      ),
    );
  }
}

//创建菜单子项
class HYBottomNavigationBarItem extends BottomNavigationBarItem{
  HYBottomNavigationBarItem({String? label,Widget? icon, Widget? activeIcon}):super(
      label:label,
      icon:icon ?? Icon(Icons.ac_unit_rounded),
      activeIcon:activeIcon??Icon(Icons.ac_unit_rounded,color: Colors.red,)
  );
}

