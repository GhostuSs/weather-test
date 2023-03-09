import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'short_weather_model.freezed.dart';
part 'short_weather_model.g.dart';

@freezed
class ShortWeatherModel extends HiveObject with _$ShortWeatherModel {
  ShortWeatherModel._();

  @HiveType(typeId: 1)
  factory ShortWeatherModel({
    @JsonKey(name: 'main') @HiveField(0) required String? main,
    @JsonKey(name: 'description') @HiveField(1) required String? description,
  }) = _ShortWeatherModel;

  factory ShortWeatherModel.fromJson(Map<String, dynamic> json) =>
      _$ShortWeatherModelFromJson(json);
}
