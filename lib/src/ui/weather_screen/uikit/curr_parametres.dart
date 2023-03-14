import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smartavia_weather/generated/assets.dart';
import 'package:smartavia_weather/src/domain/models/weather_models/weather_info_model/weather_info_model.dart';
import 'package:smartavia_weather/src/domain/models/weather_models/weather_model/weather_model.dart';
import 'package:smartavia_weather/src/res/app_typography/app_typography.dart';
import 'package:smartavia_weather/src/res/colors/app_colors.dart';

class CurrentParametres extends StatelessWidget {
  final WeatherModel weather;

  const CurrentParametres({Key? key, required this.weather}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _currWeather = WeatherInfoModel.fromJson(weather.current);
    final applocale = AppLocalizations.of(context)!;
    return Container(
      padding: EdgeInsets.all(16.h),
      decoration: BoxDecoration(
        color: AppColors.grape,
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _Parameter(
              asset: Assets.iconsWind,
              spaceBetweenValue: true,
              value: "${_currWeather.windSpeed?.toInt() ?? 0}",
              measureUnit: applocale.ms,
              description:
                  "${applocale.wind} ${_windDirection(degree: _currWeather.windDegree ?? 0)}"),
          const SizedBox(
            height: 16,
          ),
          _Parameter(
            asset: Assets.iconsDrop,
            value: "${_currWeather.humidity ?? 0}",
            measureUnit: "%",
            description: _humidityLevel(
              humidity: _currWeather.humidity ?? 0,
            ),
          ),
        ],
      ),
    );
  }

  String _humidityLevel({required int humidity}) {
    String _label = 'Низкая влажность';
    if (humidity > 70) {
      _label = 'Высокая влажность';
    } else {
      if (humidity < 30) {
        _label = 'Низкая влажность';
      } else {
        if (humidity > 30 && humidity < 70) _label = 'Умеренная влажность';
      }
    }
    return _label;
  }

  String _windDirection({required double degree}) {
    if (degree > 315 || degree == 0 || degree == 360) return 'северный';
    if ((degree > 0 || degree > 360) && degree <= 45) return 'северо-восточный';
    if (degree > 45 && degree <= 90) return 'восточный';
    if (degree > 90 && degree <= 135) return 'юго-восточный';
    if (degree > 135 && degree <= 180) return 'южный';
    if (degree > 180 && degree <= 225) return 'юго-западный';
    if (degree > 225 && degree <= 270) return 'западный';
    if (degree > 270 && degree <= 315) return 'северо-западный';
    return '';
  }
}

class _Parameter extends StatelessWidget {
  final String asset;
  final String value;
  final bool? spaceBetweenValue;
  final String measureUnit;
  final String description;

  const _Parameter({
    Key? key,
    required this.asset,
    required this.value,
    required this.measureUnit,
    required this.description,
    this.spaceBetweenValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 88.w,
          child: Row(
            children: [
              SvgPicture.asset(
                asset,
                width: 24.w,
                height: 24.w,
                color: AppColors.white,
              ),
              const SizedBox(
                width: 8,
              ),
              Text(
                "$value${spaceBetweenValue == true ? " " : ''}$measureUnit",
                style: AppTypography.body2med.copyWith(color: AppColors.white),
              ),
            ],
          ),
        ),
        Text(
          description,
          style: AppTypography.body2.copyWith(color: AppColors.lightPurple),
        ),
      ],
    );
  }
}
