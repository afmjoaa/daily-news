// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_headlines_response.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TopHeadlinesResponseAdapter extends TypeAdapter<TopHeadlinesResponse> {
  @override
  final int typeId = 0;

  @override
  TopHeadlinesResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TopHeadlinesResponse(
      fields[0] as String,
      fields[1] as int,
      (fields[2] as List).cast<ArticleResponseModel>(),
    );
  }

  @override
  void write(BinaryWriter writer, TopHeadlinesResponse obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.status)
      ..writeByte(1)
      ..write(obj.totalResults)
      ..writeByte(2)
      ..write(obj.articles);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TopHeadlinesResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ArticleResponseModelAdapter extends TypeAdapter<_$_ArticleResponseModel> {
  @override
  final int typeId = 1;

  @override
  _$_ArticleResponseModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_ArticleResponseModel(
      fields[0] as SourceResponseModel?,
      fields[1] as String?,
      fields[2] as String?,
      fields[3] as String?,
      fields[4] as String?,
      fields[5] as String?,
      fields[6] as String?,
      fields[7] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, _$_ArticleResponseModel obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.sourceResponseModel)
      ..writeByte(1)
      ..write(obj.author)
      ..writeByte(2)
      ..write(obj.title)
      ..writeByte(3)
      ..write(obj.description)
      ..writeByte(4)
      ..write(obj.url)
      ..writeByte(5)
      ..write(obj.urlToImage)
      ..writeByte(6)
      ..write(obj.publishedAt)
      ..writeByte(7)
      ..write(obj.content);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ArticleResponseModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class SourceResponseModelAdapter extends TypeAdapter<_$_SourceResponseModel> {
  @override
  final int typeId = 2;

  @override
  _$_SourceResponseModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_SourceResponseModel(
      fields[0] as String?,
      fields[1] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, _$_SourceResponseModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SourceResponseModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TopHeadlinesResponse _$TopHeadlinesResponseFromJson(
        Map<String, dynamic> json) =>
    TopHeadlinesResponse(
      json['status'] as String,
      json['totalResults'] as int,
      (json['articles'] as List<dynamic>)
          .map((e) => ArticleResponseModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

_$_ArticleResponseModel _$$_ArticleResponseModelFromJson(
        Map<String, dynamic> json) =>
    _$_ArticleResponseModel(
      json['sourceResponseModel'] == null
          ? null
          : SourceResponseModel.fromJson(
              json['sourceResponseModel'] as Map<String, dynamic>),
      json['author'] as String?,
      json['title'] as String?,
      json['description'] as String?,
      json['url'] as String?,
      json['urlToImage'] as String?,
      json['publishedAt'] as String?,
      json['content'] as String?,
    );

_$_SourceResponseModel _$$_SourceResponseModelFromJson(
        Map<String, dynamic> json) =>
    _$_SourceResponseModel(
      json['id'] as String?,
      json['name'] as String?,
    );
