import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'daily_weather_model.freezed.dart';
part 'daily_weather_model.g.dart';

@freezed
class DailyWeatherModel extends HiveObject with _$DailyWeatherModel {
  DailyWeatherModel._();

  @HiveType(typeId: 4)
  factory DailyWeatherModel({
    @JsonKey(name: 'temp')
    @HiveField(0)
        required Map<String, dynamic> temperature,
    @JsonKey(name: 'sunset') @HiveField(1) required int? sunsetUnix,
    @JsonKey(name: 'sunrise') @HiveField(2) required int? sunriseUnix,
  }) = _DailyWeatherModel;

  factory DailyWeatherModel.fromJson(Map<String, dynamic> json) =>
      _$DailyWeatherModelFromJson(json);
}
