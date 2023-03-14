import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:regexed_validator/regexed_validator.dart' as regexed;
import 'package:smartavia_weather/src/domain/geo/geo_service.dart';
import 'package:smartavia_weather/src/domain/services/auth/okta_auth.dart';
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
    if (checkEmail(email: email) && checkPass(pass: pass)) {
      emit(state.copyWith(isAuthorizing: true));
      try {
        final response = await AuthService()
            .signInWithEmailAndPass(email: email, password: pass);
        final _geoPos = await GeoService.determinePosition();
        final _geo = await GeoService.determineCity(
            latitude: _geoPos.latitude,
            longtitude: _geoPos.longitude,
            applocale: 'ru');
        if (response['status'] == true) {
          Get.to(() => WeatherScreen(geo: _geo));
        } else {
          // Get.snackbar('Ошибка авторизации','$respon',backgroundColor: AppColors.red.withOpacity(0.5),duration: const Duration(seconds: 2),);
        }
      } on Exception catch (e) {
        debugPrint(e.toString());
      }
      emit(state.copyWith(isAuthorizing: false));
    }
  }

  bool checkEmail({required String email}) {
    print(email);
    if (regexed.validator.email(email) == false) {
      emit(state.copyWith(emailErr: 'Неверный e-mail'));
      return false;
    } else {
      emit(state.copyWith(emailErr: ''));
    }
    return true;
  }

  bool checkPass({required String pass}) {
    print(pass);
    if (pass.isEmpty) {
      emit(
        state.copyWith(passErr: 'Введите пароль'),
      );
      return false;
    } else {
      if (pass.length < 3) {
        emit(
          state.copyWith(passErr: 'Пароль слишком короткий'),
        );
        return false;
      } else {
        emit(
          state.copyWith(passErr: ''),
        );
      }
    }
    return true;
  }
}
