import 'package:flutter/material.dart';

class TopCategoriesCardModel {
  TopCategoriesCardModel({
    required this.imagesBeckground,
    required this.image,
    required this.title,
    required this.color,
  });
  final String imagesBeckground;
  final String image;
  final String title;
  final Color color;
}