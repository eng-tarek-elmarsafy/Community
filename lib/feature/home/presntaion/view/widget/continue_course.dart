import 'package:community/core/utils/app_style.dart';
import 'package:community/core/widget/height.dart';
import 'package:community/feature/home/presntaion/view/widget/course_background.dart';
import 'package:flutter/material.dart';

class ContinueCourse extends StatelessWidget {
  const ContinueCourse({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Continue course', style: AppStyle.semiBold16),
        const Height(17),
        const CourseBackground(),
      ],
    );
  }
}
