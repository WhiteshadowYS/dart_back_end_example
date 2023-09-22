abstract interface class BaseQuary<T> {
  Future<T> execute();
}
