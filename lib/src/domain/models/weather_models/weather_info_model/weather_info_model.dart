import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'weather_info_model.freezed.dart';
part 'weather_info_model.g.dart';

@freezed
class WeatherInfoModel extends HiveObject with _$WeatherInfoModel {
  WeatherInfoModel._();

  @HiveType(typeId: 2)
  factory WeatherInfoModel({
    @JsonKey(name: 'humidity') @HiveField(0) required int? humidity,
    @JsonKey(name: 'wind_speed') @HiveField(1) required double? windSpeed,
    @JsonKey(name: 'weather')
    @HiveField(2)
        required List<Map<String, dynamic>> weatherDesc,
    @JsonKey(name: 'temp') @HiveField(3) required double temperature,
    @JsonKey(name: 'wind_deg') @HiveField(4) required double? windDegree,
    @JsonKey(name: 'dt') @HiveField(5) required int? dtUnix,
  }) = _WeatherInfoModel;

  factory WeatherInfoModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherInfoModelFromJson(json);
}
