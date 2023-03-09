// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeatherModel _$WeatherModelFromJson(Map<String, dynamic> json) {
  return _WeatherModel.fromJson(json);
}

/// @nodoc
mixin _$WeatherModel {
  @JsonKey(name: 'current')
  @HiveField(0)
  Map<String, dynamic> get current => throw _privateConstructorUsedError;

  @JsonKey(name: 'hourly')
  @HiveField(1)
  List<Map<String, dynamic>> get hourly => throw _privateConstructorUsedError;

  @JsonKey(name: 'lat')
  @HiveField(2)
  double get latitude => throw _privateConstructorUsedError;

  @JsonKey(name: 'lon')
  @HiveField(3)
  double get longtitude => throw _privateConstructorUsedError;

  @JsonKey(name: 'daily')
  @HiveField(4)
  List<Map<String, dynamic>> get daily => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeatherModelCopyWith<WeatherModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherModelCopyWith<$Res> {
  factory $WeatherModelCopyWith(
          WeatherModel value, $Res Function(WeatherModel) then) =
      _$WeatherModelCopyWithImpl<$Res, WeatherModel>;

  @useResult
  $Res call(
      {@JsonKey(name: 'current') @HiveField(0) Map<String, dynamic> current,
      @JsonKey(name: 'hourly') @HiveField(1) List<Map<String, dynamic>> hourly,
      @JsonKey(name: 'lat') @HiveField(2) double latitude,
      @JsonKey(name: 'lon') @HiveField(3) double longtitude,
      @JsonKey(name: 'daily') @HiveField(4) List<Map<String, dynamic>> daily});
}

/// @nodoc
class _$WeatherModelCopyWithImpl<$Res, $Val extends WeatherModel>
    implements $WeatherModelCopyWith<$Res> {
  _$WeatherModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? current = null,
    Object? hourly = null,
    Object? latitude = null,
    Object? longtitude = null,
    Object? daily = null,
  }) {
    return _then(_value.copyWith(
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      hourly: null == hourly
          ? _value.hourly
          : hourly // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longtitude: null == longtitude
          ? _value.longtitude
          : longtitude // ignore: cast_nullable_to_non_nullable
              as double,
      daily: null == daily
          ? _value.daily
          : daily // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WeatherModelCopyWith<$Res>
    implements $WeatherModelCopyWith<$Res> {
  factory _$$_WeatherModelCopyWith(
          _$_WeatherModel value, $Res Function(_$_WeatherModel) then) =
      __$$_WeatherModelCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'current') @HiveField(0) Map<String, dynamic> current,
      @JsonKey(name: 'hourly') @HiveField(1) List<Map<String, dynamic>> hourly,
      @JsonKey(name: 'lat') @HiveField(2) double latitude,
      @JsonKey(name: 'lon') @HiveField(3) double longtitude,
      @JsonKey(name: 'daily') @HiveField(4) List<Map<String, dynamic>> daily});
}

