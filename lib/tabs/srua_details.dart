import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/my_Theme_Data.dart';
import 'package:islami_app/tabs/sura_model.dart';

class SruaDetailsScreen extends StatefulWidget {
  static const String routeName = "SruaDetails";

  @override
  State<SruaDetailsScreen> createState() => _SruaDetailsScreenState();
}

class _SruaDetailsScreenState extends State<SruaDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments as SuraModel;
    if (verses.isEmpty) {
      loadfile(args.index);
    }

    return
      Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage("assets/background dark.png"),
        fit: BoxFit.cover,
      )
      ),

      child: Scaffold(
        appBar: AppBar(
            title: Text(
          args.Name,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: MyThemeData.BlackColor,
              ),
        )
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18),
                side: BorderSide(color: MyThemeData.PrimaryColorDark)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.separated(
                separatorBuilder: (context, index) => Divider(
                    indent: 20, endIndent: 20, color: MyThemeData.YellowColor),
                itemBuilder: (context, index) {
                  return Center(
                      child: Text(
                    verses[index],
                    style: Theme.of(context).textTheme.bodySmall,
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
    List<String>lines = file.split("\n");
    print(lines);
    verses = lines;
    setState(() {});
  }
}
