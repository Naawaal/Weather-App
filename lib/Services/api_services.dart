import 'package:weather_app/consts/string.dart';
import 'package:http/http.dart' as http;
import 'package:weather_app/models/current_weather_model.dart';
import 'package:weather_app/models/hourly_weather_model.dart';

var link = currentEndpoint;

getCurrentWeatherApi() async {
  var response = await http.get(
    Uri.parse(link),
  );

  if (response.statusCode == 200) {
    final data = currentWeatherDataFromJson(response.body.toString());

    return data;
  }
}

var hourlyLink = daysEndpoint;

getHourlyWeather() async {
  var res = await http.get(
    Uri.parse(hourlyLink),
  );

  if (res.statusCode == 200) {
    final data = hourlyWeatherDataFromJson(res.body.toString());

    return data;
  }
}
