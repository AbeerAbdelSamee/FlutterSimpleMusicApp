import 'package:ecommerce/core/native_services/navigation_service/navigation_service.dart';
import 'package:ecommerce/core/responsive_screen/widgets/base_widget.dart';
import 'package:ecommerce/core/styles/global_colors.dart';
import 'package:ecommerce/features/history/presentation/pages/history.dart';
import 'package:ecommerce/features/home/presentation/style/home_style.dart';
import 'package:ecommerce/features/home/presentation/widgets/thumbnail/thumbnailCard.dart';
import 'package:flutter/material.dart';

import '../../../../core/responsive_screen/widgets/base_widget.dart';
import '../../../../core/styles/global_colors.dart';

class HomeWidget extends StatefulWidget {
  static const String routeName = 'HomeWidget';
  HomeState createState() => HomeState();
}

class HomeState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return BaseWidget(
      builder: (context, sizingInformation) {
        return Scaffold(
            body: SafeArea(
          child: ThumbnailWidget(),
        ));
      },
    );
  }

  Widget HeaderWidget() {
    return Container(
        padding: EdgeInsets.only(
            top: BaseWidget.fromHeight(5),
            right: BaseWidget.fromWidth(4),
            left: BaseWidget.fromWidth(4)),
        // width: BaseWidget.fromWidth(100),
        // height: BaseWidget.fromHeight(100),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Container(
                decoration: BoxDecoration(
                  color: globalColors['lightOrange'],
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: IconButton(
                  color: Colors.white,
                  icon: const Icon(Icons.arrow_back_ios),
                  onPressed: () {
                    gNavigationService.pushNamed(HistoryWidget.routeName);
                  },
                ),
              ),
            ),
            Flexible(
              child: Text(
                "Result \n  mero bero",
                textAlign: TextAlign.center,
                style: HomeStyles.resultStyle,
              ),
            ),
            Flexible(
              child: Container(
                decoration: BoxDecoration(
                  color: globalColors['lightOrange'],
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: IconButton(
                  color: Colors.white,
                  icon: const Icon(Icons.dns_rounded),
                  onPressed: () {
                    gNavigationService.pushNamed(HistoryWidget.routeName);
                  },
                ),
              ),
            ),

            // Text("abeer 1"),
            // Text("abeer 2"),
            // Text("abeer 3"),
          ],
        ));
  }

  Widget ThumbnailWidget() {
    var i = 0;
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (buildContext, index) {
        i++;
        return i == 1
            ? HeaderWidget()
            : InkWell(
                onTap: () {
                  gNavigationService.pushNamed(HistoryWidget.routeName);
                },
                child: Container(
                  padding: EdgeInsets.fromLTRB(4, 8, 4, 8),
                  child: ThumbnailCard(
                    thumbnailHeroTag: '$index.jpg',
                    thumbnail: Image.asset('assets/bg.jpg'),
                    thumbnailWidth: 80,
                    title: 'Avengers: Endgome',
                    subTitle: 'Actions , Adventure , Drame',
                  ),
                ),
              );
      },
    );
  }
}
