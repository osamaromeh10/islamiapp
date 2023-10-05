import 'package:flutter/material.dart';
import 'package:islami_app/my_Theme_Data.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});
  @override
  Widget build(BuildContext context) {
    return
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("assets/images/radio_image.png"),

        Text(AppLocalizations.of(context)!.holyQuranRadio,style: Theme.of(context).textTheme.bodySmall,),
        SizedBox(height: 20,),

        Image.asset("assets/images/Group 5.png",color: MyThemeData.YellowColor,height: 30,width: 160),
      ],
    );
  }
}
