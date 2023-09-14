import 'package:flutter/material.dart';
import 'package:islami_app/my_Theme_Data.dart';
import 'package:islami_app/tabs/ahadeth_tab.dart';
import 'package:islami_app/tabs/quarn_tab.dart';
import 'package:islami_app/tabs/radio_tab.dart';
import 'package:islami_app/tabs/sebha_tab.dart';
import 'package:islami_app/tabs/settings_tab.dart';


class HomeScreen extends StatefulWidget {
  static const String routeName = " Home Screen";

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String>titles=[
    "Quarn",
    "Sebha",
    "Radio",
    "Ahadeth",
    "Settings",


  ];
  int index=0;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Image.asset(
        "assets/images/background.png",
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.cover,
      ),
      Scaffold(
        appBar: AppBar(
          title: Text(titles[index], style: Theme.of(context).textTheme.bodyLarge),
        ),

        body: tabs[index],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          onTap: (value) {
            index=value;
            setState(() {

            });

          },

          items: [
            BottomNavigationBarItem(icon:ImageIcon(AssetImage("assets/images/quran.png")) ,label: "Quarn",backgroundColor: MyThemeData.PrimaryColor),
            BottomNavigationBarItem(icon:ImageIcon(AssetImage("assets/images/sebha.png")),label: "Sebha",backgroundColor: MyThemeData.PrimaryColor),
            BottomNavigationBarItem(icon:ImageIcon(AssetImage("assets/images/radio.png")),label: "Radio",backgroundColor: MyThemeData.PrimaryColor),
            BottomNavigationBarItem(icon:ImageIcon(AssetImage("assets/images/ahadeth.png")),label: "Ahadeth",backgroundColor: MyThemeData.PrimaryColor),
            BottomNavigationBarItem(icon:Icon(Icons.settings),label: "Settings",backgroundColor: MyThemeData.PrimaryColor),
          ],
        ),

      ),

    ]
    );
  }

  }
  List<Widget>tabs=[QuarnTab(),SebhaTab(),RadioTab(),AhadethTab(),SettingTab(),];

