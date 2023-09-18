import 'package:flutter/material.dart';

class SettingTab extends StatelessWidget {
  const SettingTab({super.key});
  static const String routeName = " setting screen";





  @override
  Widget build(BuildContext context) {
    return Container(
    height: double.infinity,
      width: double.infinity,
      child: Column(children: [
        SwitchListTile(value: true, onChanged: (value) {


        },)
      ]),
    );
  }
}
