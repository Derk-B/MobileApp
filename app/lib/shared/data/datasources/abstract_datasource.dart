abstract class Datasource<T> {
  const Datasource();

  /// Should return a reference-like object to the database instead of all objects
  /// In this way you can perform queries inside of the repository using the reference that is returned from this method.
  T fetchRef();
}
