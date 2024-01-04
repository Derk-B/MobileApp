abstract class UseCase<T> {
  Future<List<T>> call();
}
