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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WeatherModel _$WeatherModelFromJson(Map<String, dynamic> json) {
  return _WeatherModel.fromJson(json);
}

/// @nodoc
mixin _$WeatherModel {
  Location? get location => throw _privateConstructorUsedError;
  Current? get current => throw _privateConstructorUsedError;

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
  $Res call({Location? location, Current? current});

  $LocationCopyWith<$Res>? get location;
  $CurrentCopyWith<$Res>? get current;
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
    Object? location = freezed,
    Object? current = freezed,
  }) {
    return _then(_value.copyWith(
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location?,
      current: freezed == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as Current?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $LocationCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CurrentCopyWith<$Res>? get current {
    if (_value.current == null) {
      return null;
    }

    return $CurrentCopyWith<$Res>(_value.current!, (value) {
      return _then(_value.copyWith(current: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WeatherModelImplCopyWith<$Res>
    implements $WeatherModelCopyWith<$Res> {
  factory _$$WeatherModelImplCopyWith(
          _$WeatherModelImpl value, $Res Function(_$WeatherModelImpl) then) =
      __$$WeatherModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Location? location, Current? current});

  @override
  $LocationCopyWith<$Res>? get location;
  @override
  $CurrentCopyWith<$Res>? get current;
}

/// @nodoc
class __$$WeatherModelImplCopyWithImpl<$Res>
    extends _$WeatherModelCopyWithImpl<$Res, _$WeatherModelImpl>
    implements _$$WeatherModelImplCopyWith<$Res> {
  __$$WeatherModelImplCopyWithImpl(
      _$WeatherModelImpl _value, $Res Function(_$WeatherModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = freezed,
    Object? current = freezed,
  }) {
    return _then(_$WeatherModelImpl(
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location?,
      current: freezed == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as Current?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherModelImpl implements _WeatherModel {
  const _$WeatherModelImpl({this.location, this.current});

  factory _$WeatherModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherModelImplFromJson(json);

  @override
  final Location? location;
  @override
  final Current? current;

  @override
  String toString() {
    return 'WeatherModel(location: $location, current: $current)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherModelImpl &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.current, current) || other.current == current));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, location, current);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherModelImplCopyWith<_$WeatherModelImpl> get copyWith =>
      __$$WeatherModelImplCopyWithImpl<_$WeatherModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherModelImplToJson(
      this,
    );
  }
}

abstract class _WeatherModel implements WeatherModel {
  const factory _WeatherModel(
      {final Location? location, final Current? current}) = _$WeatherModelImpl;

  factory _WeatherModel.fromJson(Map<String, dynamic> json) =
      _$WeatherModelImpl.fromJson;

  @override
  Location? get location;
  @override
  Current? get current;
  @override
  @JsonKey(ignore: true)
  _$$WeatherModelImplCopyWith<_$WeatherModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Current _$CurrentFromJson(Map<String, dynamic> json) {
  return _Current.fromJson(json);
}

/// @nodoc
mixin _$Current {
  num? get last_updated_epoch => throw _privateConstructorUsedError;
  String? get last_updated => throw _privateConstructorUsedError;
  num? get temp_c => throw _privateConstructorUsedError;
  num? get temp_f => throw _privateConstructorUsedError;
  num? get is_day => throw _privateConstructorUsedError;
  Condition? get condition => throw _privateConstructorUsedError;
  num? get wind_mph => throw _privateConstructorUsedError;
  num? get wind_kph => throw _privateConstructorUsedError;
  num? get wind_degree => throw _privateConstructorUsedError;
  String? get wind_dir => throw _privateConstructorUsedError;
  num? get humidity => throw _privateConstructorUsedError;
  num? get cloud => throw _privateConstructorUsedError;
  num? get feelslike_c => throw _privateConstructorUsedError;
  num? get feelslike_f => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrentCopyWith<Current> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentCopyWith<$Res> {
  factory $CurrentCopyWith(Current value, $Res Function(Current) then) =
      _$CurrentCopyWithImpl<$Res, Current>;
  @useResult
  $Res call(
      {num? last_updated_epoch,
      String? last_updated,
      num? temp_c,
      num? temp_f,
      num? is_day,
      Condition? condition,
      num? wind_mph,
      num? wind_kph,
      num? wind_degree,
      String? wind_dir,
      num? humidity,
      num? cloud,
      num? feelslike_c,
      num? feelslike_f});

  $ConditionCopyWith<$Res>? get condition;
}

/// @nodoc
class _$CurrentCopyWithImpl<$Res, $Val extends Current>
    implements $CurrentCopyWith<$Res> {
  _$CurrentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? last_updated_epoch = freezed,
    Object? last_updated = freezed,
    Object? temp_c = freezed,
    Object? temp_f = freezed,
    Object? is_day = freezed,
    Object? condition = freezed,
    Object? wind_mph = freezed,
    Object? wind_kph = freezed,
    Object? wind_degree = freezed,
    Object? wind_dir = freezed,
    Object? humidity = freezed,
    Object? cloud = freezed,
    Object? feelslike_c = freezed,
    Object? feelslike_f = freezed,
  }) {
    return _then(_value.copyWith(
      last_updated_epoch: freezed == last_updated_epoch
          ? _value.last_updated_epoch
          : last_updated_epoch // ignore: cast_nullable_to_non_nullable
              as num?,
      last_updated: freezed == last_updated
          ? _value.last_updated
          : last_updated // ignore: cast_nullable_to_non_nullable
              as String?,
      temp_c: freezed == temp_c
          ? _value.temp_c
          : temp_c // ignore: cast_nullable_to_non_nullable
              as num?,
      temp_f: freezed == temp_f
          ? _value.temp_f
          : temp_f // ignore: cast_nullable_to_non_nullable
              as num?,
      is_day: freezed == is_day
          ? _value.is_day
          : is_day // ignore: cast_nullable_to_non_nullable
              as num?,
      condition: freezed == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as Condition?,
      wind_mph: freezed == wind_mph
          ? _value.wind_mph
          : wind_mph // ignore: cast_nullable_to_non_nullable
              as num?,
      wind_kph: freezed == wind_kph
          ? _value.wind_kph
          : wind_kph // ignore: cast_nullable_to_non_nullable
              as num?,
      wind_degree: freezed == wind_degree
          ? _value.wind_degree
          : wind_degree // ignore: cast_nullable_to_non_nullable
              as num?,
      wind_dir: freezed == wind_dir
          ? _value.wind_dir
          : wind_dir // ignore: cast_nullable_to_non_nullable
              as String?,
      humidity: freezed == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as num?,
      cloud: freezed == cloud
          ? _value.cloud
          : cloud // ignore: cast_nullable_to_non_nullable
              as num?,
      feelslike_c: freezed == feelslike_c
          ? _value.feelslike_c
          : feelslike_c // ignore: cast_nullable_to_non_nullable
              as num?,
      feelslike_f: freezed == feelslike_f
          ? _value.feelslike_f
          : feelslike_f // ignore: cast_nullable_to_non_nullable
              as num?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ConditionCopyWith<$Res>? get condition {
    if (_value.condition == null) {
      return null;
    }

    return $ConditionCopyWith<$Res>(_value.condition!, (value) {
      return _then(_value.copyWith(condition: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CurrentImplCopyWith<$Res> implements $CurrentCopyWith<$Res> {
  factory _$$CurrentImplCopyWith(
          _$CurrentImpl value, $Res Function(_$CurrentImpl) then) =
      __$$CurrentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {num? last_updated_epoch,
      String? last_updated,
      num? temp_c,
      num? temp_f,
      num? is_day,
      Condition? condition,
      num? wind_mph,
      num? wind_kph,
      num? wind_degree,
      String? wind_dir,
      num? humidity,
      num? cloud,
      num? feelslike_c,
      num? feelslike_f});

  @override
  $ConditionCopyWith<$Res>? get condition;
}

/// @nodoc
class __$$CurrentImplCopyWithImpl<$Res>
    extends _$CurrentCopyWithImpl<$Res, _$CurrentImpl>
    implements _$$CurrentImplCopyWith<$Res> {
  __$$CurrentImplCopyWithImpl(
      _$CurrentImpl _value, $Res Function(_$CurrentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? last_updated_epoch = freezed,
    Object? last_updated = freezed,
    Object? temp_c = freezed,
    Object? temp_f = freezed,
    Object? is_day = freezed,
    Object? condition = freezed,
    Object? wind_mph = freezed,
    Object? wind_kph = freezed,
    Object? wind_degree = freezed,
    Object? wind_dir = freezed,
    Object? humidity = freezed,
    Object? cloud = freezed,
    Object? feelslike_c = freezed,
    Object? feelslike_f = freezed,
  }) {
    return _then(_$CurrentImpl(
      last_updated_epoch: freezed == last_updated_epoch
          ? _value.last_updated_epoch
          : last_updated_epoch // ignore: cast_nullable_to_non_nullable
              as num?,
      last_updated: freezed == last_updated
          ? _value.last_updated
          : last_updated // ignore: cast_nullable_to_non_nullable
              as String?,
      temp_c: freezed == temp_c
          ? _value.temp_c
          : temp_c // ignore: cast_nullable_to_non_nullable
              as num?,
      temp_f: freezed == temp_f
          ? _value.temp_f
          : temp_f // ignore: cast_nullable_to_non_nullable
              as num?,
      is_day: freezed == is_day
          ? _value.is_day
          : is_day // ignore: cast_nullable_to_non_nullable
              as num?,
      condition: freezed == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as Condition?,
      wind_mph: freezed == wind_mph
          ? _value.wind_mph
          : wind_mph // ignore: cast_nullable_to_non_nullable
              as num?,
      wind_kph: freezed == wind_kph
          ? _value.wind_kph
          : wind_kph // ignore: cast_nullable_to_non_nullable
              as num?,
      wind_degree: freezed == wind_degree
          ? _value.wind_degree
          : wind_degree // ignore: cast_nullable_to_non_nullable
              as num?,
      wind_dir: freezed == wind_dir
          ? _value.wind_dir
          : wind_dir // ignore: cast_nullable_to_non_nullable
              as String?,
      humidity: freezed == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as num?,
      cloud: freezed == cloud
          ? _value.cloud
          : cloud // ignore: cast_nullable_to_non_nullable
              as num?,
      feelslike_c: freezed == feelslike_c
          ? _value.feelslike_c
          : feelslike_c // ignore: cast_nullable_to_non_nullable
              as num?,
      feelslike_f: freezed == feelslike_f
          ? _value.feelslike_f
          : feelslike_f // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CurrentImpl implements _Current {
  const _$CurrentImpl(
      {this.last_updated_epoch,
      this.last_updated,
      this.temp_c,
      this.temp_f,
      this.is_day,
      this.condition,
      this.wind_mph,
      this.wind_kph,
      this.wind_degree,
      this.wind_dir,
      this.humidity,
      this.cloud,
      this.feelslike_c,
      this.feelslike_f});

  factory _$CurrentImpl.fromJson(Map<String, dynamic> json) =>
      _$$CurrentImplFromJson(json);

  @override
  final num? last_updated_epoch;
  @override
  final String? last_updated;
  @override
  final num? temp_c;
  @override
  final num? temp_f;
  @override
  final num? is_day;
  @override
  final Condition? condition;
  @override
  final num? wind_mph;
  @override
  final num? wind_kph;
  @override
  final num? wind_degree;
  @override
  final String? wind_dir;
  @override
  final num? humidity;
  @override
  final num? cloud;
  @override
  final num? feelslike_c;
  @override
  final num? feelslike_f;

  @override
  String toString() {
    return 'Current(last_updated_epoch: $last_updated_epoch, last_updated: $last_updated, temp_c: $temp_c, temp_f: $temp_f, is_day: $is_day, condition: $condition, wind_mph: $wind_mph, wind_kph: $wind_kph, wind_degree: $wind_degree, wind_dir: $wind_dir, humidity: $humidity, cloud: $cloud, feelslike_c: $feelslike_c, feelslike_f: $feelslike_f)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentImpl &&
            (identical(other.last_updated_epoch, last_updated_epoch) ||
                other.last_updated_epoch == last_updated_epoch) &&
            (identical(other.last_updated, last_updated) ||
                other.last_updated == last_updated) &&
            (identical(other.temp_c, temp_c) || other.temp_c == temp_c) &&
            (identical(other.temp_f, temp_f) || other.temp_f == temp_f) &&
            (identical(other.is_day, is_day) || other.is_day == is_day) &&
            (identical(other.condition, condition) ||
                other.condition == condition) &&
            (identical(other.wind_mph, wind_mph) ||
                other.wind_mph == wind_mph) &&
            (identical(other.wind_kph, wind_kph) ||
                other.wind_kph == wind_kph) &&
            (identical(other.wind_degree, wind_degree) ||
                other.wind_degree == wind_degree) &&
            (identical(other.wind_dir, wind_dir) ||
                other.wind_dir == wind_dir) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity) &&
            (identical(other.cloud, cloud) || other.cloud == cloud) &&
            (identical(other.feelslike_c, feelslike_c) ||
                other.feelslike_c == feelslike_c) &&
            (identical(other.feelslike_f, feelslike_f) ||
                other.feelslike_f == feelslike_f));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      last_updated_epoch,
      last_updated,
      temp_c,
      temp_f,
      is_day,
      condition,
      wind_mph,
      wind_kph,
      wind_degree,
      wind_dir,
      humidity,
      cloud,
      feelslike_c,
      feelslike_f);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentImplCopyWith<_$CurrentImpl> get copyWith =>
      __$$CurrentImplCopyWithImpl<_$CurrentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CurrentImplToJson(
      this,
    );
  }
}

abstract class _Current implements Current {
  const factory _Current(
      {final num? last_updated_epoch,
      final String? last_updated,
      final num? temp_c,
      final num? temp_f,
      final num? is_day,
      final Condition? condition,
      final num? wind_mph,
      final num? wind_kph,
      final num? wind_degree,
      final String? wind_dir,
      final num? humidity,
      final num? cloud,
      final num? feelslike_c,
      final num? feelslike_f}) = _$CurrentImpl;

  factory _Current.fromJson(Map<String, dynamic> json) = _$CurrentImpl.fromJson;

  @override
  num? get last_updated_epoch;
  @override
  String? get last_updated;
  @override
  num? get temp_c;
  @override
  num? get temp_f;
  @override
  num? get is_day;
  @override
  Condition? get condition;
  @override
  num? get wind_mph;
  @override
  num? get wind_kph;
  @override
  num? get wind_degree;
  @override
  String? get wind_dir;
  @override
  num? get humidity;
  @override
  num? get cloud;
  @override
  num? get feelslike_c;
  @override
  num? get feelslike_f;
  @override
  @JsonKey(ignore: true)
  _$$CurrentImplCopyWith<_$CurrentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Condition _$ConditionFromJson(Map<String, dynamic> json) {
  return _Condition.fromJson(json);
}

/// @nodoc
mixin _$Condition {
  String? get text => throw _privateConstructorUsedError;
  String? get icon => throw _privateConstructorUsedError;
  num? get code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConditionCopyWith<Condition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConditionCopyWith<$Res> {
  factory $ConditionCopyWith(Condition value, $Res Function(Condition) then) =
      _$ConditionCopyWithImpl<$Res, Condition>;
  @useResult
  $Res call({String? text, String? icon, num? code});
}

/// @nodoc
class _$ConditionCopyWithImpl<$Res, $Val extends Condition>
    implements $ConditionCopyWith<$Res> {
  _$ConditionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
    Object? icon = freezed,
    Object? code = freezed,
  }) {
    return _then(_value.copyWith(
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as num?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConditionImplCopyWith<$Res>
    implements $ConditionCopyWith<$Res> {
  factory _$$ConditionImplCopyWith(
          _$ConditionImpl value, $Res Function(_$ConditionImpl) then) =
      __$$ConditionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? text, String? icon, num? code});
}

/// @nodoc
class __$$ConditionImplCopyWithImpl<$Res>
    extends _$ConditionCopyWithImpl<$Res, _$ConditionImpl>
    implements _$$ConditionImplCopyWith<$Res> {
  __$$ConditionImplCopyWithImpl(
      _$ConditionImpl _value, $Res Function(_$ConditionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
    Object? icon = freezed,
    Object? code = freezed,
  }) {
    return _then(_$ConditionImpl(
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConditionImpl implements _Condition {
  const _$ConditionImpl({this.text, this.icon, this.code});

  factory _$ConditionImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConditionImplFromJson(json);

  @override
  final String? text;
  @override
  final String? icon;
  @override
  final num? code;

  @override
  String toString() {
    return 'Condition(text: $text, icon: $icon, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConditionImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, text, icon, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConditionImplCopyWith<_$ConditionImpl> get copyWith =>
      __$$ConditionImplCopyWithImpl<_$ConditionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConditionImplToJson(
      this,
    );
  }
}

abstract class _Condition implements Condition {
  const factory _Condition(
      {final String? text,
      final String? icon,
      final num? code}) = _$ConditionImpl;

  factory _Condition.fromJson(Map<String, dynamic> json) =
      _$ConditionImpl.fromJson;

  @override
  String? get text;
  @override
  String? get icon;
  @override
  num? get code;
  @override
  @JsonKey(ignore: true)
  _$$ConditionImplCopyWith<_$ConditionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Location _$LocationFromJson(Map<String, dynamic> json) {
  return _Location.fromJson(json);
}

/// @nodoc
mixin _$Location {
  String? get name => throw _privateConstructorUsedError;
  String? get region => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  num? get lat => throw _privateConstructorUsedError;
  num? get lon => throw _privateConstructorUsedError;
  String? get tz_id => throw _privateConstructorUsedError;
  num? get localtime_epoch => throw _privateConstructorUsedError;
  String? get localtime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationCopyWith<Location> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationCopyWith<$Res> {
  factory $LocationCopyWith(Location value, $Res Function(Location) then) =
      _$LocationCopyWithImpl<$Res, Location>;
  @useResult
  $Res call(
      {String? name,
      String? region,
      String? country,
      num? lat,
      num? lon,
      String? tz_id,
      num? localtime_epoch,
      String? localtime});
}

/// @nodoc
class _$LocationCopyWithImpl<$Res, $Val extends Location>
    implements $LocationCopyWith<$Res> {
  _$LocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? region = freezed,
    Object? country = freezed,
    Object? lat = freezed,
    Object? lon = freezed,
    Object? tz_id = freezed,
    Object? localtime_epoch = freezed,
    Object? localtime = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as num?,
      lon: freezed == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as num?,
      tz_id: freezed == tz_id
          ? _value.tz_id
          : tz_id // ignore: cast_nullable_to_non_nullable
              as String?,
      localtime_epoch: freezed == localtime_epoch
          ? _value.localtime_epoch
          : localtime_epoch // ignore: cast_nullable_to_non_nullable
              as num?,
      localtime: freezed == localtime
          ? _value.localtime
          : localtime // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocationImplCopyWith<$Res>
    implements $LocationCopyWith<$Res> {
  factory _$$LocationImplCopyWith(
          _$LocationImpl value, $Res Function(_$LocationImpl) then) =
      __$$LocationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? region,
      String? country,
      num? lat,
      num? lon,
      String? tz_id,
      num? localtime_epoch,
      String? localtime});
}

/// @nodoc
class __$$LocationImplCopyWithImpl<$Res>
    extends _$LocationCopyWithImpl<$Res, _$LocationImpl>
    implements _$$LocationImplCopyWith<$Res> {
  __$$LocationImplCopyWithImpl(
      _$LocationImpl _value, $Res Function(_$LocationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? region = freezed,
    Object? country = freezed,
    Object? lat = freezed,
    Object? lon = freezed,
    Object? tz_id = freezed,
    Object? localtime_epoch = freezed,
    Object? localtime = freezed,
  }) {
    return _then(_$LocationImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as num?,
      lon: freezed == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as num?,
      tz_id: freezed == tz_id
          ? _value.tz_id
          : tz_id // ignore: cast_nullable_to_non_nullable
              as String?,
      localtime_epoch: freezed == localtime_epoch
          ? _value.localtime_epoch
          : localtime_epoch // ignore: cast_nullable_to_non_nullable
              as num?,
      localtime: freezed == localtime
          ? _value.localtime
          : localtime // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationImpl implements _Location {
  const _$LocationImpl(
      {this.name,
      this.region,
      this.country,
      this.lat,
      this.lon,
      this.tz_id,
      this.localtime_epoch,
      this.localtime});

  factory _$LocationImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationImplFromJson(json);

  @override
  final String? name;
  @override
  final String? region;
  @override
  final String? country;
  @override
  final num? lat;
  @override
  final num? lon;
  @override
  final String? tz_id;
  @override
  final num? localtime_epoch;
  @override
  final String? localtime;

  @override
  String toString() {
    return 'Location(name: $name, region: $region, country: $country, lat: $lat, lon: $lon, tz_id: $tz_id, localtime_epoch: $localtime_epoch, localtime: $localtime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lon, lon) || other.lon == lon) &&
            (identical(other.tz_id, tz_id) || other.tz_id == tz_id) &&
            (identical(other.localtime_epoch, localtime_epoch) ||
                other.localtime_epoch == localtime_epoch) &&
            (identical(other.localtime, localtime) ||
                other.localtime == localtime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, region, country, lat, lon,
      tz_id, localtime_epoch, localtime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationImplCopyWith<_$LocationImpl> get copyWith =>
      __$$LocationImplCopyWithImpl<_$LocationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationImplToJson(
      this,
    );
  }
}

abstract class _Location implements Location {
  const factory _Location(
      {final String? name,
      final String? region,
      final String? country,
      final num? lat,
      final num? lon,
      final String? tz_id,
      final num? localtime_epoch,
      final String? localtime}) = _$LocationImpl;

  factory _Location.fromJson(Map<String, dynamic> json) =
      _$LocationImpl.fromJson;

  @override
  String? get name;
  @override
  String? get region;
  @override
  String? get country;
  @override
  num? get lat;
  @override
  num? get lon;
  @override
  String? get tz_id;
  @override
  num? get localtime_epoch;
  @override
  String? get localtime;
  @override
  @JsonKey(ignore: true)
  _$$LocationImplCopyWith<_$LocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
