
import 'package:bloc/bloc.dart';
import 'package:daily_news/model/request_query.dart';

import '../../../../core/service_locator.dart';
import '../../../../domain/repositories/top_headlines_repository.dart';
import '../../../../domain/use_cases/top_headlines_use_case.dart';
import '../../../../utility/log.dart';
import '../../../../utility/news_texts.dart';
import '../../../../utility/utility.dart';
import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(const HomeInitialState());

  RequestQuery lastRequestQuery = RequestQuery("us", "business", "");

  Future<void> getTopHeadlines({RequestQuery? requestQuery}) async {
    Utility.startLoadingAnimation();

    if (requestQuery != null){
      lastRequestQuery = requestQuery;
    }

    var topHeadlines = await TopHeadlinesUseCase(sl.get<TopHeadlinesRepository>())
        .call(lastRequestQuery);

    if (topHeadlines == null) {
      emit(DataUnavailableState(NewsTexts.get()["noLocalData"]));
    } else {
      emit(DataAvailableState(topHeadlines));
    }
    Log.info('Top Headlines are: $topHeadlines');
  }
}
