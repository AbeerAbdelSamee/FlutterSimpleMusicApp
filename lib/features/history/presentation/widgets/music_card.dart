import 'package:ecommerce/features/home/presentation/style/home_style.dart';
import 'package:flutter/material.dart';

class MusicCard extends StatelessWidget {
  final String thumbnailHeroTag;
  final double thumbnailWidth;
  final Widget thumbnail;
  final Widget content;

  MusicCard(
      {this.thumbnailHeroTag,
      this.thumbnailWidth,
      this.thumbnail,
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
                width: 90,
                child: ClipRect(
                  child: Container(
                      child: ClipRRect(
                    borderRadius: BorderRadius.circular(50.0),
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
                          'Avengers: Endgome',
                          style: HomeStyles.cardTitle,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            child: Text('Series'),
                            width: 50,
                          ),
                          SizedBox(width: 25),
                          SizedBox(
                            child: Text('5& E03'),
                            width: 50,
                          ),
                          SizedBox(width: 25),
                          SizedBox(
                            child: Text('52 min'),
                            width: 50,
                          ),
                          SizedBox(width: 25),
                        ],
                      ),
                      Container(
                          padding: EdgeInsets.only(top: 4),
                          child: LinearProgressIndicator(
                            valueColor:
                                AlwaysStoppedAnimation<Color>(Colors.orange),
                            backgroundColor: Colors.black,
                            value: 8,
                            semanticsLabel: 'Linear progress indicator',
                          )),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
