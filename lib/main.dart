import 'package:flutter/material.dart';
import 'package:islami_app/home.dart';
import 'package:islami_app/my_Theme_Data.dart';
import 'package:islami_app/tabs/Toggle%20between%20Themes.dart';
import 'package:islami_app/tabs/hadeth_Details.dart';
import 'package:islami_app/tabs/srua_details.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ThemeNotifier>(
      create: (context) => ThemeNotifier(),
      child: Consumer<ThemeNotifier>(
        builder: ( context, ThemeNotifier notifier, Widget? child) {
          return MaterialApp(

            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
            locale: Locale("ar"),

            debugShowCheckedModeBanner: false,
            initialRoute: HomeScreen.routeName,
            routes: {
              HomeScreen.routeName: (context) => const HomeScreen(),
              SruaDetailsScreen.routeName: (context) => const SruaDetailsScreen(),
              HadethDetails.routeName: (context) =>   HadethDetails(),
            },
            theme: notifier.darkTheme? MyThemeData.dark:MyThemeData.light,
            darkTheme: MyThemeData.dark,

          );}
        ),
    );
  }
  }

