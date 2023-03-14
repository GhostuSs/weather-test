import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';
import 'package:smartavia_weather/src/domain/models/weather_models/daily_weather_model/daily_weather_model.dart';
import 'package:smartavia_weather/src/domain/models/weather_models/short_weather_model/short_weather_model.dart';
import 'package:smartavia_weather/src/domain/models/weather_models/weather_info_model/weather_info_model.dart';
import 'package:smartavia_weather/src/domain/models/weather_models/weather_model/weather_model.dart';
import 'package:smartavia_weather/src/domain/services/auth/okta_auth.dart';
import 'package:smartavia_weather/src/ui/entry_point.dart';


///Entrypoint of current app
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  Directory directory = Directory.current;
  if (Platform.isIOS) {
    directory = await getApplicationDocumentsDirectory();
  } else {
    directory = await getApplicationDocumentsDirectory();
  }
  Hive.init(directory.path);

  Hive.registerAdapter<WeatherModel>(WeatherModelAdapter());
  Hive.registerAdapter<WeatherInfoModel>(WeatherInfoModelAdapter());
  Hive.registerAdapter<DailyWeatherModel>(DailyWeatherModelAdapter());
  Hive.registerAdapter<ShortWeatherModel>(ShortWeatherModelAdapter());
  await Hive.openBox<WeatherModel>('weather');
  // await SentryFlutter.init(
  //   (options) {
  //     options.dsn = AppConfig.sentryDSN;
  //     options.tracesSampleRate = 1.0;
  //   },
  //   appRunner: () =>
  // await okta.signInWithEmailAndPass(email: 'test@test.ru', password: 'smartavia2023',);
  // await okta.checkAccess();
  runApp(
    const App(),
  )
      // )
      ;
}
