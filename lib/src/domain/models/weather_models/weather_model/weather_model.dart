import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'weather_model.freezed.dart';
part 'weather_model.g.dart';

@freezed
class WeatherModel extends HiveObject with _$WeatherModel {
  WeatherModel._();

  @HiveType(typeId: 3)
  factory WeatherModel({
    @JsonKey(name: 'current')
    @HiveField(0)
        required Map<String, dynamic> current,
    @JsonKey(name: 'hourly')
    @HiveField(1)
        required List<Map<String, dynamic>> hourly,
    @JsonKey(name: 'lat') @HiveField(2) required double latitude,
    @JsonKey(name: 'lon') @HiveField(3) required double longtitude,
    @JsonKey(name: 'daily')
    @HiveField(4)
        required List<Map<String, dynamic>> daily,
  }) = _WeatherModel;

  factory WeatherModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherModelFromJson(json);
}
