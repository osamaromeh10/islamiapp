import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData {
  static Color PrimaryColor=Color(0xffB7935f);
  static Color BlackColor=Color(0xff242424);
  static ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
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
          color: const Color(0xffffffff),
          fontSize: 25,
          fontWeight: FontWeight.w700,
        ),
        bodyLarge: GoogleFonts.elMessiri(
          color:BlackColor,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: BlackColor,
      unselectedItemColor: Colors.white,
      backgroundColor: PrimaryColor,
      type: BottomNavigationBarType.shifting,




    )

    



  );
  static ThemeData darkTheme = ThemeData();
}
