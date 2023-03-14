import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:smartavia_weather/src/domain/geo/geo_service.dart';
import 'package:smartavia_weather/src/domain/models/weather_models/weather_model/weather_model.dart';
import 'package:smartavia_weather/src/domain/services/auth/okta_auth.dart';
import 'package:smartavia_weather/src/res/app_typography/app_typography.dart';
import 'package:smartavia_weather/src/res/colors/app_colors.dart';
import 'package:smartavia_weather/src/ui/splash_screen/cubit/splash_cubit.dart';
import 'package:smartavia_weather/src/ui/weather_screen/weather_screen.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthState());

  void changePassVisibility() {
    emit(state.copyWith(obscurePass: !state.obscurePass));
  }

  Future<void> auth(
      {required String email,
      required String pass,
      required BuildContext context}) async {
    emit(state.copyWith(isAuthorizing:true));
    try{
      final response= await OktaAuth().signInWithEmailAndPass(email: email, password: pass);
      final _geoPos = await GeoService.determinePosition();
      final _geo = await GeoService.determineCity(latitude: _geoPos.latitude, longtitude: _geoPos.longitude, applocale: 'ru');
      if(response['status']==true)Navigator.push(context,MaterialPageRoute(builder: (_)=>WeatherScreen(weather: Hive.box<WeatherModel>('weather').values.first, geo: _geo)));
    }catch(e){
      debugPrint(e.toString());
    }
    emit(state.copyWith(isAuthorizing:false));
  }
}
