import 'package:ecommerce/core/responsive_screen/models/sizing_information.dart';
import 'package:ecommerce/core/responsive_screen/utils/ui_screen_type_util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BaseWidget extends StatelessWidget {
  static double width;
  static double height;
  final Widget Function(
      BuildContext context, SizingInformation sizingInformation) builder;

  const BaseWidget({Key key, this.builder}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);

    // TODO: implement build
    return LayoutBuilder(
      builder: (context, boxConstraints) {
        width = boxConstraints.maxWidth;
        height = boxConstraints.maxHeight;
        var sizingInformation = SizingInformation(
            orientation: mediaQuery.orientation,
            deviceScreenType: getDeviceType(mediaQuery),
            screenSize: mediaQuery.size,
            localWidgetSize:
                Size(boxConstraints.maxWidth, boxConstraints.maxHeight));
        return builder(context, sizingInformation);
      },
    );
  }

  static fromWidth(double percent) {
    assert(percent != null && percent >= 0.0 && percent <= 100.0);
    return (percent / 100.0) * width;
  }

  static fromHeight(percent) {
    assert(percent != null && percent >= 0.0 && percent <= 100.0);
    return (percent / 100.0) * height;
  }

  static scaleText(double fontSize, {bool allowFontScalingSelf}) {
    return ScreenUtil()
        .setSp(fontSize, allowFontScalingSelf: allowFontScalingSelf);
  }
}
