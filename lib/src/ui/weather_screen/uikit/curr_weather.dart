import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartavia_weather/generated/assets.dart';
import 'package:smartavia_weather/src/domain/models/weather_models/daily_weather_model/daily_weather_model.dart';
import 'package:smartavia_weather/src/domain/models/weather_models/short_weather_model/short_weather_model.dart';
import 'package:smartavia_weather/src/domain/models/weather_models/temp_model/temp_model.dart';
import 'package:smartavia_weather/src/domain/models/weather_models/weather_info_model/weather_info_model.dart';
import 'package:smartavia_weather/src/domain/models/weather_models/weather_model/weather_model.dart';
import 'package:smartavia_weather/src/res/colors/app_colors.dart';
import 'package:smartavia_weather/src/ui/weather_screen/weather_screen.dart';

///Current Weather widget for Weather Screen
class CurrWeather extends StatelessWidget {
  final WeatherModel weather;

  const CurrWeather({Key? key, required this.weather}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final WeatherInfoModel _currWeather = WeatherInfoModel.fromJson(
      weather.current,
    );
    final ShortWeatherModel _shortCurrWeather = ShortWeatherModel.fromJson(
      _currWeather.weatherDesc.first,
    );
    final TempModel _currTemp = TempModel.fromJson(
      DailyWeatherModel.fromJson(weather.daily.first).temperature,
    );
    final _textTheme = Theme.of(context).textTheme;
    final _applocale = AppLocalizations.of(context)!;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          constraints: BoxConstraints.expand(width: 180.w, height: 180.h),
          child: Container(
            decoration: BoxDecoration(shape: BoxShape.circle, boxShadow: [
              BoxShadow(
                color: AppColors.lightPurple,
                blurRadius: 80.r,
              ),
            ]),
            child:
                _imageBigPath(main: _shortCurrWeather.main ?? '').runtimeType ==
                        String
                    ? Image.asset(
                        _imageBigPath(main: _shortCurrWeather.main!)!,
                        filterQuality: FilterQuality.high,
                      )
                    : null,
          ),
        ),
        Text(
          "${_currWeather.temperature.toCelsius()}º",
          style: _textTheme.headlineMedium?.copyWith(
            fontSize: 63.sp,
            color: AppColors.white,
          ),
        ),
        Text(
          "${_shortCurrWeather.description}".capitalize(),
          style: _textTheme.bodyLarge?.copyWith(
            color: AppColors.white,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "${_applocale.min}: ${_currTemp.min?.toCelsius() ?? 0}º"
                  .capitalize(),
              style: _textTheme.bodyLarge?.copyWith(
                color: AppColors.white,
              ),
            ),
            Text(
              "${_applocale.max}: ${_currTemp.max?.toCelsius() ?? 0}º"
                  .capitalize(),
              style: _textTheme.bodyLarge?.copyWith(
                color: AppColors.white,
              ),
            ),
          ],
        ),
      ],
    );
  }

  String? _imageBigPath({required String main}) {
    switch (main) {
      case "Clouds":
        return Assets.bigClouds;
      case "Snow":
        return Assets.bigSnow;
      case "Drizzle":
        return Assets.bigDrizzle;
      case "Rain":
        return Assets.bigRain;
      case "Clear":
        return Assets.bigClear;
      case "Thunderstorm":
        return Assets.bigThunderstorm;
      case "Atmosphere":
        return Assets.bigClouds;
    }
    return null;
  }
}

extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${this.substring(1).toLowerCase()}";
  }
}
