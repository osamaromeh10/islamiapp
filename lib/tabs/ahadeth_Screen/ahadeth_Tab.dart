import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/config/Theming/my_Theme_Data.dart';
import 'package:islami_app/data/models/hadith_Model.dart';
import 'package:islami_app/tabs/ahadeth_Screen/ahadeth_Details.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class AhadethTab extends StatelessWidget {
  List<HadithModel> allAhadeth = [];

  @override
  Widget build(BuildContext context) {
    loadHadeth();
    return SingleChildScrollView(
      child: Column(
        children: [
          Image.asset("assets/images/ahadeth_image.png"),
          Divider(
            color: MyThemeData.PrimaryColor,
            thickness: 2,
          ),
          Text(AppLocalizations.of(context)!.ahadeth, style: Theme.of(context).textTheme.bodyMedium!),
          Divider(
            color: MyThemeData.PrimaryColor,
            thickness: 2,
          ),
          ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (context, index) => Divider(
                    indent: 40,
                    endIndent: 40,
                    color: MyThemeData.PrimaryColor,
                    thickness: 1,
                  ),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.pushNamed(context,HadethDetails.hadithDetails,
                        arguments: allAhadeth[index]);
                  },
                  child: Text(allAhadeth[index].title,
                      style: Theme.of(context).textTheme.bodySmall,
                      textAlign: TextAlign.center),
                );
              },
              itemCount: allAhadeth.length),
        ],
      ),
    );
  }

  void loadHadeth() {
    rootBundle.loadString("assets/files/ahadeth.txt").then((ahadeth) {
      List<String> ahadithList = ahadeth.split("#");
      for (int i = 0; i < ahadithList.length; i++) {
        String HadethOne = ahadithList[i];
        List<String> HadethOneLines = HadethOne.trim().split("\n");
        String title = HadethOneLines[0];
        HadethOneLines.removeAt(0);
        List<String> Content = HadethOneLines;
        print(ahadithList);
        HadithModel hadithModel = HadithModel(title, Content);

        allAhadeth.add(hadithModel);
      }
    }).catchError((e) {
      print(e.toString());
    });
  }
}
