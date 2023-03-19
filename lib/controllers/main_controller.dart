import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/Services/api_services.dart';

class MainController extends GetxController {
  var isDark = false.obs;
  var currentWeatherData;
  var hourlyWeatherData;

  @override
  void onInit() {
    super.onInit();
    currentWeatherData = getCurrentWeatherApi();
    hourlyWeatherData = getHourlyWeather();
  }

  changeTheme() {
    isDark.value = !isDark.value;

    Get.changeThemeMode(isDark.value ? ThemeMode.dark : ThemeMode.light);
  }
}
