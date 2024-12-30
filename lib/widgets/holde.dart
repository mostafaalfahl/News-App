  // import 'package:flutter/material.dart';
// import 'package:news_app_ui_setup/models/article_model.dart';
// import 'package:news_app_ui_setup/services/news_service.dart';

// import 'news_tile.dart';

// class NewsListView extends StatefulWidget {
//   const NewsListView({super.key});

//   @override
//   State<NewsListView> createState() => _NewsListViewState();
// }

// class _NewsListViewState extends State<NewsListView> {
//   List<ArticleModel> articlesList = [];

//   bool isLoading = true;

//   @override
//   void initState() {
//     super.initState();
//     getGeneralnews();
//   }

//   Future<void> getGeneralnews() async {
//     articlesList = await NewsService().getnews();
//     isLoading = false;
//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     return isLoading
//         ? const SliverFillRemaining(
//             hasScrollBody: false,
//             child: Center(
//               child: 
//               CircularProgressIndicator(),
//             ),
//           )
//         : SliverList(
//             delegate: SliverChildBuilderDelegate(
//               childCount: articlesList.length,
//               (context, index) {
//                 return NewsTile(
//                   articleModel: articlesList[index],
//                 );
//               },
//             ),
//           );
//   }
// }
