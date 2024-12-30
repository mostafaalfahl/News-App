import 'package:flutter/material.dart';
import '../models/category_model.dart';
import 'category_card.dart';

class CategoriesListView extends StatelessWidget {
  CategoriesListView({super.key});

  final List<CategoryModel> categories = [
    const CategoryModel(
      categoryname: 'Business',
      imageUrl: 'assets/business.avif',
    ),
    const CategoryModel(
      categoryname: 'Entertainment',
      imageUrl: 'assets/entertaiment.avif',
    ),
    const CategoryModel(
      categoryname: 'General',
      imageUrl: 'assets/general.avif',
    ),
    const CategoryModel(
      categoryname: 'Health',
      imageUrl: 'assets/health.avif',
    ),
    const CategoryModel(
      categoryname: 'Science',
      imageUrl: 'assets/science.avif',
    ),
    const CategoryModel(
      categoryname: 'Sports',
      imageUrl: 'assets/sports.avif',
    ),
    const CategoryModel(
      categoryname: 'Technology',
      imageUrl: 'assets/technology.jpeg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return CategoryCard(
            category: categories[index],
          );
        },
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
