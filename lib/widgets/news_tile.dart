import 'package:flutter/material.dart';

import 'package:news_app/models/article_model.dart';

class NewTile extends StatelessWidget {
  const NewTile({
    super.key, required this.articleModel,
  });
  final String imageUrl =
      "https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg";
  final ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ClipRect(
            child: Image.network(
               articleModel.image?? imageUrl,
              height: 200,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            articleModel.title,
            style: const TextStyle(color: Colors.black),
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            articleModel.subtitle ?? "not found",
            style: const TextStyle(color: Colors.grey),
          )
        ],
      ),
    );
  }
}
