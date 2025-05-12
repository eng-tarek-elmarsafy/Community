import 'package:community/core/utils/app_style.dart';
import 'package:community/core/widget/height.dart';
import 'package:community/feature/home/presntaion/models/top_categories_card_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TopCategoriesCard extends StatelessWidget {
  const TopCategoriesCard({super.key, required this.data});

  final TopCategoriesCardModel data;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            color: data.color,
            boxShadow: const [BoxShadow(color: Colors.grey)],
            borderRadius: const BorderRadius.all(Radius.circular(16)),
          ),
        ),
        Center(child: SvgPicture.asset(data.imagesBeckground)),

        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SvgPicture.asset(data.image),
              const Height(19.7),
              Text(
                data.title,
                style: AppStyle.semiBold16.copyWith(
                  color: const Color(0xffffffff),
                ),
              ),
              const Height(16),
            ],
          ),
        ),
      ],
    );
  }
}

