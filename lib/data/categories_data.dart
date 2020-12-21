import 'package:flutter/material.dart';

class CategoriesData extends ChangeNotifier {
  List<String> _categories = [
    'Burger',
    'Pizza',
    'Sandwich',
    'Drinks',
  ];

  get categories => _categories;
}
