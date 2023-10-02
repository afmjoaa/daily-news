import 'detail_data_model.dart';

class NewsItemModel {
  final String title;
  final String description;
  final String imageUrl;
  final DetailDataModel detailDataModel;

  NewsItemModel({
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.detailDataModel,
  });
}