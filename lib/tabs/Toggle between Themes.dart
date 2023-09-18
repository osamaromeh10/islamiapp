import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeNotifier extends ChangeNotifier
{


  final String Key="Theme";
  late SharedPreferences prefs;
  late bool _darkTheme;
  ThemeNotifier() {
    _darkTheme=true;
  }
  toggleTheme() {
    _darkTheme= !_darkTheme;
    notifyListeners();
  }
  bool get darkTheme=>_darkTheme;


}