import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:smartavia_weather/src/domain/geo/geo_service.dart';
import 'package:smartavia_weather/src/domain/models/weather_models/weather_model/weather_model.dart';
import 'package:smartavia_weather/src/domain/services/auth/okta_auth.dart';
import 'package:smartavia_weather/src/domain/services/weather/weather_service/weather_service.dart';
import 'package:smartavia_weather/src/ui/auth_screen/auth_screen.dart';
import 'package:smartavia_weather/src/ui/weather_screen/weather_screen.dart';

part 'splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(SplashState());

  Future<void> initialize(BuildContext context) async {
    bool _checkGeoPermissions = await GeoService.checkPermissions();
    late final Position? geo;
    String geoName = '';
    WeatherModel weather;
    bool _access = false;
    if (_checkGeoPermissions) {
      try {
        geo = await GeoService.determinePosition();
        weather = await WeatherService.getCurrWeather(
          latitude: geo.latitude,
          longtitude: geo.longitude,
        );
        geoName = await GeoService.determineCity(
            latitude: geo.latitude, longtitude: geo.longitude, applocale: 'RU');
        _access = await AuthService().checkAccess();
        await Hive.box<WeatherModel>('weather').put('weather', weather);
      } on Exception catch (e) {
        debugPrint(e.toString());
      }
    }
    Get.to(() => _access ? WeatherScreen(geo: geoName) : AuthScreen());
    emit(state.copyWith(geoInitialized: _checkGeoPermissions));
  }
}
