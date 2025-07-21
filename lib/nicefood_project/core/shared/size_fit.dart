// import 'dart:ui';
//
//
// class ScreenMetrics {
//   static late double physicalWidth;
//   static late double physicalHeight;
//   static late double dpr;
//   static late double screenWidth;
//   static late double screenHeight;
//   static late double statusHeight;
//
//   static void initialize() {
//
//     // 不推荐使用这种方式 需要等MediaQuery初始化完
//     // // 获取手机屏幕的逻辑分辨率
//     // final width = MediaQuery.of(context).size.width;
//     // final height = MediaQuery.of(context).size.height;
//     // print("屏幕宽高: $width * $height");
//
//
//     // 1.获取物理分辨率
//     physicalWidth = window.physicalSize.width;
//     physicalHeight = window.physicalSize.height;
//
//     // 2.获取设备像素比
//     dpr = window.devicePixelRatio;
//
//     // 3.计算逻辑分辨率
//     screenWidth = physicalWidth / dpr;
//     screenHeight = physicalHeight / dpr;
//
//     // 4.计算状态栏高度
//     statusHeight = window.padding.top / dpr;
//   }
// }


//现代化改造方案 (Flutter 3.7+)
//1. 使用 PlatformDispatcher 的推荐方案

import 'dart:ui' as ui;

class ScreenMetrics {
  static late double physicalWidth;
  static late double physicalHeight;
  static late double dpr;
  static late double screenWidth;
  static late double screenHeight;
  static late double statusHeight;

  //屏幕适配
  static late double rpx;
  static late double px;

  // 以750为标准
  static void initialize({double standardSize = 750}) {
    // 获取主窗口信息
    final dispatcher = ui.PlatformDispatcher.instance;
    final display = dispatcher.displays.first; // 主显示器

    // 1. 物理分辨率
    physicalWidth = display.size.width;
    physicalHeight = display.size.height;

    // 2. 设备像素比
    dpr = display.devicePixelRatio;

    // 3. 逻辑分辨率
    screenWidth = physicalWidth / dpr;
    screenHeight = physicalHeight / dpr;

    // 4. 状态栏高度（需通过FlutterView获取）
    final window = dispatcher.views.first;
    statusHeight = window.viewPadding.top / dpr;

    // 5.计算rpx大小
    rpx = screenWidth/ standardSize;
    px = screenWidth/ standardSize * 2;
  }

//  使用 px  或者rpx 根据设计稿来
  //返回适配尺寸
  static double setRpx(double size){
    return rpx * size;
  }

  static double setPx(double size){
    return px * size;
  }

}