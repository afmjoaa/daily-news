// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'top_headlines_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ArticleResponseModel _$ArticleResponseModelFromJson(Map<String, dynamic> json) {
  return _ArticleResponseModel.fromJson(json);
}

/// @nodoc
mixin _$ArticleResponseModel {
  @HiveField(0)
  SourceResponseModel? get sourceResponseModel =>
      throw _privateConstructorUsedError;
  @HiveField(1)
  String? get author => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get title => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get description => throw _privateConstructorUsedError;
  @HiveField(4)
  String? get url => throw _privateConstructorUsedError;
  @HiveField(5)
  String? get urlToImage => throw _privateConstructorUsedError;
  @HiveField(6)
  String? get publishedAt => throw _privateConstructorUsedError;
  @HiveField(7)
  String? get content => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
@HiveType(
    typeId: HiveTypeIds.articlesResponseModel,
    adapterName: 'ArticleResponseModelAdapter')
class _$_ArticleResponseModel extends _ArticleResponseModel {
  const _$_ArticleResponseModel(
      @HiveField(0) this.sourceResponseModel,
      @HiveField(1) this.author,
      @HiveField(2) this.title,
      @HiveField(3) this.description,
      @HiveField(4) this.url,
      @HiveField(5) this.urlToImage,
      @HiveField(6) this.publishedAt,
      @HiveField(7) this.content)
      : super._();

  factory _$_ArticleResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_ArticleResponseModelFromJson(json);

  @override
  @HiveField(0)
  final SourceResponseModel? sourceResponseModel;
  @override
  @HiveField(1)
  final String? author;
  @override
  @HiveField(2)
  final String? title;
  @override
  @HiveField(3)
  final String? description;
  @override
  @HiveField(4)
  final String? url;
  @override
  @HiveField(5)
  final String? urlToImage;
  @override
  @HiveField(6)
  final String? publishedAt;
  @override
  @HiveField(7)
  final String? content;

  @override
  String toString() {
    return 'ArticleResponseModel(sourceResponseModel: $sourceResponseModel, author: $author, title: $title, description: $description, url: $url, urlToImage: $urlToImage, publishedAt: $publishedAt, content: $content)';
  }
}

abstract class _ArticleResponseModel extends ArticleResponseModel {
  const factory _ArticleResponseModel(
      @HiveField(0) final SourceResponseModel? sourceResponseModel,
      @HiveField(1) final String? author,
      @HiveField(2) final String? title,
      @HiveField(3) final String? description,
      @HiveField(4) final String? url,
      @HiveField(5) final String? urlToImage,
      @HiveField(6) final String? publishedAt,
      @HiveField(7) final String? content) = _$_ArticleResponseModel;
  const _ArticleResponseModel._() : super._();

  factory _ArticleResponseModel.fromJson(Map<String, dynamic> json) =
      _$_ArticleResponseModel.fromJson;

  @override
  @HiveField(0)
  SourceResponseModel? get sourceResponseModel;
  @override
  @HiveField(1)
  String? get author;
  @override
  @HiveField(2)
  String? get title;
  @override
  @HiveField(3)
  String? get description;
  @override
  @HiveField(4)
  String? get url;
  @override
  @HiveField(5)
  String? get urlToImage;
  @override
  @HiveField(6)
  String? get publishedAt;
  @override
  @HiveField(7)
  String? get content;
}

SourceResponseModel _$SourceResponseModelFromJson(Map<String, dynamic> json) {
  return _SourceResponseModel.fromJson(json);
}

/// @nodoc
mixin _$SourceResponseModel {
  @HiveField(0)
  String? get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get name => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
@HiveType(
    typeId: HiveTypeIds.sourceResponseModel,
    adapterName: 'SourceResponseModelAdapter')
class _$_SourceResponseModel extends _SourceResponseModel {
  const _$_SourceResponseModel(@HiveField(0) this.id, @HiveField(1) this.name)
      : super._();

  factory _$_SourceResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_SourceResponseModelFromJson(json);

  @override
  @HiveField(0)
  final String? id;
  @override
  @HiveField(1)
  final String? name;

  @override
  String toString() {
    return 'SourceResponseModel(id: $id, name: $name)';
  }
}

abstract class _SourceResponseModel extends SourceResponseModel {
  const factory _SourceResponseModel(
          @HiveField(0) final String? id, @HiveField(1) final String? name) =
      _$_SourceResponseModel;
  const _SourceResponseModel._() : super._();

  factory _SourceResponseModel.fromJson(Map<String, dynamic> json) =
      _$_SourceResponseModel.fromJson;

  @override
  @HiveField(0)
  String? get id;
  @override
  @HiveField(1)
  String? get name;
}
