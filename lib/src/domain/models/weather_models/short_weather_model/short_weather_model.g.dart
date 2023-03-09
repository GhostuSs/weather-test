// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'short_weather_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ShortWeatherModelAdapter extends TypeAdapter<_$_ShortWeatherModel> {
  @override
  final int typeId = 1;

  @override
  _$_ShortWeatherModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_ShortWeatherModel(
      main: fields[0] as String?,
      description: fields[1] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, _$_ShortWeatherModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.main)
      ..writeByte(1)
      ..write(obj.description);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ShortWeatherModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ShortWeatherModel _$$_ShortWeatherModelFromJson(Map<String, dynamic> json) =>
    _$_ShortWeatherModel(
      main: json['main'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$_ShortWeatherModelToJson(
        _$_ShortWeatherModel instance) =>
    <String, dynamic>{
      'main': instance.main,
      'description': instance.description,
    };
