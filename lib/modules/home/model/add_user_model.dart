// To parse this JSON data, do
//
//     final addUserModel = addUserModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'add_user_model.freezed.dart';
part 'add_user_model.g.dart';

List<AddUserModel> addUserModelFromJson(String str) => List<AddUserModel>.from(json.decode(str).map((x) => AddUserModel.fromJson(x)));

String addUserModelToJson(List<AddUserModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class AddUserModel with _$AddUserModel {
    const factory AddUserModel({
        String? firstName,
        String? lastName,
        String? email,
    }) = _AddUserModel;

    factory AddUserModel.fromJson(Map<String, dynamic> json) => _$AddUserModelFromJson(json);
}
