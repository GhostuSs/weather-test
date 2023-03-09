// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'temp_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TempModel _$TempModelFromJson(Map<String, dynamic> json) {
  return _TempModel.fromJson(json);
}

/// @nodoc
mixin _$TempModel {
  @JsonKey(name: 'day')
  @HiveField(0)
  double? get day => throw _privateConstructorUsedError;

  @JsonKey(name: 'min')
  @HiveField(1)
  double? get min => throw _privateConstructorUsedError;

  @JsonKey(name: 'max')
  @HiveField(2)
  double? get max => throw _privateConstructorUsedError;

  @JsonKey(name: 'night')
  @HiveField(3)
  double? get night => throw _privateConstructorUsedError;

  @JsonKey(name: 'morning')
  @HiveField(4)
  double? get morning => throw _privateConstructorUsedError;

  @JsonKey(name: 'eve')
  @HiveField(5)
  double? get evening => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TempModelCopyWith<TempModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TempModelCopyWith<$Res> {
  factory $TempModelCopyWith(TempModel value, $Res Function(TempModel) then) =
      _$TempModelCopyWithImpl<$Res, TempModel>;

  @useResult
  $Res call(
      {@JsonKey(name: 'day') @HiveField(0) double? day,
      @JsonKey(name: 'min') @HiveField(1) double? min,
      @JsonKey(name: 'max') @HiveField(2) double? max,
      @JsonKey(name: 'night') @HiveField(3) double? night,
      @JsonKey(name: 'morning') @HiveField(4) double? morning,
      @JsonKey(name: 'eve') @HiveField(5) double? evening});
}

/// @nodoc
class _$TempModelCopyWithImpl<$Res, $Val extends TempModel>
    implements $TempModelCopyWith<$Res> {
  _$TempModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = freezed,
    Object? min = freezed,
    Object? max = freezed,
    Object? night = freezed,
    Object? morning = freezed,
    Object? evening = freezed,
  }) {
    return _then(_value.copyWith(
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as double?,
      min: freezed == min
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as double?,
      max: freezed == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as double?,
      night: freezed == night
          ? _value.night
          : night // ignore: cast_nullable_to_non_nullable
              as double?,
      morning: freezed == morning
          ? _value.morning
          : morning // ignore: cast_nullable_to_non_nullable
              as double?,
      evening: freezed == evening
          ? _value.evening
          : evening // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TempModelCopyWith<$Res> implements $TempModelCopyWith<$Res> {
  factory _$$_TempModelCopyWith(
          _$_TempModel value, $Res Function(_$_TempModel) then) =
      __$$_TempModelCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'day') @HiveField(0) double? day,
      @JsonKey(name: 'min') @HiveField(1) double? min,
      @JsonKey(name: 'max') @HiveField(2) double? max,
      @JsonKey(name: 'night') @HiveField(3) double? night,
      @JsonKey(name: 'morning') @HiveField(4) double? morning,
      @JsonKey(name: 'eve') @HiveField(5) double? evening});
}

/// @nodoc
class __$$_TempModelCopyWithImpl<$Res>
    extends _$TempModelCopyWithImpl<$Res, _$_TempModel>
    implements _$$_TempModelCopyWith<$Res> {
  __$$_TempModelCopyWithImpl(
      _$_TempModel _value, $Res Function(_$_TempModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = freezed,
    Object? min = freezed,
    Object? max = freezed,
    Object? night = freezed,
    Object? morning = freezed,
    Object? evening = freezed,
  }) {
    return _then(_$_TempModel(
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as double?,
      min: freezed == min
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as double?,
      max: freezed == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as double?,
      night: freezed == night
          ? _value.night
          : night // ignore: cast_nullable_to_non_nullable
              as double?,
      morning: freezed == morning
          ? _value.morning
          : morning // ignore: cast_nullable_to_non_nullable
              as double?,
      evening: freezed == evening
          ? _value.evening
          : evening // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 6)
class _$_TempModel extends _TempModel {
  _$_TempModel(
      {@JsonKey(name: 'day') @HiveField(0) required this.day,
      @JsonKey(name: 'min') @HiveField(1) required this.min,
      @JsonKey(name: 'max') @HiveField(2) required this.max,
      @JsonKey(name: 'night') @HiveField(3) required this.night,
      @JsonKey(name: 'morning') @HiveField(4) required this.morning,
      @JsonKey(name: 'eve') @HiveField(5) required this.evening})
      : super._();

  factory _$_TempModel.fromJson(Map<String, dynamic> json) =>
      _$$_TempModelFromJson(json);

  @override
  @JsonKey(name: 'day')
  @HiveField(0)
  final double? day;
  @override
  @JsonKey(name: 'min')
  @HiveField(1)
  final double? min;
  @override
  @JsonKey(name: 'max')
  @HiveField(2)
  final double? max;
  @override
  @JsonKey(name: 'night')
  @HiveField(3)
  final double? night;
  @override
  @JsonKey(name: 'morning')
  @HiveField(4)
  final double? morning;
  @override
  @JsonKey(name: 'eve')
  @HiveField(5)
  final double? evening;

  @override
  String toString() {
    return 'TempModel(day: $day, min: $min, max: $max, night: $night, morning: $morning, evening: $evening)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TempModel &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.min, min) || other.min == min) &&
            (identical(other.max, max) || other.max == max) &&
            (identical(other.night, night) || other.night == night) &&
            (identical(other.morning, morning) || other.morning == morning) &&
            (identical(other.evening, evening) || other.evening == evening));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, day, min, max, night, morning, evening);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TempModelCopyWith<_$_TempModel> get copyWith =>
      __$$_TempModelCopyWithImpl<_$_TempModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TempModelToJson(
      this,
    );
  }
}

abstract class _TempModel extends TempModel {
  factory _TempModel(
      {@JsonKey(name: 'day')
      @HiveField(0)
          required final double? day,
      @JsonKey(name: 'min')
      @HiveField(1)
          required final double? min,
      @JsonKey(name: 'max')
      @HiveField(2)
          required final double? max,
      @JsonKey(name: 'night')
      @HiveField(3)
          required final double? night,
      @JsonKey(name: 'morning')
      @HiveField(4)
          required final double? morning,
      @JsonKey(name: 'eve')
      @HiveField(5)
          required final double? evening}) = _$_TempModel;

  _TempModel._() : super._();

  factory _TempModel.fromJson(Map<String, dynamic> json) =
      _$_TempModel.fromJson;

  @override
  @JsonKey(name: 'day')
  @HiveField(0)
  double? get day;

  @override
  @JsonKey(name: 'min')
  @HiveField(1)
  double? get min;

  @override
  @JsonKey(name: 'max')
  @HiveField(2)
  double? get max;

  @override
  @JsonKey(name: 'night')
  @HiveField(3)
  double? get night;

  @override
  @JsonKey(name: 'morning')
  @HiveField(4)
  double? get morning;

  @override
  @JsonKey(name: 'eve')
  @HiveField(5)
  double? get evening;

  @override
  @JsonKey(ignore: true)
  _$$_TempModelCopyWith<_$_TempModel> get copyWith =>
      throw _privateConstructorUsedError;
}
