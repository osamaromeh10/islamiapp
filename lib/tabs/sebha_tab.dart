import 'package:flutter/material.dart';
import 'package:islami_app/my_Theme_Data.dart';

class SebhaTab extends StatefulWidget {
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int num=0;
String tasabeh=" ";
  @override
  Widget build(BuildContext context) {
    return
      Center(
      child: Column(
        children:[
          Image.asset("assets/images/head_sebha.png",color: MyThemeData.PrimaryColor),
          SizedBox(height:30.0),
          Text("عدد التسبيحات ",
              style: Theme.of(context).textTheme.bodySmall!
          ),
          SizedBox(height: 20.0),


        Container
          (
            height: 70,
            width: 55,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15.0),
              color: MyThemeData.PrimaryColor,
            ),
            child: Center(child: Text("$num",)

        )
        ),
        SizedBox(height: 30.0),
        Container(
            height: 50,
            width: 160,
          child: ElevatedButton(
            onPressed: () {
              num++;
              setState(() {
              });

            },
            child:
            Container(
                height: 50,
                width: 160,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(15.0),
                  color: MyThemeData.PrimaryColor,
                ),
                child: Center(child: Text("سبحان الله ",
                  style: Theme.of(context).textTheme.bodySmall!,
                )
            )
            ),
          ),
        ),




        ],
      ),
    );
  }



  }

