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
        num? last_updated_epoch,
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
        num? feelslike_f,
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
        String? tz_id,
        num? localtime_epoch,
        String? localtime,
    }) = _Location;

    factory Location.fromJson(Map<String, dynamic> json) => _$LocationFromJson(json);
}
