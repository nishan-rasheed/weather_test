// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeatherModelImpl _$$WeatherModelImplFromJson(Map<String, dynamic> json) =>
    _$WeatherModelImpl(
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
      current: json['current'] == null
          ? null
          : Current.fromJson(json['current'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$WeatherModelImplToJson(_$WeatherModelImpl instance) =>
    <String, dynamic>{
      'location': instance.location,
      'current': instance.current,
    };

_$CurrentImpl _$$CurrentImplFromJson(Map<String, dynamic> json) =>
    _$CurrentImpl(
      last_updated_epoch: json['last_updated_epoch'] as num?,
      last_updated: json['last_updated'] as String?,
      temp_c: json['temp_c'] as num?,
      temp_f: json['temp_f'] as num?,
      is_day: json['is_day'] as num?,
      condition: json['condition'] == null
          ? null
          : Condition.fromJson(json['condition'] as Map<String, dynamic>),
      wind_mph: json['wind_mph'] as num?,
      wind_kph: json['wind_kph'] as num?,
      wind_degree: json['wind_degree'] as num?,
      wind_dir: json['wind_dir'] as String?,
      humidity: json['humidity'] as num?,
      cloud: json['cloud'] as num?,
      feelslike_c: json['feelslike_c'] as num?,
      feelslike_f: json['feelslike_f'] as num?,
    );

Map<String, dynamic> _$$CurrentImplToJson(_$CurrentImpl instance) =>
    <String, dynamic>{
      'last_updated_epoch': instance.last_updated_epoch,
      'last_updated': instance.last_updated,
      'temp_c': instance.temp_c,
      'temp_f': instance.temp_f,
      'is_day': instance.is_day,
      'condition': instance.condition,
      'wind_mph': instance.wind_mph,
      'wind_kph': instance.wind_kph,
      'wind_degree': instance.wind_degree,
      'wind_dir': instance.wind_dir,
      'humidity': instance.humidity,
      'cloud': instance.cloud,
      'feelslike_c': instance.feelslike_c,
      'feelslike_f': instance.feelslike_f,
    };

_$ConditionImpl _$$ConditionImplFromJson(Map<String, dynamic> json) =>
    _$ConditionImpl(
      text: json['text'] as String?,
      icon: json['icon'] as String?,
      code: json['code'] as num?,
    );

Map<String, dynamic> _$$ConditionImplToJson(_$ConditionImpl instance) =>
    <String, dynamic>{
      'text': instance.text,
      'icon': instance.icon,
      'code': instance.code,
    };

_$LocationImpl _$$LocationImplFromJson(Map<String, dynamic> json) =>
    _$LocationImpl(
      name: json['name'] as String?,
      region: json['region'] as String?,
      country: json['country'] as String?,
      lat: json['lat'] as num?,
      lon: json['lon'] as num?,
      tz_id: json['tz_id'] as String?,
      localtime_epoch: json['localtime_epoch'] as num?,
      localtime: json['localtime'] as String?,
    );

Map<String, dynamic> _$$LocationImplToJson(_$LocationImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'region': instance.region,
      'country': instance.country,
      'lat': instance.lat,
      'lon': instance.lon,
      'tz_id': instance.tz_id,
      'localtime_epoch': instance.localtime_epoch,
      'localtime': instance.localtime,
    };
