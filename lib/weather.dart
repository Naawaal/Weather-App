import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/consts/our_theme.dart';
import 'package:weather_app/views/homepage_screen.dart';

class Weather extends StatelessWidget {
  const Weather({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Weather',
      themeMode: ThemeMode.system,
      home: const HomepageScreen(),
      theme: CustomTheme.lightTheme,
      darkTheme: CustomTheme.darkTheme,
    );
  }
}
