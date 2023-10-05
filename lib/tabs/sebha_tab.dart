import 'package:flutter/material.dart';
import 'package:islami_app/my_Theme_Data.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
    return Center(
      child: Column(
        children: [
          Image.asset("assets/images/head_sebha.png",
              color: MyThemeData.PrimaryColor),
          const SizedBox(height: 30.0),
          Text(AppLocalizations.of(context)!.tasbeehcount, style: Theme.of(context).textTheme.bodySmall!),
          const SizedBox(height: 20.0),
          Container(
              height: 70,
              width: 55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: MyThemeData.PrimaryColor,
              ),
              child: Center(
                  child: Text(
                "$counter",
              ))),
          const SizedBox(height: 30.0),
          SizedBox(
            height: 50,
            width: 160,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: MyThemeData.PrimaryColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                ),
              ),
              onPressed: () {
                {

                  onClicked();

                }
              },
              child: Center(
                  child: Text(
               '${tasbeh[index]}',
                style: Theme.of(context).textTheme.bodySmall!,
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
