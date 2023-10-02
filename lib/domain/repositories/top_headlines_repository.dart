import 'package:daily_news/domain/entities/top_headlines.dart';

abstract class TopHeadlinesRepository {
  Future<TopHeadlines?> getTopHeadlines(
    String country,
    String category,
    String query,
  );
}
