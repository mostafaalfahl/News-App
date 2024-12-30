import 'package:flutter/material.dart';
import '../models/article_model.dart';
import 'news_tile.dart';

class NewsListView extends StatelessWidget {
  const  NewsListView({super.key, required this.articlesList});

  final List<ArticleModel> articlesList;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articlesList.length,
        (context, index) {
          return NewsTile(
            articleModel: articlesList[index],
          );
        },
      ),
    );
  }
}
