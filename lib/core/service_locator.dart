import 'package:get_it/get_it.dart';

import '../data/api_provider/sunny_api_provider.dart';
import '../data/network/current_weather_api.dart';
import '../data/repositories/data_sources/top_headlines_local_data_source.dart';
import '../data/repositories/data_sources/top_headlines_remote_data_source.dart';
import '../data/repositories/top_headlines_repository_implementation.dart';
import '../domain/repositories/top_headlines_repository.dart';

GetIt sl = GetIt.instance;

Future<void> setUpServiceLocators() async {
  await sl.reset();

  sl.registerSingleton<SunnyApiProvider>(SunnyApiProvider());
  sl.registerFactory<TopHeadlinesApi>(() => TopHeadlinesApi());
  sl.registerFactory<TopHeadlinesRemoteDataSource>(() => TopHeadlinesRemoteDataSourceImpl());
  sl.registerFactory<TopHeadlinesRepository>(() => TopHeadlinesRepositoryImpl());
  sl.registerFactory<TopHeadlinesLocalDataSource>(() => TopHeadlinesLocalDataSourceImpl());

}