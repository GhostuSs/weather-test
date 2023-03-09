// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_info_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class WeatherInfoModelAdapter extends TypeAdapter<_$_WeatherInfoModel> {
  @override
  final int typeId = 2;

  @override
  _$_WeatherInfoModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_WeatherInfoModel(
      humidity: fields[0] as int?,
      windSpeed: fields[1] as double?,
      weatherDesc: (fields[2] as List)
          .map((dynamic e) => (e as Map).cast<String, dynamic>())
          .toList(),
      temperature: fields[3] as double,
      windDegree: fields[4] as double?,
      dtUnix: fields[5] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, _$_WeatherInfoModel obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.humidity)
      ..writeByte(1)
      ..write(obj.windSpeed)
      ..writeByte(3)
      ..write(obj.temperature)
      ..writeByte(4)
      ..write(obj.windDegree)
      ..writeByte(5)
      ..write(obj.dtUnix)
      ..writeByte(2)
      ..write(obj.weatherDesc);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WeatherInfoModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WeatherInfoModel _$$_WeatherInfoModelFromJson(Map<String, dynamic> json) =>
    _$_WeatherInfoModel(
      humidity: json['humidity'] as int?,
      windSpeed: (json['wind_speed'] as num?)?.toDouble(),
      weatherDesc: (json['weather'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
      temperature: (json['temp'] as num).toDouble(),
      windDegree: (json['wind_deg'] as num?)?.toDouble(),
      dtUnix: json['dt'] as int?,
    );

Map<String, dynamic> _$$_WeatherInfoModelToJson(_$_WeatherInfoModel instance) =>
    <String, dynamic>{
      'humidity': instance.humidity,
      'wind_speed': instance.windSpeed,
      'weather': instance.weatherDesc,
      'temp': instance.temperature,
      'wind_deg': instance.windDegree,
      'dt': instance.dtUnix,
    };
