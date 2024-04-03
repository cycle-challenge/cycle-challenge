
abstract class Filter<T> {

  bool get hasAnyFilter;

  List<T> apply(List<T> items);

  void init();

}