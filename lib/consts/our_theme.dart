import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:weather_app/consts/color_const.dart';

class CustomTheme {
  static final lightTheme = ThemeData(
    cardColor: Colors.white,
    fontFamily: GoogleFonts.poppins().fontFamily,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      elevation: 0,
      color: Colors.transparent,
    ),
    primaryColor: Vx.gray800,
    iconTheme: const IconThemeData(
      color: Vx.gray600,
    ),
  );

  static final darkTheme = ThemeData(
    cardColor: bgColor.withOpacity(0.6),
    fontFamily: GoogleFonts.poppins().fontFamily,
    scaffoldBackgroundColor: bgColor,
    primaryColor: Colors.white,
    appBarTheme: const AppBarTheme(
      elevation: 0,
      color: Colors.transparent,
    ),
    iconTheme: const IconThemeData(
      color: Colors.white,
    ),
  );
}
