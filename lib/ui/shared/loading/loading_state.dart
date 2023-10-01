import 'package:freezed_annotation/freezed_annotation.dart';

part 'loading_state.freezed.dart';

@Freezed(
  copyWith: false,
  equal: false,
  map: FreezedMapOptions(map: false, mapOrNull: false, maybeMap: false),
  when: FreezedWhenOptions(when: true, whenOrNull: false, maybeWhen: true)
)
class LoadingState with _$LoadingState{
  const factory LoadingState.initialLoadingState() = InitialLoadingState;
  const factory LoadingState.loadingStartedState() = LoadingStartedState;
  const factory LoadingState.loadingFailedState(String errorMessage) = LoadingFailedState;
  const factory LoadingState.loadingSuccessState() = LoadingSuccessState;
  const factory LoadingState.loadingCompletedState() = LoadingCompletedState;

}