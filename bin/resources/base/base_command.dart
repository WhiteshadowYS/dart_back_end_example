abstract interface class BaseCommand<T> {
  Future<T> execute();
}
