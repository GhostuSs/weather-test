import 'package:dio/dio.dart';
import 'package:smartavia_weather/src/domain/appconfig/app_config.dart';
import 'package:smartavia_weather/src/domain/baseurl/base_url.dart';
import 'package:smartavia_weather/src/domain/geo/geo_service.dart';
import 'package:smartavia_weather/src/domain/models/weather_models/weather_model/weather_model.dart';

abstract class WeatherService {
  static Dio _dio = Dio();
  static const String _callbackLanguage = "RU";
  static const String _excludeFields = "minutely,alerts";

  static Future<dynamic> getCurrWeather({
    required double latitude,
    required double longtitude,
  }) async {
    final Map<String, dynamic> _bodyMap = {
      "lat": latitude,
      "lon": longtitude,
      "appid": AppConfig.weatherApiKey,
      "exclude": _excludeFields,
      "lang": _callbackLanguage,
    };
    late final _response;
    await _dio
        .request(
          BaseUrl.weatherUrl,
          queryParameters: _bodyMap,
        )
        .then((value) => _response = value.data);
    // _response=mockData.toJson();
    // print(_response);
    await GeoService.determineCity(
        latitude: latitude,
        longtitude: longtitude,
        applocale: _callbackLanguage.toLowerCase());
    return WeatherModel.fromJson(_response);
  }
}
