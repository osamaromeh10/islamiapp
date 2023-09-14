import 'package:flutter/material.dart';
import 'package:islami_app/my_Theme_Data.dart';

class SebhaTab extends StatelessWidget {
  const SebhaTab({super.key});



  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(

        children:[
          Image.asset("assets/images/head_sebha.png"),
          SizedBox(height:30.0),
          Text("عدد التسبيحات ",
              style: Theme.of(context).textTheme.bodySmall!.copyWith(color:MyThemeData.BlackColor)
          ),
          SizedBox(height: 20.0),
          Image.asset("assets/images/Group 2.png"),


        ],
      ),
    );
  }
}
