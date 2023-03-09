import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:smartavia_weather/src/domain/models/weather_models/weather_model/weather_model.dart';
import 'package:smartavia_weather/src/ui/entry_point.dart';

///Entrypoint of current app
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Hive
    ..init(Directory.current.path)
    ..registerAdapter<WeatherModel>(WeatherModelAdapter());
  // await SentryFlutter.init(
  //   (options) {
  //     options.dsn = AppConfig.sentryDSN;
  //     options.tracesSampleRate = 1.0;
  //   },
  //   appRunner: () =>
  runApp(
    const App(),
  )
      // )
      ;
}
