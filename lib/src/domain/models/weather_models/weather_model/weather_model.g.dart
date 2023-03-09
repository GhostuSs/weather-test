// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class WeatherModelAdapter extends TypeAdapter<_$_WeatherModel> {
  @override
  final int typeId = 3;

  @override
  _$_WeatherModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_WeatherModel(
      current: (fields[0] as Map).cast<String, dynamic>(),
      hourly: (fields[1] as List)
          .map((dynamic e) => (e as Map).cast<String, dynamic>())
          .toList(),
      latitude: fields[2] as double,
      longtitude: fields[3] as double,
      daily: (fields[4] as List)
          .map((dynamic e) => (e as Map).cast<String, dynamic>())
          .toList(),
    );
  }

  @override
  void write(BinaryWriter writer, _$_WeatherModel obj) {
    writer
      ..writeByte(5)
      ..writeByte(2)
      ..write(obj.latitude)
      ..writeByte(3)
      ..write(obj.longtitude)
      ..writeByte(0)
      ..write(obj.current)
      ..writeByte(1)
      ..write(obj.hourly)
      ..writeByte(4)
      ..write(obj.daily);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WeatherModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WeatherModel _$$_WeatherModelFromJson(Map<String, dynamic> json) =>
    _$_WeatherModel(
      current: json['current'] as Map<String, dynamic>,
      hourly: (json['hourly'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
      latitude: (json['lat'] as num).toDouble(),
      longtitude: (json['lon'] as num).toDouble(),
      daily: (json['daily'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
    );

Map<String, dynamic> _$$_WeatherModelToJson(_$_WeatherModel instance) =>
    <String, dynamic>{
      'current': instance.current,
      'hourly': instance.hourly,
      'lat': instance.latitude,
      'lon': instance.longtitude,
      'daily': instance.daily,
    };
