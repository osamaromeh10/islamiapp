import 'package:flutter/material.dart';
import 'package:islami_app/myprovider/my_provider.dart';
import 'package:islami_app/tabs/ahadeth_Screen/ahadeth_Tab.dart';
import 'package:islami_app/tabs/quran_Screen/quarn_tab.dart';
import 'package:islami_app/tabs/radio_Screen/radio_tab.dart';
import 'package:islami_app/tabs/sebha_Screen/sebha_tab.dart';
import 'package:islami_app/tabs/Setting_Screen/settings_tab.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  static const String homeScreen = "/";

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> titles = [
    "Quarn",
    "Sebha",
    "Radio",
    "Ahadeth",
    "Settings",
  ];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    var pro =Provider.of<MyProvider>(context);
    return Stack(children: [
      Image.asset(
       pro.modeApp==ThemeMode.light? "assets/images/background.png":"assets/images/backgroundDark.png",
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.cover,
      ),
      Scaffold(
        appBar: AppBar(
          title:
              Text(AppLocalizations.of(context)!.apptitle, style: Theme.of(context).textTheme.bodyLarge),
        ),
        body: tabs[index],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          onTap: (value) {
            index = value;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(
                icon: const ImageIcon(AssetImage("assets/images/quran.png")),
                label: AppLocalizations.of(context)!.quarn,
                backgroundColor: Theme.of(context).bottomNavigationBarTheme.backgroundColor),
            BottomNavigationBarItem(
                icon: const ImageIcon(AssetImage("assets/images/sebha.png")),
                label:AppLocalizations.of(context)!.sebha,
                backgroundColor: Theme.of(context).bottomNavigationBarTheme.backgroundColor),
            BottomNavigationBarItem(
                icon: const ImageIcon(AssetImage("assets/images/radio.png")),
                label: AppLocalizations.of(context)!.radio,
                backgroundColor:  Theme.of(context).bottomNavigationBarTheme.backgroundColor),
            BottomNavigationBarItem(
                icon: const ImageIcon(AssetImage("assets/images/ahadeth.png")),
                label: AppLocalizations.of(context)!.ahadeth,
                backgroundColor:  Theme.of(context).bottomNavigationBarTheme.backgroundColor),
            BottomNavigationBarItem(
                icon: const Icon(Icons.settings),
                label: AppLocalizations.of(context)!.settings,
                backgroundColor: Theme.of(context).bottomNavigationBarTheme.backgroundColor),
          ],
        ),
      ),
    ]);
  }
}

List<Widget> tabs = [
  QuarnTab(),
  const SebhaTab(),
 RadioTab(),
   AhadethTab(),
   const SettingTab(),
];
