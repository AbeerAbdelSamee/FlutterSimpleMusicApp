import 'dart:io';

import 'package:ecommerce/core/native_services/navigation_service/navigation_service.dart';
import 'package:ecommerce/core/responsive_screen/widgets/base_widget.dart';
import 'package:ecommerce/features/history/presentation/widgets/music_card.dart';
import 'package:ecommerce/features/home/presentation/style/home_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../../core/responsive_screen/widgets/base_widget.dart';
import '../../../../core/styles/global_colors.dart';
import 'package:audioplayer/audioplayer.dart';
import 'package:path_provider/path_provider.dart';

class HistoryWidget extends StatefulWidget {
  static const String routeName = 'HistoryWidget';
  HistoryWidgestate createState() => HistoryWidgestate();
}

class HistoryWidgestate extends State<HistoryWidget> {
  @override
  Widget build(BuildContext context) {
    return BaseWidget(
      builder: (context, sizingInformation) {
        return Scaffold(
            body: SafeArea(
          child: MusicListWidget(),
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
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
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
                    gNavigationService.pop();
                  },
                ),
              ),
            ),
            SizedBox(width: BaseWidget.fromWidth(20)),
            Flexible(
                child: Container(
              padding: EdgeInsets.only(top: 10),
              alignment: Alignment.center,
              width: BaseWidget.fromWidth(50),
              child: Text(
                "Watch History",
                textAlign: TextAlign.center,
                style: HomeStyles.resultStyle,
              ),
            )),

            // Text("abeer 1"),
            // Text("abeer 2"),
            // Text("abeer 3"),
          ],
        ));
  }

  Future<ByteData> loadAsset() async {
    return await rootBundle.load('assets/music.mp3');
  }

  Widget MusicListWidget() {
    var i = 0;
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (buildContext, index) {
        i++;
        return i == 1
            ? HeaderWidget()
            : InkWell(
                onTap: () async {
                  AudioPlayer obj = new AudioPlayer();
                  //  await obj.play('',isLocal:false);
                  final result = await obj.play(
                      'https://file-examples-com.github.io/uploads/2017/11/file_example_MP3_700KB.mp3',
                      isLocal: true);

                  // final file = new File('music.mp3');
                  // await file
                  //     .writeAsBytes((await loadAsset()).buffer.asUint8List());
                  // final result = await obj.play(file.path, isLocal: true);
                },
                child: Container(
                  padding: EdgeInsets.fromLTRB(4, 8, 4, 8),
                  child: MusicCard(
                    thumbnailHeroTag: '$index.jpg',
                    thumbnail: Image.asset('assets/videoimage.png'),
                    thumbnailWidth: 80,
                    content: ListTile(
                      contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                      title: Text('bero mero'),
                      subtitle: Text('computer and information science '),
                    ),
                  ),
                ),
              );
      },
    );
  }
}
