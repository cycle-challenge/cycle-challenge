class PageModel<T> {
  List<T> entities;

  int page;

  int pageSize;

  bool hasNextPage;

  PageModel(this.entities, this.page, this.pageSize, this.hasNextPage);

  factory PageModel.of(
      T Function(Map<String, dynamic>) convertFn, Map<String, dynamic> json) {
    return PageModel(
        List.of(json['entities']).map((e) => convertFn(e)).toList(),
        json['pageInfo']?['page'],
        json['pageInfo']?['pageSize'],
        json['pageInfo']?['hasNextPage']);
  }
}
