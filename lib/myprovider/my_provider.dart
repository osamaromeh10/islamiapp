import 'package:flutter/material.dart';
import 'package:islami_app/myprovider/PrefsHelper.dart';

class MyProvider extends ChangeNotifier {
  String languageCode = "en";
ThemeMode modeApp=ThemeMode.light;
void intit()async{
  String? newlang=PrefsHelper.getLanguage();
  ChangeLanguage(newlang??"en");
  String mode=PrefsHelper.getMode();
  if(mode=="dark"){
    ChangeTheme(ThemeMode.dark);
  }else{
    ChangeTheme(ThemeMode.light);
  }
}
  void ChangeLanguage(String langCode) {
    languageCode = langCode;
    PrefsHelper.saveLanguage(langCode);
    notifyListeners();
  }
ChangeTheme(ThemeMode mode){
    modeApp=mode;
    if(mode ==ThemeMode.dark){
      PrefsHelper.saveTheme("dark");
    }else{
      PrefsHelper.saveTheme("light");
    }
    notifyListeners();
  }

}
