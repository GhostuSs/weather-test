// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_weather_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DailyWeatherModelAdapter extends TypeAdapter<_$_DailyWeatherModel> {
  @override
  final int typeId = 4;

  @override
  _$_DailyWeatherModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_DailyWeatherModel(
      temperature: (fields[0] as Map).cast<String, dynamic>(),
      sunsetUnix: fields[1] as int?,
      sunriseUnix: fields[2] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, _$_DailyWeatherModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(1)
      ..write(obj.sunsetUnix)
      ..writeByte(2)
      ..write(obj.sunriseUnix)
      ..writeByte(0)
      ..write(obj.temperature);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DailyWeatherModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DailyWeatherModel _$$_DailyWeatherModelFromJson(Map<String, dynamic> json) =>
    _$_DailyWeatherModel(
      temperature: json['temp'] as Map<String, dynamic>,
      sunsetUnix: json['sunset'] as int?,
      sunriseUnix: json['sunrise'] as int?,
    );

Map<String, dynamic> _$$_DailyWeatherModelToJson(
        _$_DailyWeatherModel instance) =>
    <String, dynamic>{
      'temp': instance.temperature,
      'sunset': instance.sunsetUnix,
      'sunrise': instance.sunriseUnix,
    };
