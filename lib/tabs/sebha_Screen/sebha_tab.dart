import 'package:flutter/material.dart';
import 'package:islami_app/config/Theming/my_Theme_Data.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/config/Theming/my_Theme_Data.dart';
import 'package:provider/provider.dart';

import '../../myprovider/my_provider.dart';

class SebhaTab extends StatefulWidget {
  const SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {


  List<String> tasbeh = [
    'سبحان الله',
    'الحمد لله',
    'لا اله الا الله',
    'الله اكبر',
  ];
  int index = 0;
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    var pro =Provider.of<MyProvider>(context);
    return Center(
      child: Column(
        children: [
          Image.asset(
              pro.modeApp==ThemeMode.light?"assets/images/head_sebha.png":"assets/images/headSebhaDark.png",
             ),
          const SizedBox(height: 30.0),
          Text(AppLocalizations.of(context)!.tasbeehcount, style:  pro.modeApp==ThemeMode.light?Theme.of(context).textTheme.bodySmall!:
          Theme.of(context).textTheme.bodySmall?.copyWith(color: MyThemeData.whiteColor)
          ),
          const SizedBox(height: 20.0),
          Container(
              height: 70,
              width: 55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color:  pro.modeApp==ThemeMode.light?MyThemeData.PrimaryColor:MyThemeData.PrimaryColorDark,
              ),
              child: Center(
                  child: Text(
                "$counter",style: TextStyle(
                    color:  pro.modeApp==ThemeMode.light?MyThemeData.blackColor:MyThemeData.whiteColor
                  ),
              ))),
          const SizedBox(height: 30.0),
          Container(
            height: 50,
            width: 160,
         decoration: BoxDecoration(
            color: pro.modeApp==ThemeMode.light?MyThemeData.PrimaryColor:MyThemeData.PrimaryColorDark,
           borderRadius: BorderRadius.circular(20.0)
         ),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: pro.modeApp==ThemeMode.light?MyThemeData.PrimaryColor:MyThemeData.YellowColor,
                
              ),
              onPressed: () {
                {

                  onClicked();

                }
              },
              child: Center(
                  child: Text(
               '${tasbeh[index]}',
                style: pro.modeApp==ThemeMode.light?Theme.of(context).textTheme.bodySmall!:
                Theme.of(context).textTheme.bodySmall!.copyWith(color: MyThemeData.blackColor)
                    ,
              )),
            ),
          ),
        ],
      ),
    );
  }
  void onClicked() {
    counter++;
    if (counter == 33) {
      counter = 0;
      index++;
    }
    if (index == tasbeh.length) {
      index = 0;
    }

    setState(() {});
  }
}
