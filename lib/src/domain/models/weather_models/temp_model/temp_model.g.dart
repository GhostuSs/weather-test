// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'temp_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TempModelAdapter extends TypeAdapter<_$_TempModel> {
  @override
  final int typeId = 6;

  @override
  _$_TempModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_TempModel(
      day: fields[0] as double?,
      min: fields[1] as double?,
      max: fields[2] as double?,
      night: fields[3] as double?,
      morning: fields[4] as double?,
      evening: fields[5] as double?,
    );
  }

  @override
  void write(BinaryWriter writer, _$_TempModel obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.day)
      ..writeByte(1)
      ..write(obj.min)
      ..writeByte(2)
      ..write(obj.max)
      ..writeByte(3)
      ..write(obj.night)
      ..writeByte(4)
      ..write(obj.morning)
      ..writeByte(5)
      ..write(obj.evening);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TempModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TempModel _$$_TempModelFromJson(Map<String, dynamic> json) => _$_TempModel(
      day: (json['day'] as num?)?.toDouble(),
      min: (json['min'] as num?)?.toDouble(),
      max: (json['max'] as num?)?.toDouble(),
      night: (json['night'] as num?)?.toDouble(),
      morning: (json['morning'] as num?)?.toDouble(),
      evening: (json['eve'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_TempModelToJson(_$_TempModel instance) =>
    <String, dynamic>{
      'day': instance.day,
      'min': instance.min,
      'max': instance.max,
      'night': instance.night,
      'morning': instance.morning,
      'eve': instance.evening,
    };
