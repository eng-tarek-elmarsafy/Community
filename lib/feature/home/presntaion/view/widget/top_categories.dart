import 'package:community/core/utils/app_style.dart';
import 'package:community/core/widget/height.dart';
import 'package:community/feature/home/presntaion/view/widget/top_categories_card_grid.dart';
import 'package:flutter/material.dart';

class TopCategories extends StatelessWidget {
  const TopCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Top Categories', style: AppStyle.semiBold16),
        const Height(17),
        const TopCategoriesCardGrid(),
      ],
    );
  }
}

