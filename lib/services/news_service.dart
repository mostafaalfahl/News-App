import 'package:dio/dio.dart';
import '../models/article_model.dart';

class NewsService {
  final Dio dio;
  final String category;

  NewsService(this.dio, this.category);
  Future<List<ArticleModel>> getTopHeadLines({required String category}) async {
    try {
      Response response = await dio.get(
        'https://newsapi.org/v2/top-headlines?apiKey=6f4257c080164ee5bb483efd9f397ce6&country=us&category=$category',
      );

      Map<String, dynamic> jsonData = response.data;

      List<dynamic> articles = jsonData['articles'];

      List<ArticleModel> articleslist = [];

      for (var article in articles) {

        ArticleModel articleModel = ArticleModel.fromJson(article);
        articleslist.add(articleModel);
      }
      return articleslist;
    } catch (e) {
      return [];
    }
  }
}
