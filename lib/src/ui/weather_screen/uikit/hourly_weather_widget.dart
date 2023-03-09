import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:smartavia_weather/generated/assets.dart';
import 'package:smartavia_weather/src/domain/models/weather_models/daily_weather_model/daily_weather_model.dart';
import 'package:smartavia_weather/src/domain/models/weather_models/short_weather_model/short_weather_model.dart';
import 'package:smartavia_weather/src/domain/models/weather_models/weather_info_model/weather_info_model.dart';
import 'package:smartavia_weather/src/domain/models/weather_models/weather_model/weather_model.dart';
import 'package:smartavia_weather/src/res/app_typography/app_typography.dart';
import 'package:smartavia_weather/src/res/colors/app_colors.dart';
import 'package:smartavia_weather/src/ui/weather_screen/weather_screen.dart';

class HourlyWeatherWidget extends StatelessWidget {
  static const String _dateFormatPattern = "d MMMM";
  final WeatherModel weather;

  const HourlyWeatherWidget({Key? key, required this.weather})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final applocale = AppLocalizations.of(context)!;
    final List<WeatherInfoModel> weatherList = List.generate(
        weather.hourly.length,
        (index) => WeatherInfoModel.fromJson(weather.hourly[index]));
    final dailyWeather = DailyWeatherModel.fromJson(weather.daily.first);
    return Container(
      decoration: BoxDecoration(
        color: AppColors.grape,
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  applocale.today,
                  style: AppTypography.body1med.copyWith(
                    color: AppColors.white,
                  ),
                ),
                Text(
                  DateFormat(
                    _dateFormatPattern,
                    applocale.localeName,
                  ).format(DateTime.now()),
                  style: AppTypography.body2.copyWith(
                    color: AppColors.lightPurple,
                  ),
                )
              ],
            ),
          ),
          const Divider(
            color: AppColors.lightPurple,
          ),
          Container(
            padding: const EdgeInsets.all(16),
            constraints: BoxConstraints.expand(height: 142.h),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => _HourWeatherCard(
                info: weatherList[index],
                dailyWeather: dailyWeather,
              ),
              itemCount: weatherList.length ~/ 2,
            ),
          ),
        ],
      ),
    );
  }
}

class _HourWeatherCard extends StatelessWidget {
  final WeatherInfoModel info;
  final DailyWeatherModel dailyWeather;

  const _HourWeatherCard({
    Key? key,
    required this.info,
    required this.dailyWeather,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ShortWeatherModel _description =
        ShortWeatherModel.fromJson(info.weatherDesc.first);
    final bool _isCurrHour =
        DateTime.now().difference(_unixToNormal()).inMinutes > 0 &&
            DateTime.now().difference(_unixToNormal()).inMinutes < 60;
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: _isCurrHour ? AppColors.selectedPurple : null,
        border: _isCurrHour
            ? Border.all(
                color: AppColors.lightPurple,
              )
            : null,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            _getTime(),
            style: AppTypography.body2.copyWith(color: AppColors.white),
          ),
          if (_imageSmallPath(main: _description.main!).runtimeType == String)
            SvgPicture.asset(
              _imageSmallPath(
                main: _description.main!,
                isNightTime: isDay(),
              )!,
              width: 32.w,
            ),
          Text(
            '${info.temperature.toCelsius()}º',
            style: AppTypography.body1med.copyWith(color: AppColors.white),
          ),
        ],
      ),
    );
  }

  ///Convert GMT to Dart DateTime formatt
  DateTime _unixToNormal({int? dt, bool? prin}) {
    if (prin == true) print('dt: $dt');
    return DateTime.fromMillisecondsSinceEpoch((dt ?? info.dtUnix)! * 1000);
  }

  ///Returns time only
  String _getTime() {
    return DateFormat.Hm().format(_unixToNormal());
  }

  String? _imageSmallPath({required String main, bool? isNightTime}) {
    switch (main) {
      case "Clouds":
        return isDay() ? Assets.miniCloudMoon : Assets.miniCloudSun;
      case "Snow":
        return Assets.miniCloudSnow;
      case "Drizzle":
        return Assets.miniCloudRain;
      case "Rain":
        return Assets.miniCloudRain;
      case "Clear":
        return Assets.miniSun;
      case "Thunderstorm":
        return Assets.miniCloudLightning;
    }
    return null;
  }

  bool isDay() {
    final DateTime _dateTime = _unixToNormal(prin: true);
    final DateTime _sunset =
        _unixToNormal(dt: dailyWeather.sunsetUnix, prin: true);
    final DateTime _sunrise =
        _unixToNormal(dt: dailyWeather.sunriseUnix, prin: true);
    print('EREREREr');
    print(_dateTime);
    print(_sunset);
    print(_sunrise);
    print('asdasdasdasd');
    return _dateTime.isBefore(_sunset);
  }
}
