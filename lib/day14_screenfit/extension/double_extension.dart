import '../shared/size_fit.dart';

extension DoubleFit on double {
  // double px() {
  //   return ScreenMetrics.setPx(this);
  // }
  //
  // double rpx() {
  //   return ScreenMetrics.setRpx(this);
  // }

//  扩展get
  double get px {
    return ScreenMetrics.setPx(this);
  }

  double get rpx {
    return ScreenMetrics.setRpx(this);
  }

}
