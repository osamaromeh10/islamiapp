import 'package:flutter/material.dart';
import 'package:islami_app/my_Theme_Data.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});
  @override
  Widget build(BuildContext context) {
    return
    Padding(
      padding: const EdgeInsets.symmetric(vertical: 170),
      child: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Image.asset("assets/images/radio_image.png"),
            SizedBox(height: 15.0),
            Text("إذاعه القراءن الكريم",style: Theme.of(context).textTheme.bodySmall,),
            SizedBox(height: 35.0),
            Image.asset("assets/images/Group 5.png",color: MyThemeData.YellowColor,height: 30,width: 160),
          ],
        ),
      ),
    );
  }
}
