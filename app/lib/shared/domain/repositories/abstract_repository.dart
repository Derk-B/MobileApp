abstract class Repository<T> {
  const Repository();

  /// Fetch a list of [T]
  Future<List<T>?> fetchList();

  /// Fetch a single object of type [T] using a given identifier.
  Future<T?> fetchById(String id);
}
