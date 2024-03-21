// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddUserModel _$AddUserModelFromJson(Map<String, dynamic> json) {
  return _AddUserModel.fromJson(json);
}

/// @nodoc
mixin _$AddUserModel {
  String? get firstName => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddUserModelCopyWith<AddUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddUserModelCopyWith<$Res> {
  factory $AddUserModelCopyWith(
          AddUserModel value, $Res Function(AddUserModel) then) =
      _$AddUserModelCopyWithImpl<$Res, AddUserModel>;
  @useResult
  $Res call({String? firstName, String? lastName, String? email});
}

/// @nodoc
class _$AddUserModelCopyWithImpl<$Res, $Val extends AddUserModel>
    implements $AddUserModelCopyWith<$Res> {
  _$AddUserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddUserModelImplCopyWith<$Res>
    implements $AddUserModelCopyWith<$Res> {
  factory _$$AddUserModelImplCopyWith(
          _$AddUserModelImpl value, $Res Function(_$AddUserModelImpl) then) =
      __$$AddUserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? firstName, String? lastName, String? email});
}

/// @nodoc
class __$$AddUserModelImplCopyWithImpl<$Res>
    extends _$AddUserModelCopyWithImpl<$Res, _$AddUserModelImpl>
    implements _$$AddUserModelImplCopyWith<$Res> {
  __$$AddUserModelImplCopyWithImpl(
      _$AddUserModelImpl _value, $Res Function(_$AddUserModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
  }) {
    return _then(_$AddUserModelImpl(
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddUserModelImpl implements _AddUserModel {
  const _$AddUserModelImpl({this.firstName, this.lastName, this.email});

  factory _$AddUserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddUserModelImplFromJson(json);

  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? email;

  @override
  String toString() {
    return 'AddUserModel(firstName: $firstName, lastName: $lastName, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddUserModelImpl &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, firstName, lastName, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddUserModelImplCopyWith<_$AddUserModelImpl> get copyWith =>
      __$$AddUserModelImplCopyWithImpl<_$AddUserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddUserModelImplToJson(
      this,
    );
  }
}

abstract class _AddUserModel implements AddUserModel {
  const factory _AddUserModel(
      {final String? firstName,
      final String? lastName,
      final String? email}) = _$AddUserModelImpl;

  factory _AddUserModel.fromJson(Map<String, dynamic> json) =
      _$AddUserModelImpl.fromJson;

  @override
  String? get firstName;
  @override
  String? get lastName;
  @override
  String? get email;
  @override
  @JsonKey(ignore: true)
  _$$AddUserModelImplCopyWith<_$AddUserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
