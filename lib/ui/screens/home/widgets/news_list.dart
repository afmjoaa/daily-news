import 'package:daily_news/model/detail_data_model.dart';
import 'package:flutter/cupertino.dart';

import '../../../../domain/entities/top_headlines.dart';
import '../../../../model/new_item_model.dart';
import 'news_item.dart';

class NewsList extends StatelessWidget {
  final List<Article> articles;

  const NewsList({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: const EdgeInsets.all(0),
        itemCount: articles.length,
        itemBuilder: (context, index) {
          Article currentArticle = articles[index];
          return NewsItem(
            newsItemModel: NewsItemModel(
              title: currentArticle.title ?? "",
              description: currentArticle.description ?? "",
              imageUrl: currentArticle.urlToImage ?? "",
              detailDataModel: DetailDataModel(
                title: currentArticle.title ?? "",
                author: currentArticle.author ?? "",
                publishedAt: currentArticle.publishedAt ?? "",
                description: currentArticle.description ?? "",
                imageUrl: currentArticle.urlToImage ?? "",
                content: currentArticle.content ?? "",
              ),
            ),
          );
        },
      ),
    );
  }
}
