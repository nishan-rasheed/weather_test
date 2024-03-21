// To parse this JSON data, do
//
//     final weatherModel = weatherModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'weather_model.freezed.dart';
part 'weather_model.g.dart';

WeatherModel weatherModelFromJson(String str) => WeatherModel.fromJson(json.decode(str));

String weatherModelToJson(WeatherModel data) => json.encode(data.toJson());

@freezed
class WeatherModel with _$WeatherModel {
    const factory WeatherModel({
        Location? location,
        Current? current,
    }) = _WeatherModel;

    factory WeatherModel.fromJson(Map<String, dynamic> json) => _$WeatherModelFromJson(json);
}

@freezed
class Current with _$Current {
    const factory Current({
        num? lastUpdatedEpoch,
        String? lastUpdated,
        num? tempC,
        num? tempF,
        num? isDay,
        Condition? condition,
        num? windMph,
        num? windKph,
        num? windDegree,
        String? windDir,
        num? pressureMb,
        num? pressureIn,
        num? precipMm,
        num? precipIn,
        num? humidity,
        num? cloud,
        num? feelslikeC,
        num? feelslikeF,
        num? visKm,
        num? visMiles,
        num? uv,
        num? gustMph,
        num? gustKph,
    }) = _Current;

    factory Current.fromJson(Map<String, dynamic> json) => _$CurrentFromJson(json);
}

@freezed
class Condition with _$Condition {
    const factory Condition({
        String? text,
        String? icon,
        num? code,
    }) = _Condition;

    factory Condition.fromJson(Map<String, dynamic> json) => _$ConditionFromJson(json);
}

@freezed
class Location with _$Location {
    const factory Location({
        String? name,
        String? region,
        String? country,
        num? lat,
        num? lon,
        String? tzId,
        num? localtimeEpoch,
        String? localtime,
    }) = _Location;

    factory Location.fromJson(Map<String, dynamic> json) => _$LocationFromJson(json);
}
