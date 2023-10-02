import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:daily_news/data/storage/hive_type_ids.dart';
import 'package:daily_news/domain/entities/top_headlines.dart';

import 'base_model/base_model.dart';

part 'top_headlines_response.freezed.dart';
part 'top_headlines_response.g.dart';

@JsonSerializable(createToJson: false)
@HiveType(
    typeId: HiveTypeIds.topHeadlinesResponse,
    adapterName: 'TopHeadlinesResponseAdapter')
class TopHeadlinesResponse extends BaseModel<TopHeadlinesResponse> {
  @HiveField(0)
  final String status;
  @HiveField(1)
  final int totalResults;
  @HiveField(2)
  final List<ArticleResponseModel> articles;

  TopHeadlinesResponse(
    this.status,
    this.totalResults,
    this.articles,
  );

  factory TopHeadlinesResponse.fromJson(Map<String, dynamic> json) =>
      _$TopHeadlinesResponseFromJson(json);

  @override
  Map<String, dynamic> toJson() => {};

  TopHeadlines toEntity() => TopHeadlines(
        status: status,
        totalResults: totalResults,
        articles: articles.map((e) => e.toEntity()).toList(),
      );
}

@Freezed(copyWith: false, equal: false, toJson: false)
class ArticleResponseModel with _$ArticleResponseModel {
  const ArticleResponseModel._();

  @HiveType(
      typeId: HiveTypeIds.articlesResponseModel,
      adapterName: 'ArticleResponseModelAdapter')
  const factory ArticleResponseModel(
    @HiveField(0) SourceResponseModel sourceResponseModel,
    @HiveField(1) String author,
    @HiveField(2) String title,
    @HiveField(3) String description,
    @HiveField(4) String url,
    @HiveField(5) String urlToImage,
    @HiveField(6) String publishedAt,
    @HiveField(7) String content,
  ) = _ArticleResponseModel;

  factory ArticleResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ArticleResponseModelFromJson(json);

  Article toEntity() => Article(
        source: sourceResponseModel.toEntity(),
        author: author,
        title: title,
        description: description,
        url: url,
        urlToImage: urlToImage,
        publishedAt: publishedAt,
        content: content,
      );
}

@Freezed(copyWith: false, equal: false, toJson: false)
class SourceResponseModel with _$SourceResponseModel {
  const SourceResponseModel._();

  @HiveType(
      typeId: HiveTypeIds.sourceResponseModel,
      adapterName: 'SourceResponseModelAdapter')
  const factory SourceResponseModel(
    @HiveField(0) String id,
    @HiveField(1) String name,
  ) = _SourceResponseModel;

  factory SourceResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SourceResponseModelFromJson(json);

  Source toEntity() => Source(id: id, name: name);
}
