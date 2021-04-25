import 'package:ecommerce/core/responsive_screen/widgets/base_widget.dart';
import 'package:ecommerce/core/styles/global_colors.dart';
import 'package:flutter/material.dart';

class VioletHeader extends StatelessWidget {
  final String title;
  final dynamic width;
  final dynamic height;
  final dynamic radius;
  VioletHeader({this.title, this.width, this.height, this.radius});
  @override
  Widget build(BuildContext context) {
    // return
    // BaseWidget(
    //   builder: (context, sizingInformation) {
    return Container(
      width: this.width,
      height: this.height,
      decoration: BoxDecoration(
          borderRadius:
              BorderRadius.only(bottomRight: Radius.circular(this.radius)),
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                globalColors['darkViolet2'],
                globalColors['darkViolet1'],
              ])),
      child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            this.title,
            // textAlign: TextAlign.start,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 28,
            ),
          )),
    );
    //   },
    // );
  }
}
