import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../config/Theming/my_Theme_Data.dart';
import '../../data/models/RadiosModel.dart';
import '../../myprovider/my_provider.dart';

class RadioItem extends StatelessWidget {
  final Radios radio;
  final AudioPlayer audioPlayer;

  RadioItem({
    super.key,
    required this.radio,
    required this.audioPlayer,
  });

  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<MyProvider>(context);
    return Column(children: [
      Text(radio.name ?? ""),
      SizedBox(height: 25),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              play();
            },
            child: Icon(
              Icons.play_arrow,
              color: pro.modeApp == ThemeMode.light
                  ? MyThemeData.PrimaryColor
                  : MyThemeData.YellowColor,
              size: 35,
            ),
          ),
          SizedBox(width: 10,),
          InkWell(
            onTap: () {
              stop();
            },
            child: Icon(
              Icons.pause,
              color: pro.modeApp == ThemeMode.light
                  ? MyThemeData.PrimaryColor
                  : MyThemeData.YellowColor,
              size: 35,
            ),

          ),
        ],
      )
    ]);
  }

  void play() async {
    await audioPlayer.play(UrlSource(radio.url ?? ""));
  }

  void stop() async {
    await audioPlayer.stop();
  }
}
