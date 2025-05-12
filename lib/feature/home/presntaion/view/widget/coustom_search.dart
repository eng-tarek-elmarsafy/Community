import 'package:community/core/utils/app_style.dart';
import 'package:community/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CoustomSearch extends StatelessWidget {
  const CoustomSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return SearchBar(
      elevation: WidgetStateProperty.all<double>(0),
      leading: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: SvgPicture.asset(Assets.imagesSearchIcon),
      ),
      hintText: 'Search course',
      hintStyle: WidgetStateProperty.all(
        AppStyle.semiBold16.copyWith(fontWeight: FontWeight.w300),
      ),
      backgroundColor: const WidgetStatePropertyAll(Color(0xffEEF1F4)),
    );
  }
}
