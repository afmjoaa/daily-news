// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'error_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ErrorResponse _$ErrorResponseFromJson(Map<String, dynamic> json) {
  return _ErrorResponse.fromJson(json);
}

/// @nodoc
mixin _$ErrorResponse {
  String get status => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable()
class _$_ErrorResponse implements _ErrorResponse {
  const _$_ErrorResponse(this.status, this.code, this.message);

  factory _$_ErrorResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ErrorResponseFromJson(json);

  @override
  final String status;
  @override
  final String code;
  @override
  final String message;

  @override
  Map<String, dynamic> toJson() {
    return _$$_ErrorResponseToJson(
      this,
    );
  }
}

abstract class _ErrorResponse implements ErrorResponse {
  const factory _ErrorResponse(
          final String status, final String code, final String message) =
      _$_ErrorResponse;

  factory _ErrorResponse.fromJson(Map<String, dynamic> json) =
      _$_ErrorResponse.fromJson;

  @override
  String get status;
  @override
  String get code;
  @override
  String get message;
}
