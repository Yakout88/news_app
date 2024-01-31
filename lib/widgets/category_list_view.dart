import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/category_item.dart';


class CategoryListView extends StatelessWidget {
  const CategoryListView({
    super.key,
    required this.categoryListItem,
  });

  final List<CategoryModel> categoryListItem;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
        itemCount: categoryListItem.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CategoryItem(
            categoryModel: categoryListItem[index],
          );
        },
      ),
    );
  }
}