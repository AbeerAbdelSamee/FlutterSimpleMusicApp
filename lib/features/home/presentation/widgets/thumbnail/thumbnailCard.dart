import 'package:ecommerce/features/home/presentation/style/home_style.dart';
import 'package:flutter/material.dart';

import '../../../../../core/styles/global_colors.dart';

class ThumbnailCard extends StatelessWidget {
  final String thumbnailHeroTag;
  final double thumbnailWidth;
  final Widget thumbnail;
  final Widget content;
  final String title;
  final String subTitle;

  ThumbnailCard(
      {this.thumbnailHeroTag,
      this.thumbnailWidth,
      this.thumbnail,
      this.title,
      this.subTitle,
      this.content});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      clipBehavior: Clip.antiAlias,
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Hero(
              tag: thumbnailHeroTag,
              child: SizedBox(
                width: 80,
                child: ClipRect(
                  child: Container(
                      child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: thumbnail,
                  )),
                ),
              ),
            ),
            Expanded(
              child: Container(
                  padding: EdgeInsets.only(left: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(
                          title,
                          style: HomeStyles.cardTitle,
                        ),
                      ),
                      Expanded(
                          child:
                              Text(subTitle, style: HomeStyles.cardSubTitle)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: globalColors['lightGrey'],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                            ),
                            height: 30,
                            width: 50,
                            alignment: Alignment.center,

                            // padding: EdgeInsets.only(left: 10, top: 5),
                            child: Text('2019',
                                textDirection: TextDirection.ltr,
                                textAlign: TextAlign.left),
                          ),
                          SizedBox(width: 25),
                          Container(
                            decoration: BoxDecoration(
                              color: globalColors['lightGrey'],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                            ),
                            height: 30,
                            width: 50,
                            alignment: Alignment.center,
                            child: Text('+13',
                                textDirection: TextDirection.ltr,
                                textAlign: TextAlign.left),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Container(
                                decoration: BoxDecoration(
                                  color: globalColors['lightGrey'],
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                ),
                                height: 30,
                                width: 50,
                                alignment: Alignment.center,

                                // padding: EdgeInsets.only(left: 10, top: 5),
                                child: Expanded(
                                  child: Row(
                                    children: [
                                      SizedBox(width: 5),
                                      Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                        size: 20.0,
                                      ),
                                      Text('  8.4',
                                          textDirection: TextDirection.ltr,
                                          textAlign: TextAlign.left)
                                    ],
                                  ),
                                )),
                          ),
                          SizedBox(width: 25),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: globalColors['lightGrey'],
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                              ),
                              height: 30,
                              width: 2,
                              alignment: Alignment.center,
                              child: Row(
                                children: [
                                  SizedBox(width: 5),
                                  Icon(
                                    Icons.access_time,
                                    color: Colors.grey,
                                    size: 20.0,
                                  ),
                                  Text('3hr 0min',
                                      textDirection: TextDirection.ltr,
                                      textAlign: TextAlign.left)
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 60),
                        ],
                      ),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
