// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'daily_weather_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DailyWeatherModel _$DailyWeatherModelFromJson(Map<String, dynamic> json) {
  return _DailyWeatherModel.fromJson(json);
}

/// @nodoc
mixin _$DailyWeatherModel {
  @JsonKey(name: 'temp')
  @HiveField(0)
  Map<String, dynamic> get temperature => throw _privateConstructorUsedError;

  @JsonKey(name: 'sunset')
  @HiveField(1)
  int? get sunsetUnix => throw _privateConstructorUsedError;

  @JsonKey(name: 'sunrise')
  @HiveField(2)
  int? get sunriseUnix => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DailyWeatherModelCopyWith<DailyWeatherModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyWeatherModelCopyWith<$Res> {
  factory $DailyWeatherModelCopyWith(
          DailyWeatherModel value, $Res Function(DailyWeatherModel) then) =
      _$DailyWeatherModelCopyWithImpl<$Res, DailyWeatherModel>;

  @useResult
  $Res call(
      {@JsonKey(name: 'temp') @HiveField(0) Map<String, dynamic> temperature,
      @JsonKey(name: 'sunset') @HiveField(1) int? sunsetUnix,
      @JsonKey(name: 'sunrise') @HiveField(2) int? sunriseUnix});
}

/// @nodoc
class _$DailyWeatherModelCopyWithImpl<$Res, $Val extends DailyWeatherModel>
    implements $DailyWeatherModelCopyWith<$Res> {
  _$DailyWeatherModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temperature = null,
    Object? sunsetUnix = freezed,
    Object? sunriseUnix = freezed,
  }) {
    return _then(_value.copyWith(
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      sunsetUnix: freezed == sunsetUnix
          ? _value.sunsetUnix
          : sunsetUnix // ignore: cast_nullable_to_non_nullable
              as int?,
      sunriseUnix: freezed == sunriseUnix
          ? _value.sunriseUnix
          : sunriseUnix // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DailyWeatherModelCopyWith<$Res>
    implements $DailyWeatherModelCopyWith<$Res> {
  factory _$$_DailyWeatherModelCopyWith(_$_DailyWeatherModel value,
          $Res Function(_$_DailyWeatherModel) then) =
      __$$_DailyWeatherModelCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'temp') @HiveField(0) Map<String, dynamic> temperature,
      @JsonKey(name: 'sunset') @HiveField(1) int? sunsetUnix,
      @JsonKey(name: 'sunrise') @HiveField(2) int? sunriseUnix});
}

/// @nodoc
class __$$_DailyWeatherModelCopyWithImpl<$Res>
    extends _$DailyWeatherModelCopyWithImpl<$Res, _$_DailyWeatherModel>
    implements _$$_DailyWeatherModelCopyWith<$Res> {
  __$$_DailyWeatherModelCopyWithImpl(
      _$_DailyWeatherModel _value, $Res Function(_$_DailyWeatherModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temperature = null,
    Object? sunsetUnix = freezed,
    Object? sunriseUnix = freezed,
  }) {
    return _then(_$_DailyWeatherModel(
      temperature: null == temperature
          ? _value._temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      sunsetUnix: freezed == sunsetUnix
          ? _value.sunsetUnix
          : sunsetUnix // ignore: cast_nullable_to_non_nullable
              as int?,
      sunriseUnix: freezed == sunriseUnix
          ? _value.sunriseUnix
          : sunriseUnix // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 4)
class _$_DailyWeatherModel extends _DailyWeatherModel {
  _$_DailyWeatherModel(
      {@JsonKey(name: 'temp')
      @HiveField(0)
          required final Map<String, dynamic> temperature,
      @JsonKey(name: 'sunset')
      @HiveField(1)
          required this.sunsetUnix,
      @JsonKey(name: 'sunrise')
      @HiveField(2)
          required this.sunriseUnix})
      : _temperature = temperature,
        super._();

  factory _$_DailyWeatherModel.fromJson(Map<String, dynamic> json) =>
      _$$_DailyWeatherModelFromJson(json);

  final Map<String, dynamic> _temperature;

  @override
  @JsonKey(name: 'temp')
  @HiveField(0)
  Map<String, dynamic> get temperature {
    if (_temperature is EqualUnmodifiableMapView) return _temperature;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_temperature);
  }

  @override
  @JsonKey(name: 'sunset')
  @HiveField(1)
  final int? sunsetUnix;
  @override
  @JsonKey(name: 'sunrise')
  @HiveField(2)
  final int? sunriseUnix;

  @override
  String toString() {
    return 'DailyWeatherModel(temperature: $temperature, sunsetUnix: $sunsetUnix, sunriseUnix: $sunriseUnix)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DailyWeatherModel &&
            const DeepCollectionEquality()
                .equals(other._temperature, _temperature) &&
            (identical(other.sunsetUnix, sunsetUnix) ||
                other.sunsetUnix == sunsetUnix) &&
            (identical(other.sunriseUnix, sunriseUnix) ||
                other.sunriseUnix == sunriseUnix));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_temperature),
      sunsetUnix,
      sunriseUnix);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DailyWeatherModelCopyWith<_$_DailyWeatherModel> get copyWith =>
      __$$_DailyWeatherModelCopyWithImpl<_$_DailyWeatherModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DailyWeatherModelToJson(
      this,
    );
  }
}

abstract class _DailyWeatherModel extends DailyWeatherModel {
  factory _DailyWeatherModel(
      {@JsonKey(name: 'temp')
      @HiveField(0)
          required final Map<String, dynamic> temperature,
      @JsonKey(name: 'sunset')
      @HiveField(1)
          required final int? sunsetUnix,
      @JsonKey(name: 'sunrise')
      @HiveField(2)
          required final int? sunriseUnix}) = _$_DailyWeatherModel;

  _DailyWeatherModel._() : super._();

  factory _DailyWeatherModel.fromJson(Map<String, dynamic> json) =
      _$_DailyWeatherModel.fromJson;

  @override
  @JsonKey(name: 'temp')
  @HiveField(0)
  Map<String, dynamic> get temperature;

  @override
  @JsonKey(name: 'sunset')
  @HiveField(1)
  int? get sunsetUnix;

  @override
  @JsonKey(name: 'sunrise')
  @HiveField(2)
  int? get sunriseUnix;

  @override
  @JsonKey(ignore: true)
  _$$_DailyWeatherModelCopyWith<_$_DailyWeatherModel> get copyWith =>
      throw _privateConstructorUsedError;
}
