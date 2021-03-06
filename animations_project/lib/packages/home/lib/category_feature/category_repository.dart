import 'package:flutter/material.dart';
import 'package:domain_models/models/category.dart';

class FakeCategoryRepository {

  Future<List<Category>> fetchCategories() {
    return Future.delayed(Duration(seconds: 1)).then((value) => categories);
  }
}

List<Category> categories = [
  Category(
    name: "Pizza",
    icon: Icons.local_pizza,
  ),
  Category(
    name: "Cake",
    icon: Icons.cake,
  ),
  Category(
    name: "Fish",
    icon: Icons.set_meal,
  ),
  Category(
    name: "Burger",
    icon: Icons.fastfood,
  ),
  Category(
    name: "Grills",
    icon: Icons.local_fire_department,
  ),
  Category(
    name: "Vegetarian",
    icon: Icons.eco,
  ),
  Category(
    name: "Emo ",
    icon: Icons.local_pizza,
  ),
];
