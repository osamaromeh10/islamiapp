import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class MyThemeData {
  static String backgroundligth= "assets/images/background.png";
  static String backgrounddark= "assets/images/darkback.png";
  static Color PrimaryColor=Color(0xffB7935f);
  static Color PrimaryColorDark=Color(0xff141A2E);
  static Color BlackColor=Color(0xff242424);
  static Color whiteColor=Colors.white;
  static Color YellowColor=const Color(0xfffacc1d);
  static ThemeData light = ThemeData(

      appBarTheme:  AppBarTheme(
        iconTheme: IconThemeData(color: PrimaryColor,),

        color: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
      ),
      textTheme: TextTheme(
        bodySmall: GoogleFonts.elMessiri(
          color: BlackColor,
          fontSize: 20,
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: GoogleFonts.elMessiri(
          color: Colors.black,
          fontSize: 25,
          fontWeight: FontWeight.w700,
        ),
        bodyLarge: GoogleFonts.elMessiri(
          color:BlackColor,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
      scaffoldBackgroundColor: Colors.transparent,
      brightness: Brightness.light,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: BlackColor,
      unselectedItemColor: Colors.white,
      backgroundColor: PrimaryColor,
      type: BottomNavigationBarType.shifting,




    )
  );
  static ThemeData dark = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      brightness: Brightness.dark,
      appBarTheme:  AppBarTheme(
        iconTheme: IconThemeData(color: PrimaryColorDark,),
        color: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
      ),
      textTheme: TextTheme(
        bodySmall: GoogleFonts.elMessiri(
          color:YellowColor,
          fontSize: 20,
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: GoogleFonts.elMessiri(
          color:MyThemeData.YellowColor,
          fontSize: 25,
          fontWeight: FontWeight.w700,
        ),
        bodyLarge: GoogleFonts.elMessiri(
          color:whiteColor,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
      bottomNavigationBarTheme:BottomNavigationBarThemeData(
        selectedItemColor: Color(0xfffacc1d),
        unselectedItemColor: Colors.white,
        backgroundColor: PrimaryColorDark,
        type: BottomNavigationBarType.shifting,




      ),






  );



}
