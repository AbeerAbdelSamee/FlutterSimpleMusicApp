import 'package:ecommerce/core/responsive_screen/enums/device_screen_type.dart';
import 'package:flutter/cupertino.dart';

DeviceScreenType getDeviceType(MediaQueryData mediaQuery) {
  // var orientation = mediaQuery.orientation;
  // // fixed device width change the orienttation
  // double deviceWidth = 0;
  // if (orientation == Orientation.landscape) {
  //   deviceWidth = mediaQuery.size.height;
  // } else {
  //   deviceWidth = mediaQuery.size.width;
  // }
  double deviceWidth = mediaQuery.size.shortestSide;

  if (deviceWidth > 950) {
    return DeviceScreenType.Desktop;
  }
  if (deviceWidth > 600) {
    return DeviceScreenType.Tablet;
  }
  return DeviceScreenType.Mobile;
}
