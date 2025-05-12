import 'package:community/core/utils/assets.dart';
import 'package:community/core/utils/colors.dart';
import 'package:community/feature/home/presntaion/models/top_categories_card_model.dart';
import 'package:community/feature/home/presntaion/view/widget/top_categories_card.dart';
import 'package:flutter/material.dart';

class TopCategoriesCardGrid extends StatelessWidget {
  const TopCategoriesCardGrid({super.key});

  static List<TopCategoriesCardModel> list = [
    TopCategoriesCardModel(
      imagesBeckground: Assets.imagesVector1,
      image: Assets.imagesFrontend,
      title: 'Front-End',
      color: const Color(0xffFFAB01),
    ),
    TopCategoriesCardModel(
      imagesBeckground: Assets.imagesVactor2,
      image: Assets.imagesBackend,
      title: 'Back-End',
      color: AppColor.r1,
    ),
    TopCategoriesCardModel(
      imagesBeckground: Assets.imagesVactor3,
      image: Assets.imagesDataAnalysis,
      title: 'Data Analysis',
      color: AppColor.dr,
    ),
    TopCategoriesCardModel(
      imagesBeckground: Assets.imagesVactor4,
      image: Assets.imagesAi,
      title: 'Ai',
      color: const Color(0xffC8FF82),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(0),
      itemCount: list.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 5,
        crossAxisSpacing: 5,
        childAspectRatio: 178 / 190,
      ),
      itemBuilder: (context, index) => TopCategoriesCard(data: list[index]),
    );
  }
}
