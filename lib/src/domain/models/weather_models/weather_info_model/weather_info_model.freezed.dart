// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeatherInfoModel _$WeatherInfoModelFromJson(Map<String, dynamic> json) {
  return _WeatherInfoModel.fromJson(json);
}

/// @nodoc
mixin _$WeatherInfoModel {
  @JsonKey(name: 'humidity')
  @HiveField(0)
  int? get humidity => throw _privateConstructorUsedError;

  @JsonKey(name: 'wind_speed')
  @HiveField(1)
  double? get windSpeed => throw _privateConstructorUsedError;

  @JsonKey(name: 'weather')
  @HiveField(2)
  List<Map<String, dynamic>> get weatherDesc =>
      throw _privateConstructorUsedError;

  @JsonKey(name: 'temp')
  @HiveField(3)
  double get temperature => throw _privateConstructorUsedError;

  @JsonKey(name: 'wind_deg')
  @HiveField(4)
  double? get windDegree => throw _privateConstructorUsedError;

  @JsonKey(name: 'dt')
  @HiveField(5)
  int? get dtUnix => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeatherInfoModelCopyWith<WeatherInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherInfoModelCopyWith<$Res> {
  factory $WeatherInfoModelCopyWith(
          WeatherInfoModel value, $Res Function(WeatherInfoModel) then) =
      _$WeatherInfoModelCopyWithImpl<$Res, WeatherInfoModel>;

  @useResult
  $Res call(
      {@JsonKey(name: 'humidity')
      @HiveField(0)
          int? humidity,
      @JsonKey(name: 'wind_speed')
      @HiveField(1)
          double? windSpeed,
      @JsonKey(name: 'weather')
      @HiveField(2)
          List<Map<String, dynamic>> weatherDesc,
      @JsonKey(name: 'temp')
      @HiveField(3)
          double temperature,
      @JsonKey(name: 'wind_deg')
      @HiveField(4)
          double? windDegree,
      @JsonKey(name: 'dt')
      @HiveField(5)
          int? dtUnix});
}

/// @nodoc
class _$WeatherInfoModelCopyWithImpl<$Res, $Val extends WeatherInfoModel>
    implements $WeatherInfoModelCopyWith<$Res> {
  _$WeatherInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? humidity = freezed,
    Object? windSpeed = freezed,
    Object? weatherDesc = null,
    Object? temperature = null,
    Object? windDegree = freezed,
    Object? dtUnix = freezed,
  }) {
    return _then(_value.copyWith(
      humidity: freezed == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int?,
      windSpeed: freezed == windSpeed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as double?,
      weatherDesc: null == weatherDesc
          ? _value.weatherDesc
          : weatherDesc // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
      windDegree: freezed == windDegree
          ? _value.windDegree
          : windDegree // ignore: cast_nullable_to_non_nullable
              as double?,
      dtUnix: freezed == dtUnix
          ? _value.dtUnix
          : dtUnix // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WeatherInfoModelCopyWith<$Res>
    implements $WeatherInfoModelCopyWith<$Res> {
  factory _$$_WeatherInfoModelCopyWith(
          _$_WeatherInfoModel value, $Res Function(_$_WeatherInfoModel) then) =
      __$$_WeatherInfoModelCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'humidity')
      @HiveField(0)
          int? humidity,
      @JsonKey(name: 'wind_speed')
      @HiveField(1)
          double? windSpeed,
      @JsonKey(name: 'weather')
      @HiveField(2)
          List<Map<String, dynamic>> weatherDesc,
      @JsonKey(name: 'temp')
      @HiveField(3)
          double temperature,
      @JsonKey(name: 'wind_deg')
      @HiveField(4)
          double? windDegree,
      @JsonKey(name: 'dt')
      @HiveField(5)
          int? dtUnix});
}

