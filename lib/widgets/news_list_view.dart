import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/dio_service.dart';
import 'package:news_app/widgets/news_tile.dart';


class NewsListView extends StatefulWidget {
  const NewsListView({
    super.key,
    required this.categoeryCountry,
  });
  final String categoeryCountry;
  @override
  State<NewsListView> createState() => _NewsListViewState();
}

class _NewsListViewState extends State<NewsListView> {
  // ignore: prefer_typing_uninitialized_variables
  var future;
  @override
  void initState() {
    future = DioService().getNews(category: widget.categoeryCountry);
    setState(() {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: future,
      builder: (context, AsyncSnapshot<List<ArticleModel>> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }
        if (snapshot.hasData) {
          return Column(
            children:
                snapshot.data!.map((e) => NewTile(articleModel: e)).toList(),
          );
        } else if (snapshot.hasError) {
          return const Text("there is a error");
        }
        return const Text("data");
      },
    );
  }
}
