import 'package:community/core/utils/app_style.dart';
import 'package:community/core/utils/assets.dart';
import 'package:community/core/utils/colors.dart';
import 'package:community/core/widget/height.dart';
import 'package:community/feature/home/presntaion/view/widget/custom_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ContinueCourse extends StatelessWidget {
  const ContinueCourse({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Continue course', style: AppStyle.semiBold16),
        const Height(17),
        // const CourseBackground(),
        AspectRatio(
          aspectRatio: 351 / 156,
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: AppColor.bul,
                  borderRadius: const BorderRadius.all(Radius.circular(16)),
                  border: Border.all(color: Colors.black),
                ),
              ),
              SvgPicture.asset(Assets.imagesBlob),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Introdcation to Flutter',
                      style: AppStyle.semiBold16.copyWith(fontSize: 15),
                    ),
                    const Height(12),
                    Row(
                      children: [
                        Text(
                          'lecture 5 | ',
                          style: AppStyle.semiBold16.copyWith(
                            fontSize: 8,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'How to create a class',
                          style: AppStyle.semiBold16.copyWith(
                            fontSize: 8,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    const Height(20),
                    const CustomSlider(),
                    const Height(23),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
