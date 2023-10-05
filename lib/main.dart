import 'package:flutter/material.dart';
import 'package:islami_app/home.dart';
import 'package:islami_app/my_Theme_Data.dart';
import 'package:islami_app/myprovider/my_provider.dart';

import 'package:islami_app/tabs/hadeth_Details.dart';
import 'package:islami_app/tabs/srua_details.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';



void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => MyProvider(),
      child: const MyApp()));
}

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
          initialRoute: HomeScreen.routeName,
          routes: {
            HomeScreen.routeName: (context) => const HomeScreen(),
            SruaDetailsScreen.routeName: (context) => const SruaDetailsScreen(),
            HadethDetails.routeName: (context) =>   HadethDetails(),
          },
       themeMode: pro.modeApp,
          theme: MyThemeData.light,
          darkTheme: MyThemeData.dark,



        );
  }

  }


