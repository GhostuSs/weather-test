import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'temp_model.freezed.dart';
part 'temp_model.g.dart';

@freezed
class TempModel extends HiveObject with _$TempModel {
  TempModel._();

  @HiveType(typeId: 6)
  factory TempModel({
    @JsonKey(name: 'day') @HiveField(0) required double? day,
    @JsonKey(name: 'min') @HiveField(1) required double? min,
    @JsonKey(name: 'max') @HiveField(2) required double? max,
    @JsonKey(name: 'night') @HiveField(3) required double? night,
    @JsonKey(name: 'morning') @HiveField(4) required double? morning,
    @JsonKey(name: 'eve') @HiveField(5) required double? evening,
  }) = _TempModel;

  factory TempModel.fromJson(Map<String, dynamic> json) =>
      _$TempModelFromJson(json);
}
