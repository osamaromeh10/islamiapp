import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/config/Theming/my_Theme_Data.dart';
import 'package:islami_app/data/models/sura_model.dart';
import 'package:provider/provider.dart';

import '../../config/Theming/my_Theme_Data.dart';
import '../../myprovider/my_provider.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String suraDetails = "suraDetails";




  @override
  State<SuraDetailsScreen> createState() => _SruaDetailsScreenState();
}

class _SruaDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var pro =Provider.of<MyProvider>(context);
    var args = ModalRoute.of(context)!.settings.arguments as SuraModel;
    if (verses.isEmpty) {
      loadfile(args.index);
    }

    return Container(
      decoration:  BoxDecoration(
          image: DecorationImage(
        image: AssetImage( pro.modeApp==ThemeMode.light? "assets/images/background.png":"assets/images/backgroundDark.png",),
        fit: BoxFit.cover,
      )),
      child: Scaffold(
        appBar: AppBar(

            title: Text(args.name,
                style: pro.modeApp==ThemeMode.light?Theme.of(context).textTheme.bodyMedium:Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Colors.white
                ))),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Card(
            color: pro.modeApp==ThemeMode.light?MyThemeData.whiteColor:MyThemeData.PrimaryColorDark,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18),
                side: BorderSide(color: MyThemeData.PrimaryColor)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.separated(
                separatorBuilder: (context, index) => Divider(
                    indent: 20, endIndent: 20, color: MyThemeData.PrimaryColor),
                itemBuilder: (context, index) {
                  return Center(
                      child: Text(
                    verses[index],
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall,
                    textAlign: TextAlign.center,
                  ));
                },
                itemCount: verses.length,
              ),
            ),
          ),
        ),
      ),
    );
  }

  loadfile(int index) async {
    String file = await rootBundle.loadString("assets/files/${index + 1}.txt");
    List<String> lines = file.split("\n");
    print(lines);
    verses = lines;
    setState(() {});
  }
}
