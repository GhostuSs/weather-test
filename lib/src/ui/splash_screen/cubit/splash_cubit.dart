import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:smartavia_weather/src/domain/geo/geo_service.dart';
import 'package:smartavia_weather/src/domain/services/weather/weather_service/weather_service.dart';
import 'package:smartavia_weather/src/ui/weather_screen/weather_screen.dart';

part 'splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(SplashState());

  Future<void> initialize(BuildContext context) async {
    bool _checkGeoPermissions = await GeoService.checkPermissions();
    late final String geoName;
    late final Position? geo;
    dynamic weather;
    if (_checkGeoPermissions) {
      try {
        geo = await GeoService.determinePosition();
        if (geo != null) {
          weather = await WeatherService.getCurrWeather(
              latitude: geo.latitude, longtitude: geo.longitude);
          geoName = await GeoService.determineCity(
              latitude: geo.latitude,
              longtitude: geo.longitude,
              applocale: 'ru');
        }
      } on Exception catch (e) {
        debugPrint(e.toString());
      }
    }
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (_) => WeatherScreen(
                  weather: weather,
                  geo: geoName,
                )));
    emit(state.copyWith(geoInitialized: _checkGeoPermissions));
  }
}
