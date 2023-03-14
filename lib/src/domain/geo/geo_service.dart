import 'package:dio/dio.dart';
import 'package:geolocator/geolocator.dart';
import 'package:hive/hive.dart';
import 'package:smartavia_weather/src/domain/appconfig/app_config.dart';
import 'package:smartavia_weather/src/domain/baseurl/base_url.dart';

///GeoService package
abstract class GeoService {
  ///Determine position
  static Future<Position> determinePosition() async {
    bool serviceEnabled = false;
    final Position _arkhangelsk = Position(
        longitude:  40.523149,
        latitude: 64.535579,
        timestamp: DateTime.now(),
        accuracy: 0.0,
        altitude: 0.0,
        heading: 0.0,
        speed: 0.0,
        speedAccuracy: 0.0);
    LocationPermission permission = LocationPermission.denied;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return _arkhangelsk;
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return _arkhangelsk;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      if(Hive.box<bool>('settingsopened').isEmpty)
        await Geolocator.openLocationSettings().then((value) async => await Hive.box<bool>('settingsopened').put('settingsopened', true));
      return _arkhangelsk;

    }
    return await Geolocator.getCurrentPosition();
  }

  ///Check Permissions
  static Future<bool> checkPermissions() async {
    bool serviceEnabled = false;
    LocationPermission permission = LocationPermission.denied;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        if(Hive.box<bool>('settingsopened').isEmpty)
          await Geolocator.openLocationSettings().then((value) => Hive.box<bool>('settingsopened').put('settingsopened', true));
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      if(Hive.box<bool>('settingsopened').isEmpty)
        await Geolocator.openLocationSettings().then((value) => Hive.box<bool>('settingsopened').put('settingsopened', true));
    }
    return serviceEnabled;
  }

  static Future<String> determineCity(
      {required double latitude,
      required double longtitude,
      required String applocale}) async {
    final _bodyMap = {
      "lat": latitude,
      "lon": longtitude,
      "limit": 1,
      "appId": AppConfig.weatherApiKey
    };
    late final _response;
    await Dio()
        .request(BaseUrl.geoUrl, queryParameters: _bodyMap)
        .then((value) => _response = value.data.first);
    print(_response);
    return _response['local_names'][applocale] ??
        _response['local_names']['en'];
  }
}
