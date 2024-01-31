
import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class DioService {
  final Dio dio = Dio();

  Future<List<ArticleModel>> getNews({required String category}) async {
    var response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=3a384bb9971640fca58387cd94f05f0f&country=us&category=$category');
    Map<String, dynamic> responseBody = response.data;
    List<dynamic> articles = responseBody["articles"];
    List<ArticleModel> articlesList =
        articles.map((e) => ArticleModel.fromJson(e)).toList();

    return articlesList;
  }
}
