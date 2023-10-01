import 'package:bloc/bloc.dart';

import 'loading_state.dart';

class LoadingCubit extends Cubit<LoadingState> {
  LoadingCubit() : super(const InitialLoadingState());

  void loadingFailed(String errorMessage) =>
      emit(LoadingState.loadingFailedState(errorMessage));

  void loadingSucceed() =>
      emit(const LoadingState.loadingSuccessState());

  void resetLoading() =>
      emit(const LoadingState.loadingCompletedState());

  void startLoading() =>
      emit(const LoadingState.loadingStartedState());
}
