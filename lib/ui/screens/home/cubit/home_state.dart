import 'package:daily_news/domain/entities/top_headlines.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@Freezed(
    copyWith: false,
    equal: false,
    map: FreezedMapOptions(map: false, mapOrNull: false, maybeMap: false),
    when: FreezedWhenOptions(when: true, whenOrNull: false, maybeWhen: true)
)
abstract class HomeState with _$HomeState{
  const factory HomeState.homeInitialState() = HomeInitialState;
  const factory HomeState.dataAvailableState(TopHeadlines topHeadlines) = DataAvailableState;
  const factory HomeState.dataUnavailableState(String reason) = DataUnavailableState;
}
