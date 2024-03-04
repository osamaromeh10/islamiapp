import 'package:flutter/material.dart';
import 'package:islami_app/myprovider/PrefsHelper.dart';
import 'package:islami_app/myprovider/my_provider.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'my_app.dart';



void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  PrefsHelper.prefs=await SharedPreferences.getInstance();
  runApp(
      ChangeNotifierProvider(
      create: (context) => MyProvider()..intit(),
      child:  MyApp()));
}




