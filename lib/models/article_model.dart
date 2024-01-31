class ArticleModel {
  final String? image;
  final String title;
  final String? subtitle;

  ArticleModel(
      {required this.image, required this.title, required this.subtitle});
  factory ArticleModel.fromJson(Map map) {
    return ArticleModel(image: map["urlToImage"], title: map["title"], subtitle: map["description"]);
  }
}
