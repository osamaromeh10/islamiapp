import 'package:flutter/material.dart';
import 'package:islami_app/data/models/hadith_Model.dart';
import 'package:provider/provider.dart';

import '../../config/Theming/my_Theme_Data.dart';

import '../../myprovider/my_provider.dart';

class HadethDetails extends StatelessWidget {
  static const String hadithDetails = "hadithDetails";

  const HadethDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<MyProvider>(context);
    var args = ModalRoute.of((context))!.settings.arguments as HadithModel;
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage(
            pro.modeApp == ThemeMode.light
                ? "assets/images/background.png"
                : "assets/images/backgroundDark.png",
          ),
          fit: BoxFit.cover,
        )),
        child: Scaffold(
          appBar: AppBar(
              title: Text(args.title,
                  style: pro.modeApp==ThemeMode.light?Theme.of(context).textTheme.bodyMedium:Theme.of(context).textTheme.bodyMedium?.copyWith(
    color: Colors.white),
              ),),
          body: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Card(
              color: pro.modeApp == ThemeMode.light
                  ? MyThemeData.whiteColor
                  : MyThemeData.PrimaryColorDark,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                  side: BorderSide(
                      color: pro.modeApp == ThemeMode.light
                          ? MyThemeData.PrimaryColor
                          : MyThemeData.PrimaryColorDark)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.separated(
                  separatorBuilder: (context, index) => Divider(
                      indent: 20,
                      endIndent: 20,
                      color: MyThemeData.PrimaryColor),
                  itemBuilder: (context, index) {
                    return Center(
                        child: Text(
                      args.content[index],
                      style: pro.modeApp == ThemeMode.light
                          ? Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(color: Colors.black)
                          : Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(color: MyThemeData.YellowColor),
                      textAlign: TextAlign.center,
                    ));
                  },
                  itemCount: args.content.length,
                ),
              ),
            ),
          ),
        ));
  }
}
