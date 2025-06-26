import 'package:flutter/material.dart';
import '../home/home.dart';
import '../subject/subject.dart';

class HYMainPage extends StatefulWidget {
  const HYMainPage({super.key});

  @override
  State<HYMainPage> createState() => _HYMainPageState();
}

class _HYMainPageState extends State<HYMainPage> {
  //页面索引
  int _currentIndex = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
//        页面
        children: pages
      ),
      //底部导航
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red, // 选中项（包括图标和标签）颜色
        unselectedItemColor: Colors.grey, // 未选中项颜色
        selectedFontSize:14,
        unselectedFontSize:14,
        currentIndex: _currentIndex,
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
        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        },
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

      //如果icon、activeIcon用的是图片，会有闪的现象，添加image 一个属性 gaplessPlayback: true 无间隙加载
  );
}

//创建页面
List<Widget> pages = [
  HYHomePage(),
  HYSubject(),
  HYSubject(),
  HYSubject(),
  HYSubject(),

];

