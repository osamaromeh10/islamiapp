import 'package:flutter/material.dart';

class MyProvider extends ChangeNotifier {
  String languageCode = "en";
ThemeMode modeApp=ThemeMode.light;
  void ChangeLanguage(String langCode) {
    languageCode = langCode;
    notifyListeners();
  }
ChangeTheme(ThemeMode mode){
    modeApp=mode;
    notifyListeners();
  }

}
