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
      lastUpdatedEpoch: json['lastUpdatedEpoch'] as num?,
      lastUpdated: json['lastUpdated'] as String?,
      tempC: json['tempC'] as num?,
      tempF: json['tempF'] as num?,
      isDay: json['isDay'] as num?,
      condition: json['condition'] == null
          ? null
          : Condition.fromJson(json['condition'] as Map<String, dynamic>),
      windMph: json['windMph'] as num?,
      windKph: json['windKph'] as num?,
      windDegree: json['windDegree'] as num?,
      windDir: json['windDir'] as String?,
      pressureMb: json['pressureMb'] as num?,
      pressureIn: json['pressureIn'] as num?,
      precipMm: json['precipMm'] as num?,
      precipIn: json['precipIn'] as num?,
      humidity: json['humidity'] as num?,
      cloud: json['cloud'] as num?,
      feelslikeC: json['feelslikeC'] as num?,
      feelslikeF: json['feelslikeF'] as num?,
      visKm: json['visKm'] as num?,
      visMiles: json['visMiles'] as num?,
      uv: json['uv'] as num?,
      gustMph: json['gustMph'] as num?,
      gustKph: json['gustKph'] as num?,
    );

Map<String, dynamic> _$$CurrentImplToJson(_$CurrentImpl instance) =>
    <String, dynamic>{
      'lastUpdatedEpoch': instance.lastUpdatedEpoch,
      'lastUpdated': instance.lastUpdated,
      'tempC': instance.tempC,
      'tempF': instance.tempF,
      'isDay': instance.isDay,
      'condition': instance.condition,
      'windMph': instance.windMph,
      'windKph': instance.windKph,
      'windDegree': instance.windDegree,
      'windDir': instance.windDir,
      'pressureMb': instance.pressureMb,
      'pressureIn': instance.pressureIn,
      'precipMm': instance.precipMm,
      'precipIn': instance.precipIn,
      'humidity': instance.humidity,
      'cloud': instance.cloud,
      'feelslikeC': instance.feelslikeC,
      'feelslikeF': instance.feelslikeF,
      'visKm': instance.visKm,
      'visMiles': instance.visMiles,
      'uv': instance.uv,
      'gustMph': instance.gustMph,
      'gustKph': instance.gustKph,
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
      tzId: json['tzId'] as String?,
      localtimeEpoch: json['localtimeEpoch'] as num?,
      localtime: json['localtime'] as String?,
    );

Map<String, dynamic> _$$LocationImplToJson(_$LocationImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'region': instance.region,
      'country': instance.country,
      'lat': instance.lat,
      'lon': instance.lon,
      'tzId': instance.tzId,
      'localtimeEpoch': instance.localtimeEpoch,
      'localtime': instance.localtime,
    };
