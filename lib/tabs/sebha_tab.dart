import 'package:flutter/material.dart';
import 'package:islami_app/my_Theme_Data.dart';

class SebhaTab extends StatefulWidget {
  const SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int num = 0;
  int Counter=0;
  String tasabeh = " سبحان الله";

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Image.asset("assets/images/head_sebha.png",
              color: MyThemeData.PrimaryColor),
          const SizedBox(height: 30.0),
          Text("عدد التسبيحات ", style: Theme.of(context).textTheme.bodySmall!),
          const SizedBox(height: 20.0),
          Container(
              height: 70,
              width: 55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: MyThemeData.PrimaryColor,
              ),
              child: Center(
                  child: Text(
                "$num",
              ))),
          const SizedBox(height: 30.0),
          SizedBox(
            height: 50,
            width: 160,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: MyThemeData.PrimaryColor,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)
              ),

              
              ),
              onPressed: () {
                {
                  for(int i=num;i<132;i++)
                  {
                    if(num==33){
                      tasabeh="الحمدلله";
                    }else if(num==66)
                      {
                        tasabeh="لا اله الا الله";
                      }else if(num==99)
                        {
                          tasabeh="الله اكبر";
                        }
                  }
                  setState(() {

                    num++;

                  });

                }


              },
              child: Center(
                  child: Text(tasabeh,
                style: Theme.of(context).textTheme.bodySmall!,
              )),
            ),
          ),
        ],
      ),
    );
  }
}
