import 'package:flutter/material.dart';
import 'package:islami_app/config/Theming/my_Theme_Data.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/data/models/sura_model.dart';
import 'package:islami_app/myprovider/my_provider.dart';
import 'package:islami_app/tabs/quran_Screen/sura_Details.dart';
import 'package:provider/provider.dart';

class QuarnTab extends StatelessWidget {

  List<String> suraNames = [
    "الفاتحه",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود",
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون",
    "النّور",
    "الفرقان",
    "الشعراء",
    "النّمل",
    "القصص",
    "العنكبوت",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ",
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف",
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة",
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج",
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار",
    "المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح",
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس"
  ];

  QuarnTab({super.key});

  @override
  Widget build(BuildContext context) {
    var pro =Provider.of<MyProvider>(context);
    return Center(
      child: Column(
        children: [
          Image.asset(
              "assets/images/quran_image.png"),
          Divider(
            color: pro.modeApp==ThemeMode.light?MyThemeData.PrimaryColor:MyThemeData.YellowColor,
            thickness: 2,
          ),
          Text(AppLocalizations.of(context)!.suraNames,
              style: Theme.of(context).textTheme.bodyMedium!
          ),
          Divider(
            color: pro.modeApp==ThemeMode.light?MyThemeData.PrimaryColor:MyThemeData.YellowColor,
            thickness: 2,
          ),
          Expanded(
            child:
            ListView.separated(
              separatorBuilder: (context, index) => Divider(
                thickness: 1,
                color: MyThemeData.PrimaryColor,
                indent: 40,
                endIndent: 40,
              ),
              itemBuilder: (context, index) {
                return Center(
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context,SuraDetailsScreen.suraDetails,
                          arguments: SuraModel(suraNames[index], index));
                    },
                    child: Text(
                      suraNames[index],
                      style: Theme.of(context).textTheme.bodySmall!
                    ),
                  ),
                );
              },
              itemCount: suraNames.length,
            ),
          ),
        ],
      ),
    );
  }
}
