abstract class BaseUseCase<TOutput, TInput> {
  const BaseUseCase();
  Future<TOutput> call(TInput input);
}