import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/views/category_page.dart';



class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    required this.categoryModel,
  });
  final CategoryModel categoryModel;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return CategoryPage(countryName: categoryModel.title);
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 8),
        child: Container(
          height: 85,
          width: 140,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(categoryModel.image), fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Center(
              child: Text(
            categoryModel.title,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
          )),
        ),
      ),
    );
  }
}