/// @nodoc
class __$$_WeatherInfoModelCopyWithImpl<$Res>
    extends _$WeatherInfoModelCopyWithImpl<$Res, _$_WeatherInfoModel>
    implements _$$_WeatherInfoModelCopyWith<$Res> {
  __$$_WeatherInfoModelCopyWithImpl(
      _$_WeatherInfoModel _value, $Res Function(_$_WeatherInfoModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? humidity = freezed,
    Object? windSpeed = freezed,
    Object? weatherDesc = null,
    Object? temperature = null,
    Object? windDegree = freezed,
    Object? dtUnix = freezed,
  }) {
    return _then(_$_WeatherInfoModel(
      humidity: freezed == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int?,
      windSpeed: freezed == windSpeed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as double?,
      weatherDesc: null == weatherDesc
          ? _value._weatherDesc
          : weatherDesc // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
      windDegree: freezed == windDegree
          ? _value.windDegree
          : windDegree // ignore: cast_nullable_to_non_nullable
              as double?,
      dtUnix: freezed == dtUnix
          ? _value.dtUnix
          : dtUnix // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 2)
class _$_WeatherInfoModel extends _WeatherInfoModel {
  _$_WeatherInfoModel(
      {@JsonKey(name: 'humidity')
      @HiveField(0)
          required this.humidity,
      @JsonKey(name: 'wind_speed')
      @HiveField(1)
          required this.windSpeed,
      @JsonKey(name: 'weather')
      @HiveField(2)
          required final List<Map<String, dynamic>> weatherDesc,
      @JsonKey(name: 'temp')
      @HiveField(3)
          required this.temperature,
      @JsonKey(name: 'wind_deg')
      @HiveField(4)
          required this.windDegree,
      @JsonKey(name: 'dt')
      @HiveField(5)
          required this.dtUnix})
      : _weatherDesc = weatherDesc,
        super._();

  factory _$_WeatherInfoModel.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherInfoModelFromJson(json);

  @override
  @JsonKey(name: 'humidity')
  @HiveField(0)
  final int? humidity;
  @override
  @JsonKey(name: 'wind_speed')
  @HiveField(1)
  final double? windSpeed;
  final List<Map<String, dynamic>> _weatherDesc;

  @override
  @JsonKey(name: 'weather')
  @HiveField(2)
  List<Map<String, dynamic>> get weatherDesc {
    if (_weatherDesc is EqualUnmodifiableListView) return _weatherDesc;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weatherDesc);
  }

  @override
  @JsonKey(name: 'temp')
  @HiveField(3)
  final double temperature;
  @override
  @JsonKey(name: 'wind_deg')
  @HiveField(4)
  final double? windDegree;
  @override
  @JsonKey(name: 'dt')
  @HiveField(5)
  final int? dtUnix;

  @override
  String toString() {
    return 'WeatherInfoModel(humidity: $humidity, windSpeed: $windSpeed, weatherDesc: $weatherDesc, temperature: $temperature, windDegree: $windDegree, dtUnix: $dtUnix)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherInfoModel &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity) &&
            (identical(other.windSpeed, windSpeed) ||
                other.windSpeed == windSpeed) &&
            const DeepCollectionEquality()
                .equals(other._weatherDesc, _weatherDesc) &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature) &&
            (identical(other.windDegree, windDegree) ||
                other.windDegree == windDegree) &&
            (identical(other.dtUnix, dtUnix) || other.dtUnix == dtUnix));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      humidity,
      windSpeed,
      const DeepCollectionEquality().hash(_weatherDesc),
      temperature,
      windDegree,
      dtUnix);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeatherInfoModelCopyWith<_$_WeatherInfoModel> get copyWith =>
      __$$_WeatherInfoModelCopyWithImpl<_$_WeatherInfoModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherInfoModelToJson(
      this,
    );
  }
}

abstract class _WeatherInfoModel extends WeatherInfoModel {
  factory _WeatherInfoModel(
      {@JsonKey(name: 'humidity')
      @HiveField(0)
          required final int? humidity,
      @JsonKey(name: 'wind_speed')
      @HiveField(1)
          required final double? windSpeed,
      @JsonKey(name: 'weather')
      @HiveField(2)
          required final List<Map<String, dynamic>> weatherDesc,
      @JsonKey(name: 'temp')
      @HiveField(3)
          required final double temperature,
      @JsonKey(name: 'wind_deg')
      @HiveField(4)
          required final double? windDegree,
      @JsonKey(name: 'dt')
      @HiveField(5)
          required final int? dtUnix}) = _$_WeatherInfoModel;

  _WeatherInfoModel._() : super._();

  factory _WeatherInfoModel.fromJson(Map<String, dynamic> json) =
      _$_WeatherInfoModel.fromJson;

  @override
  @JsonKey(name: 'humidity')
  @HiveField(0)
  int? get humidity;

  @override
  @JsonKey(name: 'wind_speed')
  @HiveField(1)
  double? get windSpeed;

  @override
  @JsonKey(name: 'weather')
  @HiveField(2)
  List<Map<String, dynamic>> get weatherDesc;

  @override
  @JsonKey(name: 'temp')
  @HiveField(3)
  double get temperature;

  @override
  @JsonKey(name: 'wind_deg')
  @HiveField(4)
  double? get windDegree;

  @override
  @JsonKey(name: 'dt')
  @HiveField(5)
  int? get dtUnix;

  @override
  @JsonKey(ignore: true)
  _$$_WeatherInfoModelCopyWith<_$_WeatherInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}
