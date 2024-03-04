import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import 'package:islami_app/tabs/radio_Screen/radio_item.dart';
import 'package:provider/provider.dart';
import '../../data/api_manager.dart';
import '../../data/models/RadiosModel.dart';
import '../../myprovider/my_provider.dart';

class RadioTab extends StatefulWidget {
  RadioTab({super.key});

  @override
  State<RadioTab> createState() => _RadioTabState();
}

class _RadioTabState extends State<RadioTab> {
  late AudioPlayer audioPlayer;
  void initState()
  {
    super.initState();
  audioPlayer =AudioPlayer();
  }
  void dispose()
  {
    super.dispose();
    audioPlayer.dispose();
  }
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    var pro = Provider.of<MyProvider>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset("assets/images/radio_image.png"),
        FutureBuilder<List<Radios>?>(
            future: ApiManager.getRadios(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else if (snapshot.hasError) {
                return Center(
                  child: Text(
                    snapshot.error.toString(),
                  ),
                );
              } else {
                return SizedBox(
                  height: height * 0.2,
                  child: ListView.builder(
                    physics: PageScrollPhysics(),
                    itemExtent: width,
                    scrollDirection: Axis.horizontal,
                    itemCount: snapshot.data?.length ?? 0,
                    itemBuilder: (context, index) =>
                        RadioItem(radio: snapshot.data![index],audioPlayer: audioPlayer),
                  ),
                );
              }

              /* Text(AppLocalizations.of(context)!.holyQuranRadio,style: TextStyle(
            color:pro.modeApp==ThemeMode.light?MyThemeData.blackColor:MyThemeData.whiteColor,
          fontWeight: FontWeight.w600,fontSize: 25.0
        )),
        SizedBox(height: 20,),

       Row(
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         children: [
           Icon(Icons.arrow_back,color: pro.modeApp==ThemeMode.light?MyThemeData.PrimaryColor:MyThemeData.YellowColor),
           Icon(Icons.play_arrow,color:  pro.modeApp==ThemeMode.light?MyThemeData.PrimaryColor:MyThemeData.YellowColor),
           Icon(
             Icons.arrow_forward,color:  pro.modeApp==ThemeMode.light?MyThemeData.PrimaryColor:MyThemeData.YellowColor),

         ],
       ),*/
            }),
      ],
    );
  }
}
