// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'short_weather_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShortWeatherModel _$ShortWeatherModelFromJson(Map<String, dynamic> json) {
  return _ShortWeatherModel.fromJson(json);
}

/// @nodoc
mixin _$ShortWeatherModel {
  @JsonKey(name: 'main')
  @HiveField(0)
  String? get main => throw _privateConstructorUsedError;

  @JsonKey(name: 'description')
  @HiveField(1)
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShortWeatherModelCopyWith<ShortWeatherModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShortWeatherModelCopyWith<$Res> {
  factory $ShortWeatherModelCopyWith(
          ShortWeatherModel value, $Res Function(ShortWeatherModel) then) =
      _$ShortWeatherModelCopyWithImpl<$Res, ShortWeatherModel>;

  @useResult
  $Res call(
      {@JsonKey(name: 'main') @HiveField(0) String? main,
      @JsonKey(name: 'description') @HiveField(1) String? description});
}

/// @nodoc
class _$ShortWeatherModelCopyWithImpl<$Res, $Val extends ShortWeatherModel>
    implements $ShortWeatherModelCopyWith<$Res> {
  _$ShortWeatherModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? main = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      main: freezed == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ShortWeatherModelCopyWith<$Res>
    implements $ShortWeatherModelCopyWith<$Res> {
  factory _$$_ShortWeatherModelCopyWith(_$_ShortWeatherModel value,
          $Res Function(_$_ShortWeatherModel) then) =
      __$$_ShortWeatherModelCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'main') @HiveField(0) String? main,
      @JsonKey(name: 'description') @HiveField(1) String? description});
}

/// @nodoc
class __$$_ShortWeatherModelCopyWithImpl<$Res>
    extends _$ShortWeatherModelCopyWithImpl<$Res, _$_ShortWeatherModel>
    implements _$$_ShortWeatherModelCopyWith<$Res> {
  __$$_ShortWeatherModelCopyWithImpl(
      _$_ShortWeatherModel _value, $Res Function(_$_ShortWeatherModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? main = freezed,
    Object? description = freezed,
  }) {
    return _then(_$_ShortWeatherModel(
      main: freezed == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 1)
class _$_ShortWeatherModel extends _ShortWeatherModel {
  _$_ShortWeatherModel(
      {@JsonKey(name: 'main') @HiveField(0) required this.main,
      @JsonKey(name: 'description') @HiveField(1) required this.description})
      : super._();

  factory _$_ShortWeatherModel.fromJson(Map<String, dynamic> json) =>
      _$$_ShortWeatherModelFromJson(json);

  @override
  @JsonKey(name: 'main')
  @HiveField(0)
  final String? main;
  @override
  @JsonKey(name: 'description')
  @HiveField(1)
  final String? description;

  @override
  String toString() {
    return 'ShortWeatherModel(main: $main, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShortWeatherModel &&
            (identical(other.main, main) || other.main == main) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, main, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShortWeatherModelCopyWith<_$_ShortWeatherModel> get copyWith =>
      __$$_ShortWeatherModelCopyWithImpl<_$_ShortWeatherModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShortWeatherModelToJson(
      this,
    );
  }
}

abstract class _ShortWeatherModel extends ShortWeatherModel {
  factory _ShortWeatherModel(
      {@JsonKey(name: 'main')
      @HiveField(0)
          required final String? main,
      @JsonKey(name: 'description')
      @HiveField(1)
          required final String? description}) = _$_ShortWeatherModel;

  _ShortWeatherModel._() : super._();

  factory _ShortWeatherModel.fromJson(Map<String, dynamic> json) =
      _$_ShortWeatherModel.fromJson;

  @override
  @JsonKey(name: 'main')
  @HiveField(0)
  String? get main;

  @override
  @JsonKey(name: 'description')
  @HiveField(1)
  String? get description;

  @override
  @JsonKey(ignore: true)
  _$$_ShortWeatherModelCopyWith<_$_ShortWeatherModel> get copyWith =>
      throw _privateConstructorUsedError;
}
