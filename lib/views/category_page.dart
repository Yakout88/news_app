import 'package:flutter/material.dart';
import 'package:news_app/widgets/news_list_view.dart';


class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key, required this.countryName});
  final String countryName;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(appBar: AppBar(),
      body: ListView(
        children: [
          NewsListView(
            categoeryCountry: countryName,
          ),
        ],
      ),
    ));
  }
}
