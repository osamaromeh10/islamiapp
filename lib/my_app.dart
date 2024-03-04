
import 'package:flutter/material.dart';
import 'package:islami_app/config/Theming/my_Theme_Data.dart';
import 'package:islami_app/tabs/ahadeth_Screen/ahadeth_Details.dart';
import 'package:islami_app/tabs/home_Layout/home.dart';
import 'package:islami_app/tabs/quran_Screen/sura_Details.dart';
import 'package:provider/provider.dart';
import 'myprovider/my_provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var pro =Provider.of<MyProvider>(context);
    return MaterialApp(

      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(pro.languageCode),
      debugShowCheckedModeBanner: false,

      initialRoute:HomeScreen.homeScreen,
      routes: {
        HomeScreen.homeScreen: (context) =>  HomeScreen(),
        SuraDetailsScreen.suraDetails: (context) =>  SuraDetailsScreen(),
        HadethDetails.hadithDetails: (context) =>   HadethDetails(),
      },
      themeMode: pro.modeApp,
      theme: MyThemeData.light,
      darkTheme: MyThemeData.dark,



    );
  }

}