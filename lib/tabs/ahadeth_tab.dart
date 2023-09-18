import 'package:flutter/material.dart';
import 'package:islami_app/my_Theme_Data.dart';

class AhadethTab extends StatelessWidget {
  const AhadethTab({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Image.asset("assets/images/ahadeth_image.png"),
          Divider(
            color: MyThemeData.PrimaryColor,
            thickness: 2,
            indent: 15,endIndent: 15,
          ),
          Text("الأحاديث",
              style: Theme.of(context).textTheme.bodySmall!
          ),
          Divider(
            color: MyThemeData.PrimaryColor,
            thickness: 2,
            indent: 15,endIndent: 15,
          ),
        ],
      ),
    );
  }
}
