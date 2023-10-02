import '../../model/request_query.dart';
import '../entities/top_headlines.dart';
import '../repositories/top_headlines_repository.dart';
import 'base_use_case/base_use_case.dart';

class TopHeadlinesUseCase extends BaseUseCase<TopHeadlines?, RequestQuery> {
  final TopHeadlinesRepository _topHeadlinesRepository;

  const TopHeadlinesUseCase(this._topHeadlinesRepository);

  @override
  Future<TopHeadlines?> call(RequestQuery input) async{
      return await _topHeadlinesRepository.getTopHeadlines(input.country, input.category, input.query);
  }
}