// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'top_headlines_query_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TopHeadlinesQueryParams _$TopHeadlinesQueryParamsFromJson(
    Map<String, dynamic> json) {
  return _TopHeadlinesQueryParams.fromJson(json);
}

/// @nodoc
mixin _$TopHeadlinesQueryParams {
  String get apiKey => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  String get q => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable()
class _$_TopHeadlinesQueryParams implements _TopHeadlinesQueryParams {
  const _$_TopHeadlinesQueryParams(
      this.apiKey, this.country, this.category, this.q);

  factory _$_TopHeadlinesQueryParams.fromJson(Map<String, dynamic> json) =>
      _$$_TopHeadlinesQueryParamsFromJson(json);

  @override
  final String apiKey;
  @override
  final String country;
  @override
  final String category;
  @override
  final String q;

  @override
  Map<String, dynamic> toJson() {
    return _$$_TopHeadlinesQueryParamsToJson(
      this,
    );
  }
}

abstract class _TopHeadlinesQueryParams implements TopHeadlinesQueryParams {
  const factory _TopHeadlinesQueryParams(
      final String apiKey,
      final String country,
      final String category,
      final String q) = _$_TopHeadlinesQueryParams;

  factory _TopHeadlinesQueryParams.fromJson(Map<String, dynamic> json) =
      _$_TopHeadlinesQueryParams.fromJson;

  @override
  String get apiKey;
  @override
  String get country;
  @override
  String get category;
  @override
  String get q;
}
