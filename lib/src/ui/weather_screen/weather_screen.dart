import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive/hive.dart';
import 'package:smartavia_weather/src/domain/models/weather_models/weather_model/weather_model.dart';
import 'package:smartavia_weather/src/res/colors/app_colors.dart';
import 'package:smartavia_weather/src/ui/weather_screen/uikit/curr_parametres.dart';
import 'package:smartavia_weather/src/ui/weather_screen/uikit/curr_weather.dart';
import 'package:smartavia_weather/src/ui/weather_screen/uikit/geo_header.dart';
import 'package:smartavia_weather/src/ui/weather_screen/uikit/hourly_weather_widget.dart';

///Current weather screen
class WeatherScreen extends StatelessWidget {
  final String geo;

  const WeatherScreen({
    Key? key,
    required this.geo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final WeatherModel weather = Hive.box<WeatherModel>('weather').values.first;
    return Scaffold(
      backgroundColor: AppColors.purple,
      body: SafeArea(
        bottom: false,
        minimum: const EdgeInsets.only(left: 24, right: 24, top: 24),
        child: Column(
          children: [
            GeoHeader(
              geo: geo,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 20.h,
              ),
              child: CurrWeather(
                weather: weather,
              ),
            ),
            HourlyWeatherWidget(
              weather: weather,
            ),
            SizedBox(
              height: 16.h,
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
