import 'package:daily_news/model/detail_data_model.dart';
import 'package:daily_news/utility/news_texts.dart';
import 'package:flutter/material.dart';

import '../../../../domain/entities/top_headlines.dart';
import '../../../../model/new_item_model.dart';
import 'news_item.dart';

class NewsList extends StatelessWidget {
  final List<Article> articles;

  const NewsList({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    if (articles.isEmpty) {
      return Expanded(
        child: Padding(
            padding: const EdgeInsets.all(24),
            child: Text(
              NewsTexts.get()["emptyQuery"],
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.red,
                  fontSize: 16,
                  fontWeight: FontWeight.w600
              ),
            ),
        ),
      );
    }
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
