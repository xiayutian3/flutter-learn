import '../shared/size_fit.dart';

extension IntFit on int {
  // double px() {
  //   // this 代表当前 int 值，但 Dart 允许在扩展方法中直接访问成员方法，因此 toDouble() 已经隐含了 this.toDouble() 的含义。
  //   return ScreenMetrics.setPx(toDouble()); //// 直接调用，不写 this
  // }
  //
  // double rpx() {
  //   return ScreenMetrics.setRpx(this.toDouble()); //Convert int to double
  // }


  //  扩展get
  double get px {
    return ScreenMetrics.setPx(toDouble()); //// 直接调用，不写 this
  }

  double get rpx {
    return ScreenMetrics.setRpx(this.toDouble()); //Convert int to double
  }

}