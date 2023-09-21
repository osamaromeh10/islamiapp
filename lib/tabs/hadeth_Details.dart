

import 'package:flutter/material.dart';
import 'package:islami_app/tabs/Hadeth_Model.dart';

import '../my_Theme_Data.dart';

class HadethDetails extends StatelessWidget {
  static const String routeName = "Hadeth Details";


  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of((context))!.settings.arguments as HadethModel;
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/images/background.png"),
          fit: BoxFit.cover,
        )),
        child: Scaffold(
          appBar: AppBar(
              title: Text(args.title,
                  style: Theme.of(context).textTheme.bodyMedium!)),
          body:  Padding(
            padding: const EdgeInsets.all(12.0),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                  side: BorderSide(color: MyThemeData.PrimaryColor)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.separated(
                  separatorBuilder: (context, index) => Divider(
                      indent: 20, endIndent: 20, color: MyThemeData.PrimaryColor),
                  itemBuilder: (context, index) {
                    return Center(
                        child: Text(
                          args.Content[index],
                          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              color: Colors.black
                          ),
                          textAlign: TextAlign.center,
                        ));
                  },
                  itemCount: args.Content.length,
                ),
              ),
            ),
          ),
        )
    );
  }
}
