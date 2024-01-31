import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/category_list_view.dart';
import 'package:news_app/widgets/news_list_view.dart';


// ignore: must_be_immutable
class HomeView extends StatelessWidget {
  HomeView({super.key});

  List<CategoryModel> categoryListItem = [
    CategoryModel(image: "assets/images/popular_1.png", title: "general "),
    CategoryModel(image: "assets/images/popular_2.png", title: "general"),
    CategoryModel(image: "assets/images/recommended_1.png", title: "general"),
    CategoryModel(image: "assets/images/recommended_2.jpeg", title: "general"),
    // CategoryModel(image: "assets/images/business.avif", title: "business"),
    // CategoryModel(image: "assets/images/general.avif", title: "general"),
    CategoryModel(image: "assets/images/health.png", title: "health"),
    // CategoryModel(image: "assets/images/sports.avif", title: "sports"),
    CategoryModel(image: "assets/images/technology.jpeg", title: "technology"),
    CategoryModel(image: "assets/images/science.png", title: "science"),
    CategoryModel(
        image: "assets/images/entertaiment.png", title: "entertaiment")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "News",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            Text(
              "Cloud",
              style:
                  TextStyle(color: Colors.yellow, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
              child: CategoryListView(categoryListItem: categoryListItem)),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 32,
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) =>
                  const NewsListView(categoeryCountry: 'general'),
            ),
          )
        ],
      ),
    );
  }
}