/// @nodoc
class __$$_WeatherModelCopyWithImpl<$Res>
    extends _$WeatherModelCopyWithImpl<$Res, _$_WeatherModel>
    implements _$$_WeatherModelCopyWith<$Res> {
  __$$_WeatherModelCopyWithImpl(
      _$_WeatherModel _value, $Res Function(_$_WeatherModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? current = null,
    Object? hourly = null,
    Object? latitude = null,
    Object? longtitude = null,
    Object? daily = null,
  }) {
    return _then(_$_WeatherModel(
      current: null == current
          ? _value._current
          : current // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      hourly: null == hourly
          ? _value._hourly
          : hourly // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longtitude: null == longtitude
          ? _value.longtitude
          : longtitude // ignore: cast_nullable_to_non_nullable
              as double,
      daily: null == daily
          ? _value._daily
          : daily // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 3)
class _$_WeatherModel extends _WeatherModel {
  _$_WeatherModel(
      {@JsonKey(name: 'current')
      @HiveField(0)
          required final Map<String, dynamic> current,
      @JsonKey(name: 'hourly')
      @HiveField(1)
          required final List<Map<String, dynamic>> hourly,
      @JsonKey(name: 'lat')
      @HiveField(2)
          required this.latitude,
      @JsonKey(name: 'lon')
      @HiveField(3)
          required this.longtitude,
      @JsonKey(name: 'daily')
      @HiveField(4)
          required final List<Map<String, dynamic>> daily})
      : _current = current,
        _hourly = hourly,
        _daily = daily,
        super._();

  factory _$_WeatherModel.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherModelFromJson(json);

  final Map<String, dynamic> _current;

  @override
  @JsonKey(name: 'current')
  @HiveField(0)
  Map<String, dynamic> get current {
    if (_current is EqualUnmodifiableMapView) return _current;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_current);
  }

  final List<Map<String, dynamic>> _hourly;

  @override
  @JsonKey(name: 'hourly')
  @HiveField(1)
  List<Map<String, dynamic>> get hourly {
    if (_hourly is EqualUnmodifiableListView) return _hourly;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hourly);
  }

  @override
  @JsonKey(name: 'lat')
  @HiveField(2)
  final double latitude;
  @override
  @JsonKey(name: 'lon')
  @HiveField(3)
  final double longtitude;
  final List<Map<String, dynamic>> _daily;

  @override
  @JsonKey(name: 'daily')
  @HiveField(4)
  List<Map<String, dynamic>> get daily {
    if (_daily is EqualUnmodifiableListView) return _daily;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_daily);
  }

  @override
  String toString() {
    return 'WeatherModel(current: $current, hourly: $hourly, latitude: $latitude, longtitude: $longtitude, daily: $daily)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherModel &&
            const DeepCollectionEquality().equals(other._current, _current) &&
            const DeepCollectionEquality().equals(other._hourly, _hourly) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longtitude, longtitude) ||
                other.longtitude == longtitude) &&
            const DeepCollectionEquality().equals(other._daily, _daily));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_current),
      const DeepCollectionEquality().hash(_hourly),
      latitude,
      longtitude,
      const DeepCollectionEquality().hash(_daily));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeatherModelCopyWith<_$_WeatherModel> get copyWith =>
      __$$_WeatherModelCopyWithImpl<_$_WeatherModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherModelToJson(
      this,
    );
  }
}

abstract class _WeatherModel extends WeatherModel {
  factory _WeatherModel(
      {@JsonKey(name: 'current')
      @HiveField(0)
          required final Map<String, dynamic> current,
      @JsonKey(name: 'hourly')
      @HiveField(1)
          required final List<Map<String, dynamic>> hourly,
      @JsonKey(name: 'lat')
      @HiveField(2)
          required final double latitude,
      @JsonKey(name: 'lon')
      @HiveField(3)
          required final double longtitude,
      @JsonKey(name: 'daily')
      @HiveField(4)
          required final List<Map<String, dynamic>> daily}) = _$_WeatherModel;

  _WeatherModel._() : super._();

  factory _WeatherModel.fromJson(Map<String, dynamic> json) =
      _$_WeatherModel.fromJson;

  @override
  @JsonKey(name: 'current')
  @HiveField(0)
  Map<String, dynamic> get current;

  @override
  @JsonKey(name: 'hourly')
  @HiveField(1)
  List<Map<String, dynamic>> get hourly;

  @override
  @JsonKey(name: 'lat')
  @HiveField(2)
  double get latitude;

  @override
  @JsonKey(name: 'lon')
  @HiveField(3)
  double get longtitude;

  @override
  @JsonKey(name: 'daily')
  @HiveField(4)
  List<Map<String, dynamic>> get daily;

  @override
  @JsonKey(ignore: true)
  _$$_WeatherModelCopyWith<_$_WeatherModel> get copyWith =>
      throw _privateConstructorUsedError;
}
