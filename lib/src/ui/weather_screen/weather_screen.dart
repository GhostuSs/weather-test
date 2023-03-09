import 'package:flutter/material.dart';
import 'package:smartavia_weather/src/domain/models/weather_models/weather_model/weather_model.dart';
import 'package:smartavia_weather/src/res/colors/app_colors.dart';
import 'package:smartavia_weather/src/ui/weather_screen/uikit/curr_parametres.dart';
import 'package:smartavia_weather/src/ui/weather_screen/uikit/curr_weather.dart';
import 'package:smartavia_weather/src/ui/weather_screen/uikit/geo_header.dart';
import 'package:smartavia_weather/src/ui/weather_screen/uikit/hourly_weather_widget.dart';

///Current weather screen
class WeatherScreen extends StatelessWidget {
  final WeatherModel weather;
  final String geo;

  const WeatherScreen({Key? key, required this.weather, required this.geo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.purple,
      body: SafeArea(
        minimum: const EdgeInsets.all(24),
        child: Column(
          children: [
            GeoHeader(
              geo: geo,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 24,
              ),
              child: CurrWeather(
                weather: weather,
              ),
            ),
            HourlyWeatherWidget(
              weather: weather,
            ),
            const SizedBox(
              height: 24,
            ),
            CurrentParametres(
              weather: weather,
            ),
          ],
        ),
      ),
    );
  }
}

extension DoubleExtension on double {
  int toCelsius() {
    return (this - 273).ceil();
  }
}
