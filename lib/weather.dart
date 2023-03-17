import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/views/homepage_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class Weather extends StatelessWidget {
  const Weather({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Weather',
      themeMode: ThemeMode.system,
      home: const HomepageScreen(),
      theme: ThemeData(
        fontFamily: GoogleFonts.poppins().fontFamily,
      ),
    );
  }
}
