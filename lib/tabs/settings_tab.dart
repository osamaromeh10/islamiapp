import 'package:flutter/material.dart';
import 'package:islami_app/my_Theme_Data.dart';
import 'package:islami_app/tabs/Toggle%20between%20Themes.dart';
import 'package:provider/provider.dart';

class SettingTab extends StatelessWidget {
  const SettingTab({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(top: 80, right: 10),
        child: Column(
            children: [
          Consumer<ThemeNotifier>(
            builder: (context, notifier, child) => SwitchListTile(
              title: Text("Dark Mode",
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: MyThemeData.PrimaryColor,
                      )
              ),
              value:notifier.darkTheme,
              onChanged: (value)
              {
                notifier.toggleTheme();
              },
            ),
          )
        ]),
      ),
    );
  }
}
